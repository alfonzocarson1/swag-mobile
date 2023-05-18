import 'package:flutter/material.dart';
import 'package:sendbird_sdk/sendbird_sdk.dart';
import 'package:swagapp/modules/common/utils/palette.dart';
import 'package:swagapp/modules/pages/chat/widgets/chat_message_image.dart';

class ChatMessageContent extends StatelessWidget {

  final String nickName;
  final BaseMessage message;
  final bool isMyMessage;
  final bool isFile;
  final String filePath;

  const ChatMessageContent({
    super.key,
    required this.nickName,
    required this.message, 
    required this.isMyMessage, 
    this.isFile = false, 
    this.filePath = '',
  });

  @override
  Widget build(BuildContext context) {

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>
      [
        (!this.isMyMessage) 
        ? Container(
            margin: const EdgeInsets.symmetric(horizontal: 10),
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Text(
              nickName,
              style: TextStyle(
                fontSize: 14,              
                fontWeight: FontWeight.lerp(FontWeight.w300, FontWeight.w400, 0.5),
                color: Palette.current.grey,
              ),
            ),
          )
        : const SizedBox.shrink(),
        Container(
          width: (this.isMyMessage) ? null : double.infinity,
          decoration: BoxDecoration(
            color: (!this.isMyMessage) 
            ? Palette.current.greyMessage
            : Palette.current.primaryNeonGreen,
            borderRadius: BorderRadius.circular(20),
          ),
          margin: const EdgeInsets.symmetric(vertical: 5, horizontal: 10),
          padding: const EdgeInsets.symmetric(vertical: 10, horizontal: 10),
          child: (this.isFile) 
          ? ChatMessageImage(url: this.filePath)
          : Text(
            this.message.message,
            style: TextStyle(
              fontSize: 16, 
              color: (!this.isMyMessage) ? Colors.white : Colors.black,
            ),
          ),
        ),
      ],
    );
  }
}

