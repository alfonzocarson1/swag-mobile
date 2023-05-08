import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sendbird_sdk/sendbird_sdk.dart';
import 'package:swagapp/generated/l10n.dart';
import 'package:swagapp/modules/blocs/chat/chat_bloc.dart';
import 'package:swagapp/modules/common/assets/icons.dart';
import 'package:swagapp/modules/common/utils/palette.dart';
import 'package:swagapp/modules/models/chat/chat_data.dart';

class ChatChatInput extends StatelessWidget {

  final ChatData chatData;
  
  const ChatChatInput({
    super.key, 
    required this.chatData, 
  });

  @override
  Widget build(BuildContext context) {    

    double height = 60;

    return Container(
      height: height,
      alignment: Alignment.topCenter,
      margin: const EdgeInsets.only(left: 8, right: 8, top: 5),
      child: Row(
        children: <Widget> 
        [
          GestureDetector(
            child: const Image(
              width: 30,
              image: AssetImage(AppIcons.add),
            ),
          ),
          const SizedBox(width: 15),
          Flexible(
            child: _Input(
              chatData: this.chatData,
            ),
          ),
        ],
      ),
    );
  }
}

class _Input extends StatefulWidget {

  final ChatData chatData;

  const _Input({
    super.key,
    required this.chatData,
  });

  @override
  State<_Input> createState() => _InputState();
}

class _InputState extends State<_Input> {

  late FocusNode focusNode;
  late TextEditingController textEditingController;

  @override
  void initState() {

    this.focusNode = FocusNode();
    this.textEditingController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {

    this.focusNode.dispose();
    this.textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    return Container(
      padding: const  EdgeInsets.symmetric(horizontal: 20),
      decoration: BoxDecoration(
        color: Palette.current.greyMessage,
        borderRadius: BorderRadius.circular(100),
      ),
      child: Row(
        children: <Widget> 
        [
          Flexible(
            child: TextField(      
              maxLines: 3,
              minLines: 1,
              keyboardType: TextInputType.multiline,
              controller: this.textEditingController,
              focusNode: this.focusNode,                      
              style: const TextStyle(
                fontSize: 14,
                color: Colors.white,
              ),
              decoration: InputDecoration(
                hintText: S.current.chatInputHintText,
                contentPadding: const EdgeInsets.symmetric(vertical: 10),
                border: InputBorder.none,
                hintStyle: TextStyle(
                  fontSize: 16,
                  color: Palette.current.grey,
                ),
              ),  
              onSubmitted: (String value)=> this.focusNode.requestFocus(),
            ),
          ),
          _SendButton(
            chatData: this.widget.chatData,
            textEditingController: this.textEditingController,
          )
        ],
      ),
    );
  }
}

class _SendButton extends StatefulWidget {

  final ChatData chatData;
  final TextEditingController textEditingController;

  const _SendButton({
    super.key, 
    required this.textEditingController,
    required this.chatData, 
  });

  @override
  State<_SendButton> createState() => _SendButtonState();
}

class _SendButtonState extends State<_SendButton> {
  
  late String iconPath;

  @override
  void initState() {
    
    this.iconPath = AppIcons.sendDisabled; 
    this.widget.textEditingController.addListener(()=> this.updateIcon());
    super.initState();
  }

  @override
  void dispose() {
    this.widget.textEditingController.removeListener(()=> this.updateIcon());
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    ChatBloc chatBloc = context.watch<ChatBloc>();

    return GestureDetector(
      child: Image(
        width: 25,
        image: AssetImage(this.iconPath),
      ),
      onTap: ()=> this.sendMessage(
        textMessage: this.widget.textEditingController.text, 
        chatBloc: chatBloc,
      ),
    );
  }

  Future<void> sendMessage({
    required String textMessage, 
    required ChatBloc chatBloc,
  }) async {

    if(textMessage.isNotEmpty) {
            
      this.widget.textEditingController.clear();

      await chatBloc.sendMessage(
        message: textMessage.trim(),
        chatData: this.widget.chatData, 
      );    

      // await this.animateScrollToEnd();
    }


    // UserMessage cosa = UserMessage(
    //   translations: {}, 
    //   messageId: 0, 
    //   message: 'Mensage de prueba', 
    //   channelUrl: '', 
    //   channelType: ChannelType.group,
    // );

    // this.widget.chatData.messages.add(cosa);
    // setState(() {});
  }
  
  void updateIcon() {

    (this.widget.textEditingController.text.isNotEmpty) 
    ? setState(()=> this.iconPath = AppIcons.sendEnabled)
    : setState(()=> this.iconPath = AppIcons.sendDisabled);
  }
}
