import 'package:flutter/material.dart';
import 'package:swagapp/generated/l10n.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swagapp/modules/common/assets/icons.dart';
import 'package:swagapp/modules/blocs/chat/chat_bloc.dart';
import 'package:swagapp/modules/common/utils/palette.dart'; 
import 'package:swagapp/modules/models/chat/chat_data.dart';
import 'package:swagapp/modules/common/ui/popup_swag_admin.dart';

class ChatPopupMenu extends StatelessWidget {

  final ChatData chatData;

  const ChatPopupMenu({super.key, 
  required this.chatData,
});

  @override
  Widget build(BuildContext context) {

    ChatBloc chatBloc = context.watch<ChatBloc>();

    return PopupMenuButton(
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
      itemBuilder: (_) => [
        PopupMenuItem(
          onTap: () async => await this.onTap(
            chatBloc: chatBloc, 
            context: context, 
            channeUrl: this.chatData.channel.channelUrl,
          ),
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
                style: const TextStyle(color: Colors.white),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Future<void> onTap({
    required ChatBloc chatBloc, 
    required BuildContext context, 
    required String channeUrl,
  }) async {

    await Future.delayed(const Duration(milliseconds: 0));

    await showDialog(
      context: context, 
      builder: (BuildContext context)=> PopupSwaggAdmin(channelUrl: channeUrl),
    );
  }
}
