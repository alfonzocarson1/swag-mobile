import 'package:flutter/material.dart';
import 'package:sendbird_sdk/sendbird_sdk.dart';
import 'package:swagapp/modules/common/assets/images.dart';
import 'package:swagapp/modules/common/utils/palette.dart';
import 'package:swagapp/modules/models/chat/chat_data.dart';
import 'package:swagapp/modules/pages/chat/chat_page.dart';

class ChatsContact extends StatelessWidget {

  final Member member;
  final String lastMessage;
  final ChatData chatData;

  const ChatsContact({
    super.key,
    required this.member,
    required this.lastMessage, 
    required this.chatData,
  });

  @override
  Widget build(BuildContext context) {
    
    return ListTile(            
      leading: Image.asset(
        AppImages.avatar,
        scale: 3,
      ),
      title: Text(
        this.member.nickname,
        style: Theme.of(context).textTheme.bodySmall!.copyWith(
          fontWeight: FontWeight.w300,
          fontSize: 20,
          color: Palette.current.white,
        ),
      ),
      subtitle: Text(
        this.lastMessage,
        maxLines: 1,
        style: Theme.of(context).textTheme.bodySmall!.copyWith(
          fontSize: 15,
          letterSpacing: 0.3,
          color: Palette.current.grey,
          overflow: TextOverflow.ellipsis
        ),
      ),
      onTap: ()=> Navigator.push(
        context, 
        MaterialPageRoute(
          builder: (BuildContext context)=> ChatPage(chatData: this.chatData),
        ),
      ),
    );
  }
}

