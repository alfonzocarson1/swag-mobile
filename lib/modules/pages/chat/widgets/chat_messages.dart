import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:swagapp/generated/l10n.dart';
import 'package:sendbird_sdk/sendbird_sdk.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swagapp/modules/di/injector.dart';
import 'package:swagapp/modules/blocs/chat/chat_bloc.dart';
import 'package:swagapp/modules/common/assets/images.dart';
import 'package:swagapp/modules/common/utils/palette.dart';
import 'package:swagapp/modules/models/chat/chat_data.dart';
import 'package:swagapp/modules/models/chat/channel_data.dart';
import 'package:swagapp/modules/models/chat/message_data.dart';
import 'package:swagapp/modules/common/utils/sendbird_utils.dart';
import 'package:swagapp/modules/models/profile/profile_model.dart';
import 'package:swagapp/modules/pages/chat/widgets/chat_commence_banner.dart';
import 'package:swagapp/modules/data/shared_preferences/shared_preferences_service.dart';

import 'chat_card_message.dart';
import 'chat_date_separator.dart';
import 'chat_message_content.dart';
import 'chat_loading_file_message.dart';

class ChatMessages extends StatefulWidget {

  final ChatData chatData;
  final ScrollController scrollController;

  const ChatMessages({
    super.key,    
    required this.chatData,
    required this.scrollController, 
  });

  @override
  State<ChatMessages> createState() => _ChatMessagesState();
}

class _ChatMessagesState extends State<ChatMessages> {

  late List<Widget> items;
  late String userSendbirdiId; 
  late int previousMessagesLengh;
  late GlobalKey<AnimatedListState> listKey;

  @override
  void initState() {

    ChatBloc chatBloc = context.read<ChatBloc>();

    this.listKey = GlobalKey<AnimatedListState>();
    this.previousMessagesLengh = this.widget.chatData.messages.length;
    this.userSendbirdiId = getIt<PreferenceRepositoryService>().getUserSendBirdId();
    this.items = this.getChatItems(userSendbirdiId, chatBloc).reversed.toList();

    super.initState();
  }
  
  @override
  Widget build(BuildContext context) {

    ChatBloc chatBloc = context.watch<ChatBloc>();
    this.updateItems(chatBloc, userSendbirdiId);

    return AnimatedList(
      key: this.listKey,
      reverse: true,
      initialItemCount: this.items.reversed.length,
      controller: this.widget.scrollController,
      physics: const RangeMaintainingScrollPhysics(),
      padding: const EdgeInsets.only(top: 20, bottom: 5),
      itemBuilder: (BuildContext context, int index, Animation<double> animation) {  

        return SizeTransition(
          sizeFactor: animation,
          child: this.items[index],
        );
      },
    );
  }

  ChannelData getChannelData(String channelDataJson) {

    Map<String, dynamic> channelDataJson = SendBirdUtils.getFormatedData(this.widget.chatData.channel.data!);
    ChannelData channelData = ChannelData.fromJson(channelDataJson);

    return channelData;
  }

  List<Widget> getChatItems(String userSendbirdiId, ChatBloc chatBloc) {

    List<Widget> items = [];

    (this.widget.chatData.channel.data?.isNotEmpty ?? false)
    ? items.add(ChatCommenceBanner(
        channelData: this.getChannelData(this.widget.chatData.channel.data!),
      ))
    : null;
    
    (chatBloc.state.isLoadingFile)
    ? items.add(const ChatLoadingFileMessage())
    : null;

    for (int i = 0; i < this.widget.chatData.messages.length; i++) {
      
      BaseMessage message = this.widget.chatData.messages.toList()[i];
      items.add(this.addDateSeparator(i, message));
      items.add(this.getChatItem(message));
    }

    return items;
  }

  Widget getChatItem(BaseMessage message) {

    if(message.data?.isNotEmpty ?? false) {

      Map<String, dynamic> messageDataJson = SendBirdUtils.getFormatedData(message.data!);
      MessageData messageData = MessageData.fromJson(messageDataJson);
      ProfileModel profileData = getIt<PreferenceRepositoryService>().profileData();

      bool isMyUserBuyer = messageData.payload.userNameBuyer == profileData.username;

      return (isMyUserBuyer) 
      ? ChatCardMessage(messageData: messageData)
      : _Message(
          isMyMessage: false,
          message: message,
        );
    }
    else {

      bool isMyMessage = (message.sender?.userId == userSendbirdiId);

      return _Message(
        isMyMessage: isMyMessage,
        message: message,
      );
    }
  }

  Widget addDateSeparator(int index, BaseMessage message) {

    DateTime createdAt = DateTime.fromMillisecondsSinceEpoch(message.createdAt);

    if(index > 0) {

      BaseMessage previousMessage = this.widget.chatData.messages.toList()[index - 1];
      DateTime previousCreatedAt = DateTime.fromMillisecondsSinceEpoch(previousMessage.createdAt);

      return (createdAt.day != previousCreatedAt.day)
      ? ChatlDateSeparator(date: createdAt)
      : const SizedBox.shrink();
    }
    else return ChatlDateSeparator(date: createdAt);
  }

  void updateItems(ChatBloc chatBloc, String userSendbirdiId) {

    if(this.widget.chatData.messages.length > this.previousMessagesLengh) {

      BaseMessage message = this.widget.chatData.messages.last;
      bool isMyMessage = (message.sender?.userId == userSendbirdiId);
      this.previousMessagesLengh = this.widget.chatData.messages.length;
      this.addItem(message, isMyMessage);
    }
  }

  void addItem(BaseMessage message, bool isMyMessage) async {

    this.items.insert(
      0, 
      _Message(
        message: message, 
        isMyMessage: isMyMessage,
      ),
    );

    this.listKey.currentState!.insertItem(
      0,
      duration: const Duration(milliseconds: 300),
    );
  }
}

class _Message extends StatelessWidget {
  
  final BaseMessage message;
  final bool isMyMessage;

  const _Message({
    super.key,
    required this.message, 
    required this.isMyMessage,

  });

  @override
  Widget build(BuildContext context) {

    String nickName = this.message.sender?.nickname ?? S.current.chatModeratorName;
    DateTime createdAt = DateTime.fromMillisecondsSinceEpoch(message.createdAt);
    DateFormat dateFormat = DateFormat().add_jm();
    String createdAtFormated = dateFormat.format(createdAt);

    return Container(
      margin: const EdgeInsets.only(bottom: 5),
      child: Row(
        mainAxisAlignment: (this.isMyMessage) 
        ? MainAxisAlignment.end 
        : MainAxisAlignment.start,
        crossAxisAlignment: CrossAxisAlignment.end,
        children: <Widget>
        [
          (this.isMyMessage) 
          ? Flexible(child: Container())
          : const SizedBox.shrink(),
    
          (this.isMyMessage) 
          ? Flexible(child: _MessageCreatedAt(createdAtFormated: createdAtFormated))
          : const SizedBox.shrink(),
    
          (this.isMyMessage) 
          ? const SizedBox.shrink()
          : const Flexible(child: _MessageAvatar()),
    
          (this.isMyMessage) 
          ? ChatMessageContent(
              isMyMessage: this.isMyMessage,
              nickName: nickName, 
              message: message,
            )
          : Flexible(
              flex: 6,
              child: ChatMessageContent(
                isMyMessage: this.isMyMessage,
                nickName: nickName, 
                message: message,
              ),
            ),
    
          (this.isMyMessage) 
          ? const SizedBox.shrink()
          : Flexible(child: _MessageCreatedAt(createdAtFormated: createdAtFormated)),
        ],
      ),
    );
  }
}

class _MessageCreatedAt extends StatelessWidget {

  final String createdAtFormated;

  const _MessageCreatedAt({
    super.key,
    required this.createdAtFormated,
  });

  @override
  Widget build(BuildContext context) {
    
    return Container(
      margin: const EdgeInsets.only(bottom: 5),
      child: Text(
        createdAtFormated,
        style: TextStyle(
          fontSize: 12,
          fontWeight: FontWeight.w300,
          color: Palette.current.gray7,
        ),
      ),
    );
  }
}

class _MessageAvatar extends StatelessWidget {

  const _MessageAvatar({super.key});

  @override
  Widget build(BuildContext context) {

    double imageWidth = 35;

    return Container(
      margin: const EdgeInsets.only(bottom: 5, left: 20),
      child: Image(
        width: imageWidth,
        image: const AssetImage(AppImages.avatar2),
      ),
    );
  }
}

