import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sendbird_chat_sdk/sendbird_chat_sdk.dart';

import '../../data/chat/ichat_service.dart';
import '../../data/shared_preferences/shared_preferences_service.dart';

import '../../di/injector.dart';
import '../../enums/chat_message_data_type.dart';
import '../../models/chat/chat_data.dart';
import '../../models/profile/profile_model.dart';
import '../../services/local_notifications_service.dart';


part 'chat_cubit_state.dart';
part 'chat_cubit.freezed.dart';

List<BaseMessage> messages = [];

class ChatCubit extends Cubit<ChatState> {
  final IChatService service;
  late User user; 

  
  ChatCubit(this.service) : super(const ChatState.initial());
  

    Future<void> connectSendBirdApp() async {
    try {
      await getUserSendBirdToken();
      String userId = getIt<PreferenceRepositoryService>().getUserSendBirdId();
      String userToken =
          getIt<PreferenceRepositoryService>().getUserSendBirdToken();

       runZonedGuarded(() async {
            user = await SendbirdChat.connect(
            userId,
            accessToken: userToken,
          );
       }, 
       (error, stack) {
        print(error.toString());
        });

      setupOnMessageReceivedHandler();

      await this.initSendBirdPushNotifications();    
    } catch (e) {
      throw Exception('Error loading my user');
    }
}

  Future<void> getUserSendBirdToken() async {
    String sendBirdToken = await this.service.getUserSendBirdToken();
    await getIt<PreferenceRepositoryService>()
        .saveUserSendBirdToken(sendBirdToken);
  }

 Future<List<BaseMessage>> loadMessages(GroupChannel channel) async {

   final params = MessageListParams()
   ..previousResultSize = 50
   .. nextResultSize = 30
    ..reverse = true;

   // emit(const ChatsLoading());
    try {
      messages = await channel.getMessagesByTimestamp(
        DateTime.now().millisecondsSinceEpoch, params
      );
      emit(ChatsLoaded(messages));
      return messages;
    } catch (e) {
      emit(ChatsError(e.toString()));
      throw e;
    }
  }
  

   Future<List<GroupChannel>> loadGroupChannels() async {
    emit(const ChatsLoading());
    try {
      final query = GroupChannelListQuery();
      query.includeEmpty;
      query.limit = 100;
      List<GroupChannel> channels = await query.next();
      emit(ChatChannelsLoaded(channels));
      return channels;
    } catch (e) {
      emit(ChatsError(e.toString()));
      throw e;
    }
  }

  Future<bool> hasUnreadMessages() async {
    int unreadMessageCount = 0;
    List<GroupChannel> channels = await loadGroupChannels();
    for (GroupChannel channel in channels) {
      unreadMessageCount += channel.unreadMessageCount;      
    }
    if(unreadMessageCount>0){
    emit(HasUnreadMessages(true, unreadMessageCount));
    return true;
    }
    emit(HasUnreadMessages(false, unreadMessageCount));
    return false;
  }

    Future<UserMessage> sendMessage(GroupChannel channel, String messageText) async {
    UserMessage sentMessage;
    try {
      int tempMessageId = DateTime.now().millisecondsSinceEpoch.toInt();

      // Send a message
      UserMessage newMessage = UserMessage(channelType: ChannelType.group, channelUrl: channel.channelUrl, message: messageText, messageId: tempMessageId, translations: {});
      List<BaseMessage> currentMessages = messages;
      currentMessages.add(newMessage);

      UserMessageCreateParams params = UserMessageCreateParams(message: messageText,pushNotificationDeliveryOption: PushNotificationDeliveryOption.normal);

      sentMessage = channel.sendUserMessage(params,
      handler: (message, e) { 
      if(e != null ){

      }
      else{
        final index = currentMessages.indexWhere((msg) => msg.messageId == tempMessageId);
        if (index != -1) {
          currentMessages[index] = message;
          sentMessage = message;  
                  
          emit(ChatState.loadedChats(currentMessages));          
        }
      }
      },);

      // Load messages after sending the new one
      await loadMessages(channel);
      return sentMessage;
    } catch (e) {
      emit(ChatState.error(e.toString()));
      throw e;
    }
  }

  sendGalleryFileMessage(GroupChannel channel)async{
   final picker = ImagePicker();
   XFile?  pickedFile = await picker.pickImage(source: ImageSource.gallery, imageQuality: 50);

   if (pickedFile != null) { 
   final params = FileMessageCreateParams.withFile(
   File(pickedFile.path), 
   fileName: pickedFile.name, 
   customType: pickedFile.mimeType,
   pushNotificationDeliveryOption: PushNotificationDeliveryOption.normal);
   // or other MIME type based on your file

  try {
    await channel.sendFileMessage(params);
    print('File message sent successfully');
  } catch (e) {
    print('Failed to send file message: $e');
  }
} else {
  print('No image selected');
}
   

 

  }


   Future<GroupChannel> startChat(String productId) async {
    try {

      String channelUrl = await getChannelUrl(productId);      
      GroupChannel channel = await GroupChannel.getChannel(channelUrl);
 
      List<BaseMessage> messages = await loadMessages(channel);
      return channel;
    } catch (e) {
      throw Exception('Error loading channel');
    }
  }


  //  bool isChatWithUrlLoaded(String channelUrl) {
  //   return state.maybeMap(
  //     loadedChatChannels: (state) =>
  //         state.channels.any((channel) => channel.channelUrl == channelUrl),
  //     orElse: () => false,
  //   );
  // }

  Future<String> getChannelUrl(String productId)async {
   String channelUrl=""; 
   try{
      bool isChannelUrl = productId.contains('sendbird');
      channelUrl =
          (isChannelUrl) ? productId : await this.service.loadChannel(productId);
   }
   catch(e){
    throw e;

   }
    return channelUrl;
  }



void setupOnMessageReceivedHandler() {
    SendbirdChat.addChannelHandler('Swag_Chat_Handler_ID', MyGroupChannelHandler());
  }


  Future<void> initSendBirdPushNotifications() async {
    String firebaseToken =
        getIt<PreferenceRepositoryService>().getFirebaseDeviceToken();

    await SendbirdChat.registerPushToken(
          type: (Platform.isIOS) ? PushTokenType.apns : PushTokenType.fcm,
          token: firebaseToken,
        );
  }  


  bringAdminToChat(String channelUrl) async =>
      await this.service.bringAdminToChat(channelUrl);

}

getMessageJson({BaseChannel? channel, BaseMessage? message}){
     if(message !=null){
      String jsonString = message?.data ?? '';
      jsonString = jsonString.replaceAll("'", '"');
      String jsonStringWithQuotes = "'$jsonString'";
      jsonStringWithQuotes = jsonString.replaceAll("None", '""');
      Map<String, dynamic> json = jsonDecode(jsonStringWithQuotes);
      return json;
     }else{
       String jsonString = channel?.data ?? '';
      jsonString = jsonString.replaceAll("'", '"');
      String jsonStringWithQuotes = "'$jsonString'";
      jsonStringWithQuotes = jsonString.replaceAll("None", '""');
      Map<String, dynamic> json = jsonDecode(jsonStringWithQuotes);
      return json;
     }

     
}

showPushNotificationsAndroid(BaseMessage message, GroupChannel channel, bool showNotification) async{
  
  if (Platform.isIOS && showNotification ) {
      ProfileModel userProfile =
          getIt<PreferenceRepositoryService>().profileData();
      String userName = userProfile.username;

     var json = getMessageJson(message: message);

      if (userName == json['payload']['userNameSeller'] &&
          json['type'] ==
              ChatMessageDataType.confirmPaymentReceived.textValue) {
        await LocalNotificationsService.showNotification(
          title: 'Payment made ${json['payload']['listingName']}',
          body: 'New message from @Swag',
          payload: null,
        );
      }

      if (userName == json['payload']['userNameBuyer'] &&
          json['type'] == ChatMessageDataType.paymentReceived.textValue) {
        await LocalNotificationsService.showNotification(
          title: 'Payment received ${json['payload']['listingName']}',
          body: 'New message from @Swag',
          payload: null,
        );
      }

      if (userName == json['payload']['userNameBuyer'] &&
          json['type'] == ChatMessageDataType.saleCanceled.textValue) {
        await LocalNotificationsService.showNotification(
          title: 'Sale cancelled ${json['payload']['listingName']}',
          body: '${json['payload']['userNameSeller']} has cancelled the sale',
          payload: null,
        );
      }

      if (userName == json['payload']['userNameBuyer'] &&
          json['type'] == ChatMessageDataType.confirmPaidSend.textValue) {
        await LocalNotificationsService.showNotification(
          title: 'Payment details ${json['payload']['listingName']}',
          body: 'New message from @Swag',
          payload: null,
        );
      }
    }
}

ShowInAppAlert(BaseMessage message, GroupChannel channel, bool showNotification)async{

  var json = getMessageJson(channel: channel);
      String senderName= message.sender?.nickname ?? "";
    await LocalNotificationsService.showNotification(
          title: '${json['listingProductName']}',
          body: 'New message from @$senderName',
          payload: json['listingImageUrl'],
        );

}

class MyGroupChannelHandler extends GroupChannelHandler {
  @override
  void onMessageReceived(BaseChannel channel, BaseMessage message) async{
     bool showNotification = getIt<PreferenceRepositoryService>().showNotification();
    GroupChannel groupChannel =GroupChannel(channelUrl: channel.channelUrl);
   print(message);
   messages.add(message);
  //getIt<ChatCubit>().loadGroupChannels();
    if (channel is GroupChannel) {
    // Now you can access the GroupChannel methods
     groupChannel = channel;
    if(message.data !=""){
      showPushNotificationsAndroid(message, groupChannel, showNotification);
    }else{
       ShowInAppAlert(message, channel, showNotification);
    }    
   

    // Then load the messages for this channel and update the state
   await getIt<ChatCubit>().loadMessages(groupChannel);
   //pasar hasUnreadMessages a un cubit aparte porque interfiere con el estado.
   await getIt<ChatCubit>().hasUnreadMessages();
  }
   
  }
}
