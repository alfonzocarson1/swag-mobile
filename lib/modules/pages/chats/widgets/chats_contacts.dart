import 'package:flutter/material.dart';
import 'package:swagapp/modules/common/assets/images.dart';
import 'package:swagapp/modules/common/utils/palette.dart';
import 'package:swagapp/modules/models/chat/chat_data.dart';
import 'package:swagapp/modules/pages/chat/chat_page.dart';

class ChatsContact extends StatelessWidget {

  final String lastMessage;
  final ChatData chatData;

  const ChatsContact({
    super.key,
    required this.lastMessage, 
    required this.chatData,
  });

  @override
  Widget build(BuildContext context) {

    int unreadMessages = this.chatData.channel.unreadMessageCount;
    bool hasUreadMessages = unreadMessages > 0;
    
    return ListTile(            
      leading: CircleAvatar(
        backgroundColor: (hasUreadMessages) 
        ? Palette.current.primaryNeonPink
        : Colors.transparent,
        maxRadius: 18,
        child: Image.asset(
          AppImages.avatar,
          scale: 3,
        ),
      ),
      title: Text(
        this.chatData.channel.name!,
        style: Theme.of(context).textTheme.bodySmall!.copyWith(
          fontWeight: (hasUreadMessages) ? FontWeight.w300 : FontWeight.w300,
          fontSize: 20,
          color: (hasUreadMessages) ? Colors.white : Palette.current.grey,
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

