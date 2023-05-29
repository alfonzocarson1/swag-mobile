import 'dart:io';
import 'package:bloc/bloc.dart';
import 'package:cached_video_player/cached_video_player.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sendbird_sdk/sendbird_sdk.dart';
import 'package:swagapp/modules/di/injector.dart';
import 'package:swagapp/modules/constants/constants.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:swagapp/modules/data/shared_preferences/shared_preferences_service.dart';
import 'package:swagapp/modules/enums/chat_message_type.dart';
import 'package:swagapp/modules/models/chat/chat_data.dart';

part 'chat_event.dart';
part 'chat_state.dart';

class ChatBloc extends Bloc<ChatEvent, ChatState> {

  late SendbirdSdk _sendbirdSdk;

  ChatBloc() : super(ChatState()) {

    this._sendbirdSdk = SendbirdSdk(appId: sendBirdAppId);

    on<ChatSetMyUser>((event, emit)=> emit(this.state.copyWith(myUser: event.user)));
    on<ChatAddChatsEvent>((event, emit)=> emit(this.state.copyWith(chats: event.chats)));
    on<ChatUpdateMessageEvent>((event, emit)=> emit(this.state.copyWith(chats: event.getUpdatedChats())));
    on<ChatLoadinFileEvent>((event, emit)=> emit(this.state.copyWith(isLoadingFile: event.isLoadingFile)));

    on<ChatAddMessageVideoController>((event, emit) {
      emit(this.state.copyWith(videoChatControllers: event.updatedControllers()));
    });
  }

  SendbirdSdk get sendBirdSdk => this._sendbirdSdk;

  Future<void> initSendBirdApp() async {

    try {

      String userId = getIt<PreferenceRepositoryService>().getUserSendBirdId();
      String userToken = getIt<PreferenceRepositoryService>().getUserSendBirdToken();

      User user = await this._sendbirdSdk.connect(
        userId,
        accessToken: userToken,
      );

      await this.initSendBirdPushNotifications();

      this.add(ChatSetMyUser(user));
    } 
    catch (e) { throw Exception('Error loading my user'); }
  }

  Future<void> initSendBirdPushNotifications() async {

    String firebaseToken = getIt<PreferenceRepositoryService>().getFirebaseDeviceToken();

    await this._sendbirdSdk.registerPushToken(
      type: (Platform.isIOS) ? PushTokenType.apns : PushTokenType.fcm, 
      token: firebaseToken,
    );
  }

  Future<void> getChannels() async {

    GroupChannelListQuery query = GroupChannelListQuery()..limit = 100;
    List<GroupChannel> channels = await query.loadNext();
    await this._loadPreviousMessages(channels);
  }

  Future<void> _loadPreviousMessages(List<GroupChannel> channels) async {

    List<ChatData> chatsData = [];

    for (int i = 0; i < channels.length; i++) {      

      PreviousMessageListQuery query = PreviousMessageListQuery(
        channelType: channels[i].channelType,
        channelUrl: channels[i].channelUrl,
      );

      query.limit = 100;
      query.messageTypeFilter = MessageTypeFilter.all;

      List<BaseMessage> messages = await query.loadNext();

      chatsData.add(ChatData(
        messages: messages, 
        channel: channels[i],
      ));
    }

    this.add(ChatAddChatsEvent(chatsData));
  }

  Future<ChatData?> startNewChat(String listingId) async {
    
    //TODO: Get user id based on the listing id
    String otherUserId = await this._getOtherUserId();

    bool chatExists = this.state.chats.any((ChatData chatData) {
      return this.verifyUserIsOnChatData(
        chatData: chatData, 
        otherUserId: otherUserId,
      );
    });

    if(chatExists) {
      return this.state.chats.firstWhere((ChatData chatData)=> this.verifyUserIsOnChatData(
        chatData: chatData, 
        otherUserId: otherUserId,
      ));
    }
    else {

      //TODO: Create ChatData with the new user. Request data to backend
      return null;
    }
  }
  
  Future<String> _getOtherUserId() async => 'sendbird_desk_agent_id_fbabbaff-4837-4758-93a1-e50c5b957033';

  bool verifyUserIsOnChatData({
    required ChatData chatData, 
    required String otherUserId,
  })=> chatData.channel.members.any((Member member)=> member.userId == otherUserId);

  Future<void> sendMessage({
    required String message, 
    required ChatData chatData,
  }) async {

    UserMessageParams params = UserMessageParams(message: message);

    try {
      
      chatData.channel.sendUserMessage(
        params, 
        onCompleted: (UserMessage message, Error? error) async {

          if(error == null) {

            this.add(ChatUpdateMessageEvent(
              chatData: chatData, 
              message: message, 
              chats: this.state.chats,
            ));
          }
          else throw Exception();
        },
      );
    } 
    catch (e) { throw Exception('There was an error sending a message'); }
  }

  Future<void> sendFileMessage({
    required ChatData chatData,
  }) async {

    ImagePicker picker = ImagePicker();
    XFile? image = await picker.pickVideo(source: ImageSource.gallery);

    if(image != null) {

      FileMessageParams params = FileMessageParams.withFile(File(image.path));
      params.pushOption = PushNotificationDeliveryOption.normal;

      try {
        
        this.add(ChatLoadinFileEvent(true));

        chatData.channel.sendFileMessage(
          params, 
          onCompleted: (FileMessage message, Error? error) async {

            if(error == null) {

              if(message.type!.contains(ChatMessageType.video.textValue)) {
                await this._createNewMessageVideoController(message.secureUrl!);
              }

              this.add(ChatUpdateMessageEvent(
                chatData: chatData, 
                message: message, 
                chats: this.state.chats,
              ));

              this.add(ChatLoadinFileEvent(false));
            }
            else throw Exception();
          },
        );

      } 
      catch (e) { 

        this.add(ChatLoadinFileEvent(false));
        throw Exception('There was an error sending a message'); 
      }
    }
  }

  Future<void> receiveMessage(ChatData chatData, BaseMessage message) async {

    this.add(ChatUpdateMessageEvent(
      chatData: chatData, 
      message: message, 
      chats: this.state.chats,
    ));
  }

  Future<void> updateChatReadStatus(ChatData updateChatData) async {

    for (ChatData chatData in this.state.chats) { 

      if(chatData.channel.channelUrl == updateChatData.channel.channelUrl) {
        await chatData.channel.markAsRead();
        this.add(ChatAddChatsEvent(this.state.chats));
        break;        
      }
    }
  }

  UserMessage _getLocalMessage(String message, ChatData chatData) {

    return UserMessage(
      translations: {}, 
      messageId: 0, 
      message: message, 
      channelUrl: chatData.channel.channelUrl, 
      channelType: chatData.channel.channelType,
      sender: Sender(
        userId: this.state.myUser!.userId, 
        nickname: this.state.myUser!.nickname,
      ),
    );
  }

  void addMessageVideoController(CachedVideoPlayerController newController) {

    bool isNotController = this.state.videoChatControllers.any((controller) {

      String url1 = controller.dataSource.substring(0, 50);
      String url2 = newController.dataSource.substring(0, 50);

      return url1 == url2;
    });

    if(!isNotController) {

      this.add(ChatAddMessageVideoController(
        newController: newController, 
        controllers: this.state.videoChatControllers,
      ));
    }
  }

  Future<void> _createNewMessageVideoController(String url) async {

    CachedVideoPlayerController controller;
    controller = CachedVideoPlayerController.network(url);
    controller.setVolume(0);
    this.state;
    print('object');

    controller.initialize().then((value) async {      
        
      await controller.play();
      await controller.pause();
      this.addMessageVideoController(controller);
    });
  }
}
