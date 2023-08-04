import 'dart:convert';
import 'dart:io';

import 'package:dash_chat_2/dash_chat_2.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:permission_handler/permission_handler.dart';
import 'package:sendbird_chat_sdk/sendbird_chat_sdk.dart';
import 'package:swagapp/modules/common/assets/icons.dart';
import 'package:swagapp/modules/common/ui/simple_loader.dart';
import 'package:swagapp/modules/common/utils/palette.dart';
import 'package:swagapp/modules/enums/chat_type.dart';
import 'package:swagapp/modules/pages/chat/widgets/camera_permissions_handler.dart';
import 'package:swagapp/modules/pages/chat/widgets/chat_popup_menu.dart';
import 'package:swagapp/modules/services/route_observer.dart';

import '../../common/ui/grant_permission_popup.dart';
import '../../common/ui/image_picker_with_permissions.dart';
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
import '../../services/route_observer_utils.dart';
import 'widgets/chat_card_message.dart';
import 'widgets/chat_commence_banner.dart';

import '../chats/widgets/chat_camera_page.dart';
import '../chats/widgets/custom_chat_message.dart';

class ChatPage extends StatefulWidget {
  static const name = '/ChatPage';
  final GroupChannel channel;

  ChatPage({required this.channel});

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> with RouteAware {
  List<BaseMessage> messages = [];
  late String userSendbirdiId;
  String channelDataString = "";
  List<BaseMessage> messagesList = [];
  late List<ChatMessage> chatMessages;
  List<String> messageStatus = [];
  FocusNode _focusNode = FocusNode();
  TextEditingController _textEditingController = TextEditingController();
  late Member otherUser;
  late ChannelData channelMetaData;
  String loadingFileId = "";

  @override
  void initState() {
    super.initState();
    this.loadPushNotifications();
    channelDataString = widget.channel.data;
    channelMetaData =
        ChannelData.fromJson(SendBirdUtils.getFormatedData(channelDataString));
    getIt<ChatCubit>().loadMessages(widget.channel);
    this.userSendbirdiId =
        getIt<PreferenceRepositoryService>().getUserSendBirdId();
    _focusNode.addListener(() {
      setState(() {});
    });

    _textEditingController.addListener(() {
      setState(() {});
    });
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    ObserverUtils.routeObserver.subscribe(this, ModalRoute.of(context)!);
  }

  void _navigate() async {
             Navigator.of(context).push(MaterialPageRoute(
          builder: (context) => ChatCamera(
                channel: widget.channel,
              )));                                    
   
  }

  Future<void> loadPushNotifications() async {
    if (Platform.isIOS) {
      await FirebaseMessaging.instance
          .setForegroundNotificationPresentationOptions(
        alert: false,
        badge: false,
        sound: false,
      );
    }
    getIt<PreferenceRepositoryService>().saveShowNotification(false);
  }

  @override
  Widget build(BuildContext context) {
    ProfileModel userProfile =
        getIt<PreferenceRepositoryService>().profileData();
    String userName = userProfile.username;
    List<Member> chatMembers = widget.channel.members;
    otherUser = chatMembers
        .where((Member member) =>
            member.nickname != userName && member.role != Role.operator)
        .toList()
        .first;

   

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
        actions: <Widget>[
          ChatPopupMenu(
              chatData: ChatData(messages: messages, channel: widget.channel))
        ],
        // foregroundColor: Palette.current.greyMessage,
        backgroundColor: Palette.current.blackAppbarBlackground,
        title: Text(
          (widget.channel.customType == ChatType.listing.textValue)
              ? '@$userName, @${otherUser.nickname}, and $swagBotNickName '
              : '@${this.channelMetaData.sellerUsername} ${this.channelMetaData.listingProductName}',
          style: Theme.of(context).textTheme.titleMedium?.copyWith(
              fontFamily: 'Ringside Regular',
              fontStyle: FontStyle.normal,
              fontWeight: FontWeight.w700,
              color: Palette.current.primaryWhiteSmoke,
              fontSize: 16),
        ),
      ),
      body: BlocConsumer<ChatCubit, ChatState>(
        listenWhen: (previous, current) => current is LoadingFile,
        listener: (context, state) {
          state.maybeWhen(
            loadingFile: (sentBytes, totalBytes, messageId) {
              loadingFileId = messageId;
            },
            orElse: () => null,
          );
        },
        buildWhen: (previous, current) {
          return current is! ChatsLoading &&
              current is! ChatChannelsLoaded &&
              current is! HasUnreadMessages;
          //&& current is !LoadingFile;
        },
        builder: (context, state) {
          return state.maybeWhen(
              initial: () => const Center(child: Text('Welcome to the chat')),
              loadingFile: (sentBytes, totalBytes, messageId) =>
                  const SimpleLoader(),
              loadedChats: (List<BaseMessage> messages) {

                                         if (widget.channel.unreadMessageCount > 0) {
      widget.channel.markAsRead();
    }
    
                messagesList = messages;
                chatMessages = messagesList.map((chatMessage) {
                  FileMessage fileMessage;
                  ChatMedia chatMedia =
                      ChatMedia(url: "", fileName: "", type: MediaType.image);
                  Map<String, dynamic> messageDataJson = {};
                  if (chatMessage is FileMessage) {
                    fileMessage = chatMessage;
                    messageDataJson = {
                      'sentFileStatus':
                          fileMessage.sendingStatus.toString().split('.').last
                    };
                    chatMedia = ChatMedia(
                        url: fileMessage.secureUrl ?? "",
                        fileName: fileMessage.name ?? "",
                        type: (fileMessage.type!.contains("image/jpeg"))
                            ? MediaType.image
                            : (fileMessage.type!.contains("video/mp4") ||
                                    fileMessage.type!
                                        .contains("video/quicktime"))
                                ? MediaType.video
                                : MediaType.file);
                  } else {
                    messageDataJson =
                        SendBirdUtils.getFormatedData(chatMessage.data ?? "");
                    if (messageDataJson.isNotEmpty) {
                      MessageData messageData =
                          MessageData.fromJson(messageDataJson);
                      messageStatus.add(messageData.type);
                    }
                  }

                  return ChatMessage(
                    text: chatMessage.message,
                    customProperties: messageDataJson,
                    medias: [chatMedia],
                    user: ChatUser(
                      profileImage: chatMessage.sender?.profileUrl ?? "",
                      firstName: chatMessage.sender?.nickname ?? "",
                      id: chatMessage.sender?.userId ?? "0000",
                    ),
                    createdAt: DateTime.fromMillisecondsSinceEpoch(
                        chatMessage.createdAt),
                  );
                }).toList();

                chatMessages.add(ChatMessage(
                    text: 'Banner',
                    user:
                        ChatUser(id: 'SwagBanner', firstName: swagBotNickName),
                    createdAt: DateTime.fromMillisecondsSinceEpoch(
                        widget.channel.invitedAt)));

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
                      textController: _textEditingController,
                      focusNode: _focusNode,
                      textCapitalization: TextCapitalization.sentences,
                      sendButtonBuilder: (send) {
                        return const SizedBox.shrink();
                      },
                      leading: (_focusNode.hasFocus)
                          ? [
                              Icon(Icons.chevron_right,
                                  color: Palette.current.primaryNeonGreen)
                            ]
                          : [
                              IconButton(
                                  onPressed: () {
                                    handlePermissions(context: context, afterPermissionsHandled: _navigate );                           
                                  },
                                  icon: Image.asset(AppIcons.chatCamera)),
                              IconButton(
                                icon: Image.asset(AppIcons.chatGallery),
                                onPressed: () {
                                  galleryMethod();
                                },
                              )
                            ],
                      inputTextStyle:
                          TextStyle(color: Palette.current.primaryWhiteSmoke),
                      inputDecoration: InputDecoration(
                        constraints: BoxConstraints.tight(const Size(50, 50)),
                        suffixIcon: Container(
                          padding: const EdgeInsetsDirectional.only(end: 12.0),
                          child: IconButton(
                            icon: (_textEditingController.text.isEmpty)
                                ? Image.asset(
                                    AppIcons.sendDisabled,
                                    height: 25,
                                  )
                                : Image.asset(AppIcons.sendEnabled, height: 25),
                            onPressed: _textEditingController.text.isEmpty
                                ? null
                                : () async {
                                    final text = _textEditingController.text;

                                    // Create a ChatMessage instance from the text
                                    final chatMessage = ChatMessage(
                                      text: text,
                                      user: ChatUser(
                                        // Add your user info here
                                        id: userProfile.accountId,
                                        firstName: userName,
                                      ),
                                      createdAt: DateTime.now(),
                                    );

                                    UserMessage sentMessage =
                                        await getIt<ChatCubit>().sendMessage(
                                            widget.channel, chatMessage.text);
                                    _textEditingController.clear();
                                    setState(() {
                                      // _messages.add(sentMessage);
                                    });

                                    // handle sending the message here
                                  },
                          ),
                        ),
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
              });
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
    var creator = widget.channel.creator;
    String chatCreator = "";
    if (creator != null) {
      chatCreator = creator.nickname;
    }

    if (message.text.contains('Banner')) {
      bool isListingChat =
          widget.channel.customType == ChatType.listing.textValue;
      return ChatCommenceBanner(
        channelData: getChannelData(),
        otherUser: chatCreator,
        createdAt:
            DateTime.fromMillisecondsSinceEpoch(widget.channel.invitedAt),
        isListingChat: isListingChat,
      );
    } else {
      if (message.user.firstName != swagBotNickName) {
        if (message.medias != null && message.medias!.first.url.isNotEmpty) {
          var customProperties = message.customProperties;
          if (customProperties != null &&
              customProperties.containsKey("sentFileStatus")) {
            String sentFileStatus = customProperties['sentFileStatus'];
            return (sentFileStatus == "succeeded")
                ? CustomChatMessage(
                    formattedTime: formattedTime,
                    context: context,
                    isAfterDateSeparator: isAfterDateSeparator,
                    isBeforeDateSeparator: isBeforeDateSeparator,
                    message: message,
                    user: user,
                    otherUser: otherUser.nickname,
                    isFileLoading: false,
                    fileUrl: message.medias!.first.url,
                    mediaType: message.medias!.first.type,
                  )
                : const Center(
                    child: CircularProgressIndicator(),
                  );
          } else {
            return CustomChatMessage(
              formattedTime: formattedTime,
              context: context,
              isAfterDateSeparator: isAfterDateSeparator,
              isBeforeDateSeparator: isBeforeDateSeparator,
              message: message,
              user: user,
              otherUser: otherUser.nickname,
              fileUrl: message.medias!.first.url,
              mediaType: message.medias!.first.type,
            );
          }
        } else {
          return CustomChatMessage(
            formattedTime: formattedTime,
            context: context,
            isAfterDateSeparator: isAfterDateSeparator,
            isBeforeDateSeparator: isBeforeDateSeparator,
            message: message,
            user: user,
            otherUser: otherUser.nickname,
          );
        }
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

        bool hideButtonConfirmPaidSend =
            messageStatus.contains(ChatMessageDataType.saleCanceled.textValue);

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
            otherUser: swagBotMessageName,
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
                  otherUser: swagBotMessageName,
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
                  otherUser: swagBotMessageName,
                  messageData: messageData)
              : const SizedBox.shrink();
        } else if (messageData.type ==
            ChatMessageDataType.itemNotReceived.textValue) {
          return CustomChatMessage(
              formattedTime: formattedTime,
              context: context,
              isAfterDateSeparator: isAfterDateSeparator,
              isBeforeDateSeparator: isBeforeDateSeparator,
              message: message,
              user: user,
              otherUser: otherUser.nickname,
              messageData: messageData);
        } else {
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
                      otherUser: swagBotMessageName,
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

  void galleryMethod() {
    handlePermissionsForImagePicker(context, ImageSource.gallery);
    getIt<ChatCubit>().sendGalleryFileMessage(widget.channel);
    //setState(() {});
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
