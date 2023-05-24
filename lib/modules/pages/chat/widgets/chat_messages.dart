import 'package:intl/intl.dart';
import 'package:flutter/material.dart';
import 'package:swagapp/generated/l10n.dart';
import 'package:sendbird_sdk/sendbird_sdk.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swagapp/modules/di/injector.dart';
import 'package:swagapp/modules/blocs/chat/chat_bloc.dart';
import 'package:swagapp/modules/common/assets/images.dart';
import 'package:swagapp/modules/common/utils/palette.dart';
import 'package:swagapp/modules/data/shared_preferences/shared_preferences_service.dart';

import 'chat_date_separator.dart';
import 'chat_message_content.dart';
import 'chat_loading_file_message.dart';

class ChatMessages extends StatefulWidget {

  final List<BaseMessage> messages;
  final ScrollController scrollController;

  const ChatMessages({
    super.key,
    required this.messages,
    required this.scrollController,
  });

  @override
  State<ChatMessages> createState() => _ChatMessagesState();
}

class _ChatMessagesState extends State<ChatMessages> {
  
  @override
  Widget build(BuildContext context) {

    ChatBloc chatBloc = context.watch<ChatBloc>();    
    String userSendbirdiId = getIt<PreferenceRepositoryService>().getUserSendBirdId();
    List<Widget> items = this.getChatItems(userSendbirdiId, chatBloc);

    return ListView.builder(
      key: const PageStorageKey<String>('item'),
      reverse: true,
      itemCount: items.length,
      controller: this.widget.scrollController,
      physics: const RangeMaintainingScrollPhysics(),
      padding: const EdgeInsets.symmetric(vertical: 20),
      keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
      itemBuilder: (BuildContext context, int index)=> items[index],
    );
  }

  List<Widget> getChatItems(String userSendbirdiId, ChatBloc chatBloc) {

    List<Widget> items = [];
    
    (chatBloc.state.isLoadingFile)
    ? items.add(const ChatLoadingFileMessage())
    : null;    

    for (int i = 0; i < this.widget.messages.length; i++) {
      
      BaseMessage message = this.widget.messages.reversed.toList()[i];
      bool isMyMessage = (message.sender?.userId == userSendbirdiId);


      items.add(_Message(
        isMyMessage: isMyMessage,
        message: message,
      ));
      
      items.add(this.addDateSeparator(i, message));
    }

    return items;
  }

  Widget addDateSeparator(int index, BaseMessage message) {

    DateTime createdAt = DateTime.fromMillisecondsSinceEpoch(message.createdAt);

    if(index > 0) {

      BaseMessage previousMessage = this.widget.messages.reversed.toList()[index - 1];
      DateTime previousCreatedAt = DateTime.fromMillisecondsSinceEpoch(previousMessage.createdAt);

      return (createdAt.day != previousCreatedAt.day)
      ? ChatlDateSeparator(date: previousCreatedAt)
      : const SizedBox.shrink();
    }
    else return const SizedBox.shrink();
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


