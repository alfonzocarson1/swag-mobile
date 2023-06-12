import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swagapp/generated/l10n.dart';
import 'package:swagapp/modules/blocs/chat/chat_bloc.dart';
import 'package:swagapp/modules/common/utils/palette.dart';

import 'primary_button.dart';

class PopupSwaggAdmin extends StatelessWidget {

  final String channelUrl;

  const PopupSwaggAdmin({
    super.key, 
    required this.channelUrl,
  });

  @override
  Widget build(BuildContext context) {
    
    return Center(
      child: Dialog(
        insetPadding: const EdgeInsets.all(40),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
        child: Container(
          padding: const EdgeInsets.all(40),
          color: Palette.current.blackSmoke,
          child: Column(
            mainAxisSize: MainAxisSize.min,
            children: [
        
              Text(
                S.of(context).chatAddSwagAdmin,
                textAlign: TextAlign.left,
                style: Theme.of(context).textTheme.displayMedium!
                .copyWith(
                  letterSpacing: 1.2,
                  fontFamily: "KnockoutCustom",
                  fontSize: 44,
                  fontWeight: FontWeight.w300,
                  color: Palette.current.primaryNeonGreen,
                ),
              ),
              const SizedBox(height: 20),
              Text(
                S.of(context).chatAddSwagAdminContent,
                style: Theme.of(context).textTheme.bodySmall!
                .copyWith(
                  fontSize: 15,
                  letterSpacing: 0.3,
                  color: Palette.current.primaryWhiteSmoke,
                ),
              ),
              const SizedBox(height: 20),
              PrimaryButton(
                title: S.current.chatAddSwagAdminButton.toUpperCase(),
                onPressed: ()=> this.onTapAddSwaggButton(context),
                type: PrimaryButtonType.green,
              ),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> onTapAddSwaggButton(BuildContext context) async {

    await context.read<ChatBloc>().bringAdminToChat(this.channelUrl);
    Navigator.pop(context);
  }
}

