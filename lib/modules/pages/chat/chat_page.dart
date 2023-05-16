import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:swagapp/generated/l10n.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sendbird_sdk/sendbird_sdk.dart';
import 'package:swagapp/modules/blocs/chat/chat_bloc.dart';
import 'package:swagapp/modules/common/utils/palette.dart';
import 'package:swagapp/modules/models/chat/chat_data.dart';

import 'widgets/chat_input.dart';
import 'widgets/chat_messages.dart';

class ChatPage extends StatefulWidget {

  final ChatData chatData;

  const ChatPage({
    super.key, 
    required this.chatData, 
  });

  @override
  State<ChatPage> createState() => _ChatPageState();
}

class _ChatPageState extends State<ChatPage> with ChannelEventHandler {

  late ScrollController scrollController;
  late bool isTyping;

  @override
  void initState() {

    this.updateChatData();
    context.read<ChatBloc>().sendBirdSdk.addChannelEventHandler('identifier', this);

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

    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle.light,
        backgroundColor: Palette.current.blackAppbarBlackground,
        title: AppBarTitle(
          chatName: this.widget.chatData.channel.name!, 
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
      ),
      body: _Body(
        chatData: this.widget.chatData,
        scrollController: this.scrollController,
      ),
      backgroundColor: Palette.current.blackChatBlackground,
    );
  }

  @override
  void onTypingStatusUpdated(GroupChannel channel) {

    setState(()=> this.isTyping = channel.isTyping);
    super.onTypingStatusUpdated(channel);
  }

  @override
  void onMessageReceived(BaseChannel channel, BaseMessage message) async {

    context.read<ChatBloc>().receiveMessage(this.widget.chatData, message);
    context.read<ChatBloc>().updateChatReadStatus(this.widget.chatData);
    super.onMessageReceived(channel, message);
  }

  void updateChatData() {

    WidgetsBinding.instance.addPostFrameCallback((timeStamp) async { 
      await context.read<ChatBloc>().updateChatReadStatus(this.widget.chatData);
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

    return Column(
      children: <Widget> 
      [          
        Flexible(
          child: (this.chatData.messages.isNotEmpty) 
          ? ChatMessages(
              messages: this.chatData.messages, 
              scrollController: this.scrollController,
            )
          : Center(child: Text(S.current.chatNoMessages)),
        ),
        ChatChatInput(chatData: this.chatData),
        const SafeArea(child: SizedBox.shrink()),
      ],
    );
  }
}

class AppBarTitle extends StatelessWidget {

  final String chatName;
  final bool isTyping;

  const AppBarTitle({
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
            style: TextStyle(
              fontSize: 20,
              fontWeight: FontWeight.bold,
              color: Palette.current.white,
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
