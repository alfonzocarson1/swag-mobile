import 'package:bloc/bloc.dart';
import 'package:sendbird_sdk/sendbird_sdk.dart';
import 'package:swagapp/modules/di/injector.dart';
import 'package:swagapp/modules/constants/constants.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:swagapp/modules/data/shared_preferences/shared_preferences_service.dart';
import 'package:swagapp/modules/models/chat/chat_data.dart';

part 'chat_event.dart';
part 'chat_state.dart';

class ChatBloc extends Bloc<ChatEvent, ChatState> {

  late SendbirdSdk _sendbirdSdk;

  ChatBloc() : super(ChatState()) {

    this._sendbirdSdk = SendbirdSdk(appId: sendBirdAppId);

    on<SetMyUser>((event, emit)=> emit(this.state.copyWith(myUser: event.user)));
    on<AddChatsEvent>((event, emit)=> emit(this.state.copyWith(chats: event.chats)));
    on<UpdateMessageEvent>((event, emit)=> emit(this.state.copyWith(chats: event.getUpdatedChats())));
  }

  Future<void> initSendBirdApp() async {

    try {

      String userId = getIt<PreferenceRepositoryService>().getUserSendBirdId();
      String userToken = getIt<PreferenceRepositoryService>().getUserSendBirdToken();

      User user = await this._sendbirdSdk.connect(
        userId,
        accessToken: userToken,
      );

      this.add(SetMyUser(user));
    } 
    catch (e) {  throw Exception('Error loading my user'); }
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

    this.add(AddChatsEvent(chatsData));
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

    UserMessageParams paramas = UserMessageParams(message: message);
    // UserMessage localMessage = this._getLocalMessage(message, chatData);

    try {
      
      chatData.channel.sendUserMessage(
        paramas, 
        onCompleted: (UserMessage message, Error? error) async {

          if(error == null) {

            this.add(UpdateMessageEvent(
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
}
