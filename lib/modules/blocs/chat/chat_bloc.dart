import 'dart:convert';
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

import '../../enums/chat_message_data_type.dart';
import '../../models/profile/profile_model.dart';

part 'chat_event.dart';
part 'chat_state.dart';

class ChatBloc extends Bloc<ChatEvent, ChatState> {
  late SendbirdSdk _sendbirdSdk;
  final IChatService service;

  ChatBloc(this.service) : super(ChatState()) {
    this._sendbirdSdk = SendbirdSdk(appId: sendBirdAppId);

    on<ChatSetMyUser>(
        (event, emit) => emit(this.state.copyWith(myUser: event.user)));
    on<ChatAddChatsEvent>(
        (event, emit) => emit(this.state.copyWith(chats: event.chats)));
    on<ChatAddChatEvent>(
        (event, emit) => emit(this.state.copyWith(chats: event.getChats())));
    on<ChatUpdateMessageEvent>((event, emit) =>
        emit(this.state.copyWith(chats: event.getUpdatedChats())));
    on<ChatLoadinFileEvent>((event, emit) =>
        emit(this.state.copyWith(isLoadingFile: event.isLoadingFile)));

    on<ChatAddMessageVideoController>((event, emit) {
      emit(this
          .state
          .copyWith(videoChatControllers: event.updatedControllers()));
    });
  }

  SendbirdSdk get sendBirdSdk => this._sendbirdSdk;

  Future<void> initSendBirdApp() async {
    try {
      String userId = getIt<PreferenceRepositoryService>().getUserSendBirdId();
      String userToken =
          getIt<PreferenceRepositoryService>().getUserSendBirdToken();

      User user = await this._sendbirdSdk.connect(
            userId,
            accessToken: userToken,
          );

      await this.initSendBirdPushNotifications();
      this.add(ChatSetMyUser(user));
    } catch (e) {
      throw Exception('Error loading my user');
    }
  }

  Future<void> initSendBirdPushNotifications() async {
    String firebaseToken =
        getIt<PreferenceRepositoryService>().getFirebaseDeviceToken();

    await this._sendbirdSdk.registerPushToken(
          type: (Platform.isIOS) ? PushTokenType.apns : PushTokenType.fcm,
          token: firebaseToken,
        );
  }

  // Get the list of chats
  Future<List<GroupChannel>> getChatList() async {
    GroupChannelListQuery query = GroupChannelListQuery()..limit = 100;
    try {
      List<GroupChannel> channels = await query.loadNext();
      print(channels.first.channelUrl);
      await this._loadPreviousMessages(channels);
      return channels;
    } catch (error) {
      print('Error while loading the chat list: $error');
      return [];
    }
  }

  Future<void> getChannels() async {
    GroupChannelListQuery query = GroupChannelListQuery()..limit = 100;
    List<GroupChannel> channels = await query.loadNext();
    await this._loadPreviousMessages(channels);
  }

  Future<void> _loadPreviousMessages(List<GroupChannel> channels) async {
    List<ChatData> chatsData = [];

    for (int i = 0; i < channels.length; i++) {
      List<BaseMessage> messages =
          await this._getMessagesByChannel(channels[i]);

      chatsData.add(ChatData(
        messages: messages,
        channel: channels[i],
      ));

      this.add(ChatAddChatsEvent(chatsData));
    }
  }

  Future<ChatData> startNewChatPeerToPeer(String value) async {
    try {
      bool isChannelUrl = value.contains('sendbird');
      String channelUrl =
          (isChannelUrl) ? value : await this.service.loadChannel(value);
      GroupChannel newChannel = await GroupChannel.getChannel(channelUrl);

      bool chatExists = this.state.chats.any((ChatData chatData) {
        return chatData.channel.channelUrl == newChannel.channelUrl;
      });

      List<BaseMessage> messages = await this._getMessagesByChannel(newChannel);

      if (chatExists) {
        return this.state.chats.firstWhere((ChatData chatData) {
          return chatData.channel.channelUrl == newChannel.channelUrl;
        });
      } else {
        ChatData newChat = ChatData(
          messages: messages,
          channel: newChannel,
        );

        this.add(ChatAddChatEvent(
          currentChats: this.state.chats,
          newChat: newChat,
        ));
        this.add(ChatAddChatsEvent(this.state.chats));

        return newChat;
      }
    } catch (e) {
      throw Exception('Error loading channel');
    }
  }

  Future<ChatData> startNewChat(String value, bool flag) async {
    try {
      bool isChannelUrl = value.contains('sendbird');
      String channelUrl =
          (isChannelUrl) ? value : await this.service.loadChannel(value);
      GroupChannel newChannel = await GroupChannel.getChannel(channelUrl);

      bool chatExists = this.state.chats.any((ChatData chatData) {
        return chatData.channel.channelUrl == newChannel.channelUrl;
      });

      List<BaseMessage> messages = await this._getMessagesByChannel(newChannel);

      if (chatExists) {
        return this.state.chats.firstWhere((ChatData chatData) {
          return chatData.channel.channelUrl == newChannel.channelUrl;
        });
      } else {
        ChatData newChat = ChatData(
          messages: messages,
          channel: newChannel,
        );

        if (!flag) {
          this.add(ChatAddChatEvent(
            currentChats: this.state.chats,
            newChat: newChat,
          ));

          this.state.chats.removeAt(0);

          this.state.chats.insert(
              0,
              ChatData(
                messages: messages,
                channel: newChannel,
              ));

          this.add(ChatAddChatsEvent(this.state.chats));
        } else {
          this.state.chats.insert(
              0,
              ChatData(
                messages: messages,
                channel: newChannel,
              ));

          ChatData chatDataFirst = this.state.chats.firstWhere((ChatData chat) {
            return chat.channel.channelUrl == value;
          });

          await this.receiveFirstMessage(
            chatData: chatDataFirst,
            message: messages[0],
          );

          this.add(ChatAddChatsEvent(this.state.chats));
        }

        return newChat;
      }
    } catch (e) {
      throw Exception('Error loading channel');
    }
  }

  Future<List<BaseMessage>> _getMessagesByChannel(GroupChannel channel) async {
    List<BaseMessage> messages = [];

    PreviousMessageListQuery query = PreviousMessageListQuery(
      channelType: channel.channelType,
      channelUrl: channel.channelUrl,
    );

    query.limit = 100;
    query.messageTypeFilter = MessageTypeFilter.all;

    messages = await query.loadNext();

    return messages;
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
          if (error == null) {
            this.add(ChatUpdateMessageEvent(
              chatData: chatData,
              message: message,
              chats: this.state.chats,
            ));
          } else
            throw Exception();
        },
      );
    } catch (e) {
      throw Exception('There was an error sending a message');
    }
  }

  Future<void> sendFileMessage({
    required ChatData chatData,
  }) async {
    ImagePicker picker = ImagePicker();
    XFile? image = await picker.pickVideo(source: ImageSource.gallery);

    if (image != null) {
      FileMessageParams params = FileMessageParams.withFile(File(image.path));
      params.pushOption = PushNotificationDeliveryOption.normal;

      try {
        this.add(ChatLoadinFileEvent(true));

        chatData.channel.sendFileMessage(
          params,
          onCompleted: (FileMessage message, Error? error) async {
            if (error == null) {
              this.add(ChatUpdateMessageEvent(
                chatData: chatData,
                message: message,
                chats: this.state.chats,
              ));

              this.add(ChatLoadinFileEvent(false));
            } else {
              throw Exception();
            }
          },
        );
      } catch (e) {
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

    ProfileModel userProfile =
        getIt<PreferenceRepositoryService>().profileData();
    String userName = userProfile.username;

    String jsonString = message.data ?? '';

    jsonString = jsonString.replaceAll("'", '"');

    String jsonStringWithQuotes = "'$jsonString'";

    jsonStringWithQuotes = jsonString.replaceAll("None", '""');

    Map<String, dynamic> json = jsonDecode(jsonStringWithQuotes);

    Member member = chatData.channel.members.firstWhere((Member member) {
      return member.userId != this.state.myUser!.userId;
    });

    if (userName == json['payload']['userNameSeller'] &&
        json['type'] == ChatMessageDataType.confirmPaymentReceived.textValue) {
      String alertMessage =
          'Payment made ${json['payload']['listingName']} \nNew message from @Swag';
      LocalNotificationsService.showInAppAllert(alertMessage);
    }

    if (userName == json['payload']['userNameBuyer'] &&
        json['type'] == ChatMessageDataType.paymentReceived.textValue) {
      String alertMessage =
          'Payment received ${json['payload']['listingName']} \nNew message from @Swag';
      LocalNotificationsService.showInAppAllert(alertMessage);
    }

    if (userName == json['payload']['userNameBuyer'] &&
        json['type'] == ChatMessageDataType.saleCanceled.textValue) {
      String alertMessage =
          'Sale cancelled ${json['payload']['listingName']} \n${json['payload']['userNameSeller']} has cancelled the sale';
      LocalNotificationsService.showInAppAllert(alertMessage);
    }

    if (userName == json['payload']['userNameBuyer'] &&
        json['type'] == ChatMessageDataType.confirmPaidSend.textValue) {
      String alertMessage =
          'Payment details ${json['payload']['listingName']} \nNew message from @Swag';
      LocalNotificationsService.showInAppAllert(alertMessage);
    }
  }

  Future<void> receiveFirstMessage({
    required ChatData chatData,
    required BaseMessage message,
  }) async {
    ProfileModel userProfile =
        getIt<PreferenceRepositoryService>().profileData();
    String userName = userProfile.username;

    String jsonString = message.data ?? '';

    jsonString = jsonString.replaceAll("'", '"');

    String jsonStringWithQuotes = "'$jsonString'";

    jsonStringWithQuotes = jsonString.replaceAll("None", '""');

    Map<String, dynamic> json = jsonDecode(jsonStringWithQuotes);

    String alertMessage =
        'Pending sale ${json['payload']['listingName']} \nNew message from @Swag';
    LocalNotificationsService.showInAppAllert(alertMessage);
  }

  Future<void> updateChatReadStatus(ChatData updateChatData) async {
    for (ChatData chatData in this.state.chats) {
      if (chatData.channel.channelUrl == updateChatData.channel.channelUrl) {
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

    if (!isNotController) {
      this.add(ChatAddMessageVideoController(
        newController: newController,
        controllers: this.state.videoChatControllers,
      ));
    }
  }

  Future<void> bringAdminToChat(String chatUrl) async =>
      await this.service.bringAdminToChat(chatUrl);

  Future<void> getUserSendBirdToken() async {
    String sendBirdToken = await this.service.getUserSendBirdToken();
    await getIt<PreferenceRepositoryService>()
        .saveUserSendBirdToken(sendBirdToken);
  }
}
