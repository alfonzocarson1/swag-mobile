import 'package:dash_chat_2/dash_chat_2.dart';
import 'package:flutter/material.dart';
import 'package:swagapp/modules/common/utils/sendbird_utils.dart';

import '../../../common/utils/palette.dart';
import '../../../constants/constants.dart';
import '../../../models/chat/message_data.dart';

class CustomChatMessage extends StatelessWidget {
  const CustomChatMessage({
    super.key,
    required this.formattedTime,
    required this.context,
    required  this.message,
    required this.isAfterDateSeparator, 
    required this.isBeforeDateSeparator, 
    required  this.user,
    this.messageData
  });

  final String formattedTime;
  final BuildContext context;
    final ChatMessage message;
    final bool  isAfterDateSeparator; 
    final bool isBeforeDateSeparator; 
    final ChatUser user;
    final MessageData? messageData;

  @override
  Widget build(BuildContext context) {

     String? avatarImageUrl = message.user.profileImage; 
      if(avatarImageUrl == null || avatarImageUrl.isEmpty){
        avatarImageUrl = defaultAvatarUrl;        
      }
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Column(
        children: [
    //   (isAfterDateSeparator)? Padding(
    //   padding: const EdgeInsets.all(8.0),
    //   child: Text(
    //     "hoy",
    //     style: TextStyle(color: Colors.white),
    //   ),
    // ):const SizedBox.shrink(),
          Row(
            mainAxisAlignment: user.id == message.user.id
                ? MainAxisAlignment.end
                : MainAxisAlignment.start,
            children: [
            (user.id != message.user.id) ? CircleAvatar(
                backgroundImage: NetworkImage(avatarImageUrl ?? ""),
              ):const SizedBox.shrink(),
              const SizedBox(width: 12),
              (user.id == message.user.id) ?  Row(
                children: [
                  Text(
          formattedTime, // Replace this with actual time of message
          style: TextStyle(color: Colors.grey, fontSize: 11),
    ),
    const SizedBox(width: 12),
                ],
              ):const SizedBox.shrink(),
              ConstrainedBox(
                constraints: BoxConstraints(
            maxWidth: MediaQuery.of(context).size.width * 0.6, // Max width is 70% of screen width
          ),
                child: Container(                
                 // width: 150,
                        padding:const  EdgeInsets.all(10), // Padding for the inner text
                        decoration: BoxDecoration(
                      color: (user.id != message.user.id) ? Palette.current.greyMessage : Palette.current.primaryNeonGreen, // Background color of the message
                      borderRadius: BorderRadius.circular(12), // Rounded corners
                        ),
                        child: Text(
                      (message.user.firstName == swagBotNickName && messageData !=null) 
                      ? SendBirdUtils.getMessageText(messageData!) 
                      : message.text ,
                      style: TextStyle(color:(user.id != message.user.id) ? Palette.current.primaryWhiteSmoke: Palette.current.primaryNero), // Text color
                        ),
                      ),
              ),
              const SizedBox(width: 8), // Add some space between message and time
     (user.id != message.user.id) ? Text(
          formattedTime, // Replace this with actual time of message
          style: const TextStyle(color: Colors.grey, fontSize: 11),
    ):const SizedBox.shrink(),
            ],
          ),
        ],
      ),
    );
  }
}
