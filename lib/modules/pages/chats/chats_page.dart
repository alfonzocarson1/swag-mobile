import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sendbird_sdk/sendbird_sdk.dart';
import 'package:swagapp/modules/blocs/chat/chat_bloc.dart';
import 'package:swagapp/modules/common/utils/palette.dart';
import 'package:swagapp/modules/models/chat/chat_data.dart';

import 'widgets/chats_contacts.dart';

class ChatsPage extends StatelessWidget {

  const ChatsPage({super.key});

  @override
  Widget build(BuildContext context) {

    ChatBloc chatBloc = context.watch<ChatBloc>();

    return Scaffold(
      appBar: AppBar(
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

          String mySendbirdUserId = chatBloc.state.myUser!.userId;
          ChatData chatData = chatBloc.state.chats[index];
          Member member = chatData.channel.members.firstWhere((Member member) => member.userId != mySendbirdUserId);
          String lastMessage = chatData.messages.last.message;
          
          return ChatsContact(
            member: member, 
            chatData: chatData,
            lastMessage: lastMessage,
          );
        }, 
        separatorBuilder: (BuildContext context, int index)=> const Divider(color: Colors.grey,),
      ),
    );
  }
}

