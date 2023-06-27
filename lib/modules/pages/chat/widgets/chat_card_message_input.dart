import 'package:flutter/material.dart';
import 'package:swagapp/generated/l10n.dart';
import 'package:swagapp/modules/common/utils/palette.dart';

class ChatCardMessageInput extends StatefulWidget {

  final Function(String value) onSaved;

  const ChatCardMessageInput({
    super.key, 
    required this.onSaved,
  });

  @override
  State<ChatCardMessageInput> createState() => _ChatCardMessageInputState();
}

class _ChatCardMessageInputState extends State<ChatCardMessageInput> {

  late TextEditingController textController;

  @override
  void initState() {
    
    this.textController = TextEditingController();
    super.initState();
  }

  @override
  void dispose() {
    
    this.textController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {

    InputBorder border = OutlineInputBorder(
      borderRadius: BorderRadius.circular(8),
      borderSide: BorderSide(color: Palette.current.greyMessage),
    );

    return TextFormField(
      controller: this.textController,
      textAlign: TextAlign.center,
      style: const TextStyle(color: Colors.white),
      decoration: InputDecoration(
        hintStyle: Theme.of(context).textTheme.bodyMedium!.copyWith(
          color: Palette.current.grey,
        ),
        hintText: S.current.chatCardShippingInformationInputHint,
        contentPadding: EdgeInsets.zero,
        border: border,
        errorBorder: border,
        focusedBorder: border,
        enabledBorder: border,
      ),
      onChanged: (String? value)=> this.widget.onSaved(value ?? ''),
    );
  }
}

