import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:swagapp/generated/l10n.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swagapp/modules/blocs/chat/chat_bloc.dart';
import 'package:swagapp/modules/common/utils/palette.dart';
import 'package:swagapp/modules/common/utils/sendbird_utils.dart';
import 'package:swagapp/modules/common/utils/utils.dart';
import 'package:swagapp/modules/models/chat/chat_data.dart';
import 'package:swagapp/modules/models/chat/sendbird_channel_data.dart';

import '../../common/utils/sendbird_utils.dart';
import 'widgets/chat_input.dart';
import 'widgets/chat_messages.dart';
import 'widgets/chat_popup_menu.dart';

class ChatPage extends StatefulWidget {

  final ChatData? chatData;
  final String userName;
  final String sellerNickName;

  const ChatPage({
    super.key, 
    this.chatData,
    required this.userName,
    required this.sellerNickName   
  });

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> {

  late ScrollController scrollController;
  late bool isTyping;

  @override
  void initState() {

    this.updateChatData();

    this.isTyping = false;
    this.scrollController = ScrollController();
    super.initState();
  }

  @override
  void dispose() {

    this.scrollController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    SendBirdChannelData channelData = this.getChannelData();

    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle.light,
        backgroundColor: Palette.current.blackAppbarBlackground,
        title: _AppBarTitle(
          chatName: '${widget.userName.capitalize()}, ${widget.sellerNickName.capitalize()} and SWAG', 
          isTyping: isTyping,
        ),
        centerTitle: false,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back,
            color: Palette.current.primaryNeonGreen,
            size: 24,
          ),
          onPressed: ()=> Navigator.pop(context),
        ),
        actions: <Widget> [ ChatPopupMenu(chatData: this.widget.chatData!) ],
      ),
      body: _Body(
        chatData: this.widget.chatData!,
        scrollController: this.scrollController,
      ),
      backgroundColor: Palette.current.blackChatBlackground,
    );
  }

  SendBirdChannelData  getChannelData() {

    Map<String, dynamic> data  = SendBirdUtils.getFormatedData(this.widget.chatData!.channel.data!);
    return SendBirdChannelData.fromJson(data);
  } 

  void updateChatData() {

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async { 
      await context.read<ChatBloc>().updateChatReadStatus(this.widget.chatData!);
    });
  }
}

class _Body extends StatelessWidget {

  final ChatData chatData;
  final ScrollController scrollController;

  const _Body({
    super.key, 
    required this.chatData, 
    required this.scrollController, 
  });

  @override
  Widget build(BuildContext context) {

    context.watch<ChatBloc>();

    return Column(
      children: <Widget> 
      [          
        Flexible(
          child: (this.chatData.messages.isNotEmpty) 
          ? ChatMessages(
              chatData: this.chatData,
              scrollController: this.scrollController,
            )
          : Center(child: Text(S.current.chatNoMessages)),
        ),
        ChatChatInput(
          chatData: this.chatData,
          scrollController: this.scrollController,
        ),
        const SafeArea(child: SizedBox.shrink()),
      ],
    );
  }
}

class _AppBarTitle extends StatelessWidget {

  final String chatName;
  final bool isTyping;

  const _AppBarTitle({
    super.key,
    required this.chatName,
    required this.isTyping,
  });

  @override
  Widget build(BuildContext context) {

    return SizedBox(
      height: 45,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisAlignment: MainAxisAlignment.center ,
        children: <Widget>
        [
          Text(
            this.chatName,
            style: Theme.of(context).textTheme.bodySmall!.copyWith(
              fontSize: 20,
              color: Palette.current.white,
              fontWeight: FontWeight.normal,
            ),
          ),
          (this.isTyping) 
          ? Text(
              S.current.chatTyping,
              style: const TextStyle(
                color: Colors.white,
                fontSize: 12,
              ),
            )
          : const SizedBox.shrink(),
        ],
      ),
    );
  }
}
