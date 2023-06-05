import 'package:flutter/material.dart';
import 'package:swagapp/generated/l10n.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swagapp/modules/blocs/chat/chat_bloc.dart';
import 'package:swagapp/modules/common/assets/icons.dart';
import 'package:swagapp/modules/common/utils/palette.dart'; 

class ChatPopupMenu extends StatelessWidget {

  const ChatPopupMenu({super.key});

  @override
  Widget build(BuildContext context) {

    ChatBloc chatBloc = context.watch<ChatBloc>();

    return PopupMenuButton(
      onSelected: (_) async => await chatBloc.bringAdminToChat(),
      color: Colors.black,
      padding: const EdgeInsets.only(right: 10),
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.all(Radius.circular(10.0)),
      ),
      icon: Icon(
        Icons.more_horiz,
        size: 30,
        color: Palette.current.primaryNeonGreen,
      ),
      position: PopupMenuPosition.under,
      itemBuilder: (BuildContext context) => [
        PopupMenuItem(
          padding: EdgeInsets.zero,
          child: Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget> 
            [
              const Image(
                width: 25,
                image: AssetImage(AppIcons.admin),
              ),
              const SizedBox(width: 10),
              Text(
                S.current.chatSwaggAdmin,
                style: TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Future<void> onTap(ChatBloc chatBloc) async {

    await chatBloc.bringAdminToChat();
  }
}

