import 'dart:io';
import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sendbird_sdk/sendbird_sdk.dart';
import 'package:swagapp/modules/di/injector.dart';
import 'package:swagapp/modules/constants/constants.dart';
import 'package:swagapp/modules/models/chat/chat_data.dart';
import 'package:cached_video_player/cached_video_player.dart';
import 'package:swagapp/modules/data/chat/ichat_service.dart';
import 'package:swagapp/modules/services/local_notifications_service.dart';
import 'package:swagapp/modules/data/shared_preferences/shared_preferences_service.dart';

part 'chat_event.dart';
part 'chat_state.dart';

class ChatBloc extends Bloc<ChatEvent, ChatState> {

  late SendbirdSdk _sendbirdSdk;
  final IChatService service;

  ChatBloc(this.service) : super(ChatState()) {

    this._sendbirdSdk = SendbirdSdk(appId: sendBirdAppId);

    on<ChatSetMyUser>((event, emit)=> emit(this.state.copyWith(myUser: event.user)));
    on<ChatAddChatsEvent>((event, emit)=> emit(this.state.copyWith(chats: event.chats)));
    on<ChatAddChatEvent>((event, emit)=> emit(this.state.copyWith(chats: event.getChats())));
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

      print('object');

      User user = await this._sendbirdSdk.connect(
        userId,
        accessToken: userToken,
      );

      await this.initSendBirdPushNotifications();
      this.add(ChatSetMyUser(user));
    } 
    catch (e) { 
      throw Exception('Error loading my user'); 
    }
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

  Future<ChatData> startNewChat(String listingId) async {
    
    try {

      String channelUrl = await this.service.loadChannel(listingId);
      GroupChannel newChannel = await GroupChannel.getChannel(channelUrl);

      bool chatExists = this.state.chats.any((ChatData chatData) {
        return chatData.channel.channelUrl == newChannel.channelUrl;
      });

      if(chatExists) {

        return this.state.chats.firstWhere((ChatData chatData) {
          return chatData.channel.channelUrl == newChannel.channelUrl;
        });
      }
      else {

        ChatData newChat = ChatData(
          messages: [], 
          channel: newChannel,
        );

        this.add(ChatAddChatEvent(
          currentChats: this.state.chats,
          newChat: newChat,
        ));

        return newChat;
      }      
    } 
    catch (e) { throw Exception('Error loading channel'); }
  }

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

  Future<void> receiveMessage({
    required ChatData chatData, 
    required BaseMessage message,
  }) async {
    
    this.add(ChatUpdateMessageEvent(
      chatData: chatData, 
      message: message, 
      chats: this.state.chats,
    ));

    Member member = chatData.channel.members.firstWhere((Member member) {
      return member.userId != this.state.myUser!.userId;
    });

    String alertMessage = '@${member.nickname} ${message.message}';
    LocalNotificationsService.showInAppAllert(alertMessage);
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

  Future<void> bringAdminToChat(String chatUrl) async => await this.service.bringAdminToChat(chatUrl);

  Future<void> getUserSendBirdToken() async {
      
    String sendBirdToken = await this.service.getUserSendBirdToken();
    await getIt<PreferenceRepositoryService>().saveUserSendBirdToken(sendBirdToken);
  }
}
