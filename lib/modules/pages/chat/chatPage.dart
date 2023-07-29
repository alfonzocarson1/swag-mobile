import 'dart:io';

import 'package:dash_chat_2/dash_chat_2.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:sendbird_chat_sdk/sendbird_chat_sdk.dart';
import 'package:swagapp/modules/common/assets/icons.dart';
import 'package:swagapp/modules/common/utils/palette.dart';
import 'package:swagapp/modules/enums/chat_type.dart';

import '../../common/utils/sendbird_utils.dart';
import '../../constants/constants.dart';
import '../../cubits/chat/chat_cubit.dart';
import '../../data/shared_preferences/shared_preferences_service.dart';

import '../../di/injector.dart';
import '../../enums/chat_message_data_type.dart';
import '../../models/chat/channel_data.dart';
import '../../models/chat/chat_data.dart';
import '../../models/chat/message_data.dart';
import '../../models/profile/profile_model.dart';
import 'widgets/chat_card_message.dart';
import 'widgets/chat_commence_banner.dart';

import '../chats/widgets/chat_camera_page.dart';
import '../chats/widgets/custom_chat_message.dart';

class ChatPage extends StatefulWidget {
  final GroupChannel channel;

  ChatPage({required this.channel});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {
  List<BaseMessage> messages = [];
  late String userSendbirdiId;
  String channelDataString = "";
  List<BaseMessage> messagesList = [];
  late List<ChatMessage> chatMessages;
  List<String> messageStatus = [];

  @override
  void initState() {
    super.initState();
    channelDataString = widget.channel.data;
    getIt<ChatCubit>().loadMessages(widget.channel);
    this.userSendbirdiId =
        getIt<PreferenceRepositoryService>().getUserSendBirdId();
  }

  @override
  Widget build(BuildContext context) {
 
    ProfileModel userProfile =
        getIt<PreferenceRepositoryService>().profileData();
    String userName = userProfile.username;
    List<Member> chatMembers = widget.channel.members;
    Member seller = chatMembers
        .where((Member member) =>
            member.nickname != userName && member.role != Role.operator)
        .toList()
        .first;
    if(widget.channel.unreadMessageCount >0){
    widget.channel.markAsRead();
    }
    
    return Scaffold(
      backgroundColor: Palette.current.black,
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle.light,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Palette.current.primaryNeonGreen,
          ),
          onPressed: () async {
            context.read<ChatCubit>().loadGroupChannels();
            if (Platform.isIOS) {
              await FirebaseMessaging.instance
                  .setForegroundNotificationPresentationOptions(
                alert: true,
                badge: true,
                sound: true,
              );
            }
            setState(() {
              getIt<PreferenceRepositoryService>().saveShowNotification(true);
            });
            Navigator.of(context).pop();
          },
        ),
        //actions: <Widget>[ChatPopupMenu(chatData: ChatData(messages: messages, channel: widget.channel))],
        // foregroundColor: Palette.current.greyMessage,
        backgroundColor: Palette.current.blackAppbarBlackground,
        title: Text(
          '$userName, ${seller.nickname}, and $swagBotNickName ',
          style: TextStyle(color: Palette.current.primaryWhiteSmoke),
        ),
      ),
      body: BlocBuilder<ChatCubit, ChatState>(
        buildWhen: (previous, current) {
          return current is! ChatsLoading && current is! ChatChannelsLoaded && current is !HasUnreadMessages;
        },
        builder: (context, state) {          
          return state.maybeWhen(
            initial: () => const Center(child: Text('Welcome to the chat')),
            //loadingChats: () => const SizedBox.shrink(),
            loadedChats: (List<BaseMessage> messages) {
              messagesList = messages;
              // messages = messages;
              chatMessages = messagesList.map((chatMessage) {
                Map<String, dynamic> messageDataJson =
                    SendBirdUtils.getFormatedData(chatMessage.data ?? "");
                    if(messageDataJson.isNotEmpty){
                       MessageData messageData =
                    MessageData.fromJson(messageDataJson);
                    messageStatus.add(messageData.type);
                    }                   
                return ChatMessage(
                  text: chatMessage.message,
                  customProperties: messageDataJson,
                  user: ChatUser(
                    profileImage: chatMessage.sender?.profileUrl ?? "",
                    firstName: chatMessage.sender?.nickname ?? "",
                    id: chatMessage.sender?.userId ?? "0000",
                  ),
                  createdAt:
                      DateTime.fromMillisecondsSinceEpoch(chatMessage.createdAt),
                );
              }).toList();

              chatMessages.add(ChatMessage(
                  text: 'Banner',
                  user: ChatUser(id: 'SwagBanner', firstName: swagBotNickName),
                  createdAt: DateTime.now()));

              return DashChat(
                messageOptions: MessageOptions(
                  currentUserTextColor: Colors.black,
                  currentUserContainerColor: Palette.current.primaryNeonGreen,
                  containerColor: Palette.current.greyMessage,
                  textColor: Palette.current.primaryWhiteSmoke,
                  messagePadding: const EdgeInsets.symmetric(
                      vertical: 5.0, horizontal: 16.0),
                  messageRowBuilder: (message, previousMessage, nextMessage,
                          isAfterDateSeparator, isBeforeDateSeparator) =>
                      messageRowBuilder(
                          message: message,
                          user: ChatUser(
                            firstName: userName,
                            id: userProfile.accountId,
                          ),
                          isAfterDateSeparator: isAfterDateSeparator,
                          isBeforeDateSeparator: isBeforeDateSeparator),
                  avatarBuilder: (p0, onPressAvatar, onLongPressAvatar) {
                    if (p0.id == 'SwagBanner') {
                      return const SizedBox.shrink();
                    } else {
                      return DefaultAvatar(user: p0);
                    }
                  },
                ),
                inputOptions: InputOptions(
                    leading: [
                      IconButton(
                          onPressed: () {
                            // Navigator.of(context).push(MaterialPageRoute(
                            //     builder: (context) => const CameraPage()));
                          },
                          icon: Image.asset(AppIcons.add))
                    ],
                    inputTextStyle:
                        TextStyle(color: Palette.current.primaryWhiteSmoke),
                    sendButtonBuilder: defaultSendButton(
                        icon: Icons.ac_unit_sharp,
                        color: Palette.current.primaryNeonGreen),
                    inputDecoration: InputDecoration(
                      hintText: 'Enter message',
                      hintStyle: TextStyle(color: Palette.current.grey),
                      fillColor: Palette
                          .current.greyMessage, // Set your desired color here
                      filled: true,
                      contentPadding: const EdgeInsets.symmetric(
                          horizontal: 20.0, vertical: 10.0),
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(25.0),
                        borderSide: BorderSide.none,
                      ),
                    )),
                messages: chatMessages,
                currentUser: ChatUser(
                  firstName: userName,
                  id: userProfile.accountId,
                ),
                onSend: (ChatMessage message) async {
                  UserMessage sentMessage = await getIt<ChatCubit>()
                      .sendMessage(widget.channel, message.text);
                  setState(() {
                    // _messages.add(sentMessage);
                  });
                },
              );
            },
            error: (errorMessage) =>
                Center(child: Text('Error: $errorMessage')),
            orElse: () {
              return const SizedBox.shrink();
              
            } 
          );
        },
      ),
    );
  }

  addAttachments() {}


  Widget messageRowBuilder(
      {required ChatMessage message,
      required bool isAfterDateSeparator,
      required bool isBeforeDateSeparator,
      required ChatUser user}) {
    DateTime messageTime = message.createdAt;
    String formattedTime = DateFormat('h:mm a').format(messageTime);

    if (message.text.contains('Banner')) {
      return 
      ChatCommenceBanner(
        channelData: getChannelData(),
        isListingChat: widget.channel.customType == ChatType.listing.textValue,
      );
    } else {
      if (message.user.firstName != swagBotNickName) {
        return CustomChatMessage(
          formattedTime: formattedTime,
          context: context,
          isAfterDateSeparator: isAfterDateSeparator,
          isBeforeDateSeparator: isBeforeDateSeparator,
          message: message,
          user: user,
        );
      } else {
        MessageData messageData =
            MessageData.fromJson(message.customProperties ?? {});

        bool isMyUserBuyer =
            messageData.payload.userNameBuyer == user.firstName;
        ChatData chatData =
            ChatData(messages: messages, channel: widget.channel);
           bool showConfirmMessage =
          (messageData.type == ChatMessageDataType.confirmPaidSend.textValue);
      bool showReceivedMessage = (messageData.type ==
          ChatMessageDataType.confirmPaymentReceived.textValue);

      bool hideButtonConfirmPaidSend = messageStatus
          .contains(ChatMessageDataType.saleCanceled.textValue);

        if (messageData.type == ChatMessageDataType.paymentReceived.textValue ||
            messageData.type == ChatMessageDataType.message.textValue ||
            messageData.type == ChatMessageDataType.shipped.textValue ||
            messageData.type == ChatMessageDataType.saleCanceled.textValue) {
          return CustomChatMessage(
            formattedTime: formattedTime,
            context: context,
            isAfterDateSeparator: isAfterDateSeparator,
            isBeforeDateSeparator: isBeforeDateSeparator,
            message: message,
            user: user,
            messageData: messageData,
          );
        } else if (messageData.type ==
            ChatMessageDataType.confirmShip.textValue) {
          return (isMyUserBuyer)
              ? CustomChatMessage(
                  formattedTime: formattedTime,
                  context: context,
                  isAfterDateSeparator: isAfterDateSeparator,
                  isBeforeDateSeparator: isBeforeDateSeparator,
                  message: message,
                  user: user,
                  messageData: messageData)
              : ChatCardMessage(
                  messageData: messageData,
                  chatData: chatData,
                );
        } else if (messageData.type ==
            ChatMessageDataType.paymentSend.textValue) {
          return (isMyUserBuyer)
              ? CustomChatMessage(
                  formattedTime: formattedTime,
                  context: context,
                  isAfterDateSeparator: isAfterDateSeparator,
                  isBeforeDateSeparator: isBeforeDateSeparator,
                  message: message,
                  user: user,
                  messageData: messageData)
              : const SizedBox.shrink();
        } else if (messageData.type ==
            ChatMessageDataType.itemNotReceived.textValue) {
          return (isMyUserBuyer)
              ? const SizedBox.shrink()
              : CustomChatMessage(
                  formattedTime: formattedTime,
                  context: context,
                  isAfterDateSeparator: isAfterDateSeparator,
                  isBeforeDateSeparator: isBeforeDateSeparator,
                  message: message,
                  user: user,
                  messageData: messageData);
        }else{
             return (isMyUserBuyer)
          ? (showReceivedMessage)
              ? const SizedBox.shrink()
              : ChatCardMessage(
                  messageData: messageData,
                  chatData: chatData,
                  hideCardButton: hideButtonConfirmPaidSend,
                )
          : (showConfirmMessage)
              ? CustomChatMessage(
                  formattedTime: formattedTime,
                  context: context,
                  isAfterDateSeparator: isAfterDateSeparator,
                  isBeforeDateSeparator: isBeforeDateSeparator,
                  message: message,
                  user: user,
                  messageData: messageData)
              : ChatCardMessage(
                  messageData: messageData,
                  chatData: chatData,
                );

        }
      }
    }
  }

  ChannelData getChannelData() {
    Map<String, dynamic> channelDataJson =
        SendBirdUtils.getFormatedData(channelDataString);
    ChannelData channelData = ChannelData.fromJson(channelDataJson);

    return channelData;
  }



  // Widget addDateSeparator(int index, BaseMessage message) {
  //   DateTime createdAt = DateTime.fromMillisecondsSinceEpoch(message.createdAt);

  //   if (index > 0) {
  //     BaseMessage previousMessage = messages.toList()[index - 1];
  //     DateTime previousCreatedAt =
  //         DateTime.fromMillisecondsSinceEpoch(previousMessage.createdAt);

  //     return (createdAt.day != previousCreatedAt.day)
  //         ? ChatlDateSeparator(date: createdAt)
  //         : const SizedBox.shrink();
  //   } else
  //     return ChatlDateSeparator(date: createdAt);
  // }

  
}
