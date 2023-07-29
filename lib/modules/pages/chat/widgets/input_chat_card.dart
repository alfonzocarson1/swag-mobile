import 'package:flutter/material.dart';

import '../../../../generated/l10n.dart';
import '../../../common/utils/palette.dart';

class InputChatCard extends StatefulWidget {
  const InputChatCard({super.key});

  @override
  State<InputChatCard> createState() => _InputChatCardState();
}

class _InputChatCardState extends State<InputChatCard> {
  
  late TextEditingController textController;
  String trackingCode= "";

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

    return Column(
      children: [
       const Text("test card"),
       const SizedBox(height: 50,),

        TextFormField(
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
          onChanged: (String value){
            setState(() {
              trackingCode = value;
            });
          },
        ),
      ],
    );
  }
}