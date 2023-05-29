import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:sendbird_sdk/sendbird_sdk.dart';
import 'package:swagapp/generated/l10n.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swagapp/modules/blocs/chat/chat_bloc.dart';
import 'package:swagapp/modules/common/utils/palette.dart';
import 'package:swagapp/modules/models/chat/chat_data.dart';

import 'widgets/chats_contacts.dart';

class ChatsPage extends StatefulWidget {

  const ChatsPage({super.key});

  @override
  State<ChatsPage> createState() => _ChatsPageState();
}

class _ChatsPageState extends State<ChatsPage> with ChannelEventHandler {

  @override
  void initState() {
    
    context.read<ChatBloc>().sendBirdSdk.addChannelEventHandler('chats', this);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    ChatBloc chatBloc = context.watch<ChatBloc>();

    return Scaffold(
      appBar: AppBar(
        title: const _AppBarTitle(),
        systemOverlayStyle: SystemUiOverlayStyle.light,
        backgroundColor: Colors.transparent,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Palette.current.primaryNeonGreen,
            size: 24,
          ),
          onPressed: ()=> Navigator.pop(context),
        ),
      ),
      backgroundColor: Palette.current.blackAppbarBlackground,
      body: ListView.separated(
        padding: const EdgeInsets.symmetric(vertical: 20),
        physics: const BouncingScrollPhysics(),
        itemCount: chatBloc.state.chats.length,
        itemBuilder: (BuildContext context, int index) {

          ChatData chatData = chatBloc.state.chats[index];
          String lastMessage = (chatData.messages.isNotEmpty) 
          ? chatData.messages.last.message
          : S.current.chatNoMessages;
          
          return ChatsContact(
            chatData: chatData,
            lastMessage: lastMessage,
          );
        }, 
        separatorBuilder: (BuildContext context, int index)=> Divider(color: Colors.grey[800]),
      ),
    );
  }

  @override
  void onMessageReceived(BaseChannel channel, BaseMessage message) async {

    ChatBloc chatBloc = context.read<ChatBloc>();
    ChatData chatData = chatBloc.state.chats.firstWhere((ChatData chat){
      return chat.channel.channelUrl == channel.channelUrl;
    });

    context.read<ChatBloc>().receiveMessage(chatData, message);
    super.onMessageReceived(channel, message);
  }
}

class _AppBarTitle extends StatelessWidget {

  const _AppBarTitle({super.key});

  @override
  Widget build(BuildContext context) {

    ChatBloc chatBloc = context.watch<ChatBloc>();
    int unreadMessages = this.getUreadMessagesNumber(chatBloc);

    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: <Widget> 
      [
        Text(
          S.current.chatsHeader.toUpperCase(),
          style: TextStyle(
            fontSize: 30,
            fontFamily: "KnockoutCustom",
            fontWeight: FontWeight.w300,
            letterSpacing: 1.1,
            color: Palette.current.primaryNeonGreen,
          ),
        ),
        const Spacer(),
        (unreadMessages > 0) 
        ? Text(
          S.current.chatsUnreadMessages(unreadMessages),
          style: TextStyle(
            fontSize: 18,
            fontWeight: FontWeight.w300,
            color: Palette.current.primaryNeonPink,
          ),
        )
        : const SizedBox.shrink(),
      ],
    );
  }

  int getUreadMessagesNumber(ChatBloc chatBloc) {

    int unreadMessages = 0;

    for (ChatData chatData in chatBloc.state.chats) { 

      int unreadMessagesCount = chatData.channel.unreadMessageCount;
      bool hasUnreadMessages = unreadMessagesCount > 0;

      unreadMessages += (hasUnreadMessages) ? 1 : 0; 
    }

    return unreadMessages;
  }
}

