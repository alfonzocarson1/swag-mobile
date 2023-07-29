import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sendbird_chat_sdk/sendbird_chat_sdk.dart';
import 'package:swagapp/modules/cubits/chat/chat_cubit.dart';

import '../../../../generated/l10n.dart';
import '../../../common/utils/palette.dart';


class AppBarTitle extends StatefulWidget {
  const AppBarTitle({super.key});

  @override
  State<AppBarTitle> createState() => _AppBarTitleState();
}

class _AppBarTitleState extends State<AppBarTitle> {
  int unreadMessageCount = 0;

  @override
  void initState() {
    super.initState();
  }

  getUnreadMessageCount(List<GroupChannel> channels ) async {
    unreadMessageCount = 0;
    for (GroupChannel channel in channels) {
      print(
          'Unread message count for ${channel.name}: ${channel.unreadMessageCount}');
      unreadMessageCount += channel.unreadMessageCount;
      setState(() {});
    }
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<ChatCubit, ChatState>(
      listener: (context, state) {
        state.maybeWhen(
          loadedChatChannels: (channels) {
            getUnreadMessageCount(channels);
          },
          orElse: (){});
      },
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: <Widget>[
          Text(
            S.current.chatsHeader.toUpperCase(),
            style: TextStyle(
              fontSize: 30,
              fontFamily: "KnockoutCustom",
              fontWeight: FontWeight.w300,
              letterSpacing: 1.1,
              color: Palette.current.primaryNeonGreen,
            ),
          ),
          const Spacer(),
          (unreadMessageCount > 0)
              ? Text(
                  S.current.chatsUnreadMessages(unreadMessageCount),
                  style: TextStyle(
                    fontSize: 18,
                    fontWeight: FontWeight.w300,
                    color: Palette.current.primaryNeonPink,
                  ),
                )
              : const SizedBox.shrink(),
        ],
      ),
    );
  }
}
