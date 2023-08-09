import 'package:flutter/material.dart';
import 'package:swagapp/generated/l10n.dart';
import 'package:swagapp/modules/common/assets/icons.dart';
import 'package:swagapp/modules/common/utils/theme.dart';

import '../../../common/utils/palette.dart';

class EmptyChatPage extends StatelessWidget {
  const EmptyChatPage({super.key});

  @override
  Widget build(BuildContext context) {
    double aspectRatio = MediaQuery.of(context).size.aspectRatio;
    
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          SizedBox(
            height: aspectRatio * 100,
            width: aspectRatio * 100,
            child: Image.asset(AppIcons.chat, color:  Palette.current.darkGray,)),
          Container(
            alignment: Alignment.center,
            height: aspectRatio * 300,
            width:  aspectRatio * 500,
            child: Text(S.of(context).emptyChatsMessage.toUpperCase(),
            textAlign: TextAlign.center, 
            style: Theme.of(context).textTheme.headlineMedium?.copyWith(              
              fontFamily: "Knockout",
              fontSize: 50,
            letterSpacing: 0.54,
            fontWeight: FontWeight.w300,
            color: Palette.current.darkGray)
            ),
          )
        ],
      ),
    );
  }
}