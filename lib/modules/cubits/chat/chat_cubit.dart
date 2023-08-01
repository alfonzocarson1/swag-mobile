import 'dart:async';
import 'dart:convert';
import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:sendbird_chat_sdk/sendbird_chat_sdk.dart';

import '../../data/chat/ichat_service.dart';
import '../../data/shared_preferences/shared_preferences_service.dart';

import '../../di/injector.dart';
import '../../enums/chat_message_data_type.dart';
import '../../models/chat/chat_data.dart';
import '../../models/profile/profile_model.dart';
import '../../services/firebase_manager.dart';

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
        await FirebaseManager.registerPushToken();
      }, (error, stack) {
        print(error.toString());
      });

      setupOnMessageReceivedHandler();

      //await this.initSendBirdPushNotifications();
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
      ..nextResultSize = 30
      ..reverse = true;

    // emit(const ChatsLoading());
    try {
      messages = await channel.getMessagesByTimestamp(
          DateTime.now().millisecondsSinceEpoch, params);
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
    if (unreadMessageCount > 0) {
      emit(HasUnreadMessages(true, unreadMessageCount));
      return true;
    }
    emit(HasUnreadMessages(false, unreadMessageCount));
    return false;
  }

  Future<UserMessage> sendMessage(
      GroupChannel channel, String messageText) async {
    UserMessage sentMessage;
    try {
      int tempMessageId = DateTime.now().millisecondsSinceEpoch.toInt();

      // Send a message
      UserMessage newMessage = UserMessage(
          channelType: ChannelType.group,
          channelUrl: channel.channelUrl,
          message: messageText,
          messageId: tempMessageId,
          translations: {});
      List<BaseMessage> currentMessages = messages;
      currentMessages.add(newMessage);

      UserMessageCreateParams params = UserMessageCreateParams(
          message: messageText,
          pushNotificationDeliveryOption:
              PushNotificationDeliveryOption.normal);

      sentMessage = channel.sendUserMessage(
        params,
        handler: (message, e) {
          if (e != null) {
          } else {
            final index = currentMessages
                .indexWhere((msg) => msg.messageId == tempMessageId);
            if (index != -1) {
              currentMessages[index] = message;
              sentMessage = message;

              emit(ChatState.loadedChats(currentMessages));
            }
          }
        },
      );

      // Load messages after sending the new one
      await loadMessages(channel);
      return sentMessage;
    } catch (e) {
      emit(ChatState.error(e.toString()));
      throw e;
    }
  }

  sendGalleryFileMessage(GroupChannel channel) async {
    FileMessage fileMessage;
    // int tempMessageId = DateTime.now().millisecondsSinceEpoch.toInt();
     List<BaseMessage> currentMessages = messages;
    // FileMessage tempFileMessage = FileMessage(
    //     url: "",
    //     channelUrl: channel.channelUrl,
    //     channelType: ChannelType.group,
    //     messageId: tempMessageId);
    // currentMessages.add(tempFileMessage);

    final picker = ImagePicker();
    XFile? pickedFile = await picker.pickMedia(imageQuality: 70);

    if (pickedFile != null) {
      List<Size>? chatThumbnailSizes = const [Size(100, 100), Size(40, 40)];
      final params = FileMessageCreateParams.withFile(
        File(pickedFile.path),
          fileName: pickedFile.name,
          customType: pickedFile.mimeType,
          pushNotificationDeliveryOption: PushNotificationDeliveryOption.normal)
        ..thumbnailSizes = chatThumbnailSizes;
      // or other MIME type based on your file

      fileMessage = channel.sendFileMessage(
        params,
        // handler: (message, e) {
        //   if (e != null) {
        //     debugPrint(e.message);
        //   } else {
        //     // final index = currentMessages
        //     //     .indexWhere((msg) => msg.messageId == tempMessageId);
        //     // if (index != -1) {
        //     //   currentMessages[index] = message;
        //     //   fileMessage = message;
        //     //   emit(ChatState.loadedChats(currentMessages));
        //     }
        //   }
        // },
      );

      currentMessages.add(fileMessage);
      emit(ChatState.loadedChats(currentMessages));

      debugPrint('File message sent successfully');
    } else {
      debugPrint('No image selected');
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

  Future<String> getChannelUrl(String productId) async {
    String channelUrl = "";
    try {
      bool isChannelUrl = productId.contains('sendbird');
      channelUrl = (isChannelUrl)
          ? productId
          : await this.service.loadChannel(productId);
    } catch (e) {
      throw e;
    }
    return channelUrl;
  }

  void setupOnMessageReceivedHandler() {
    SendbirdChat.addChannelHandler(
        'Swag_Chat_Handler_ID', MyGroupChannelHandler());
  }

  Future<void> initSendBirdPushNotifications() async {
    String firebaseToken =
        getIt<PreferenceRepositoryService>().getFirebaseDeviceToken();

    PushTokenRegistrationStatus notificationRegisterStatus =
        await SendbirdChat.registerPushToken(
            type: (Platform.isIOS) ? PushTokenType.apns : PushTokenType.fcm,
            token: firebaseToken,
            unique: true);
    // debugPrint(notificationRegisterStatus.toString());

//        PushTokenType? _getPushTokenType() {
//   PushTokenType? pushTokenType;
//   if (Platform.isAndroid) {
//     pushTokenType = PushTokenType.fcm;
//   } else if (Platform.isIOS) {
//     pushTokenType = PushTokenType.apns;
//   }
//   return pushTokenType;
// }

// Future<String?> _getToken() async {
//   String? token;
//   if (Platform.isAndroid) {
//     token = await FirebaseMessaging.instance.getToken();
//   } else if (Platform.isIOS) {
//     token = await FirebaseMessaging.instance.getAPNSToken();
//   }
//   return token;
// }
  }
  

  bringAdminToChat(String channelUrl) async =>
      await this.service.bringAdminToChat(channelUrl);
}

getMessageJson({BaseChannel? channel, BaseMessage? message}) {
  if (message != null) {
    String jsonString = message?.data ?? '';
    jsonString = jsonString.replaceAll("'", '"');
    String jsonStringWithQuotes = "'$jsonString'";
    jsonStringWithQuotes = jsonString.replaceAll("None", '""');
    Map<String, dynamic> json = jsonDecode(jsonStringWithQuotes);
    return json;
  } else {
    String jsonString = channel?.data ?? '';
    jsonString = jsonString.replaceAll("'", '"');
    String jsonStringWithQuotes = "'$jsonString'";
    jsonStringWithQuotes = jsonString.replaceAll("None", '""');
    Map<String, dynamic> json = jsonDecode(jsonStringWithQuotes);
    return json;
  }
}

class MyGroupChannelHandler extends GroupChannelHandler {
  @override
  void onMessageReceived(BaseChannel channel, BaseMessage message) async {
    bool showNotification =
        getIt<PreferenceRepositoryService>().showNotification();
    GroupChannel groupChannel = GroupChannel(channelUrl: channel.channelUrl);
    print(message);
    messages.add(message);
    //getIt<ChatCubit>().loadGroupChannels();
    if (channel is GroupChannel) {
      // Now you can access the GroupChannel methods
      groupChannel = channel;

      // Then load the messages for this channel and update the state
      await getIt<ChatCubit>().loadMessages(groupChannel);
      //pasar hasUnreadMessages a un cubit aparte porque interfiere con el estado.
      await getIt<ChatCubit>().hasUnreadMessages();
    }
  }
}