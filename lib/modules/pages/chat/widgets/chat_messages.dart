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
import 'package:swagapp/modules/pages/media_viewer/media_viewer_page.dart';

import 'chat_initial_date.dart';
import 'chat_message_content.dart';
import 'chat_loading_file_message.dart';

class ChatMessages extends StatelessWidget {

  final List<BaseMessage> messages;
  final ScrollController scrollController;

  const ChatMessages({
    super.key,
    required this.messages,
    required this.scrollController,
  });


  @override
  Widget build(BuildContext context) {

    ChatBloc chatBloc = context.watch<ChatBloc>();    
    String userSendbirdiId = getIt<PreferenceRepositoryService>().getUserSendBirdId();
    List<Widget> items = this.getChatItems(userSendbirdiId, chatBloc);

    return ListView.builder(
      key: const PageStorageKey<String>('item'),
      reverse: true,
      itemCount: items.length,
      controller: this.scrollController,
      physics: const RangeMaintainingScrollPhysics(),
      padding: const EdgeInsets.symmetric(vertical: 20),
      itemBuilder: (BuildContext context, int index)=> items[index],
    );
  }

  List<Widget> getChatItems(String userSendbirdiId, ChatBloc chatBloc) {

    List<Widget> items = [];
    
    (chatBloc.state.isLoadingFile)
    ? items.add(const ChatLoadingFileMessage())
    : null;    
      
    for (BaseMessage message in this.messages.reversed) { 

      bool isMyMessage = (message.sender?.userId == userSendbirdiId);

      items.add(_Message(
        isMyMessage: isMyMessage,
        message: message,
      ));
    }
    
    items.add(const ChatInitialDate());

    return items;
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
    bool isFile = (this.message is FileMessage);
    String filePath = (isFile) ? (this.message as FileMessage).secureUrl! : '';

    return GestureDetector(
      child: Container(
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
                isFile: isFile,
                filePath: filePath,
                isMyMessage: this.isMyMessage,
                nickName: nickName, 
                message: message,
              )
            : Flexible(
                flex: 6,
                child: ChatMessageContent(
                  isFile: isFile,
                  filePath: filePath,
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
      ),
      onTap: ()=> Navigator.push(
        context, 
        MaterialPageRoute(builder: (BuildContext context)=> MediaViewerPage(url: filePath),
      )),
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


