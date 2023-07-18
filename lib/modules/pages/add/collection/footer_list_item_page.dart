import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:sendbird_sdk/core/channel/group/group_channel.dart';
import 'package:sendbird_sdk/core/models/member.dart';
import 'package:swagapp/modules/blocs/chat/chat_bloc.dart';
import 'package:swagapp/modules/common/assets/icons.dart';
import 'package:swagapp/modules/common/ui/custom_outline_button.dart';
import 'package:swagapp/modules/common/ui/loading.dart';
import 'package:swagapp/modules/common/ui/user_avatar.dart';
import 'package:swagapp/modules/common/utils/stateful_wrapper.dart';
import 'package:swagapp/modules/cubits/public_profile/public_profile_cubit.dart';
import 'package:swagapp/modules/models/chat/chat_data.dart';
import 'package:swagapp/modules/models/profile/public_profile.dart';
import 'package:swagapp/modules/pages/chat/chat_page.dart';
import 'package:swagapp/modules/pages/public_profile/public_profile_page.dart';

import '../../../../generated/l10n.dart';
import '../../../common/utils/palette.dart';
import '../../../common/utils/utils.dart';
import '../../../constants/constants.dart';
import '../../../data/shared_preferences/shared_preferences_service.dart';
import '../../../di/injector.dart';
import '../../../models/profile/profile_model.dart';

class FooterListItemPage extends StatelessWidget {
  final bool showChatButton;
  final String productItemId;
  final String profileId;
  final bool useCurrentUser;
  FooterListItemPage({
    super.key,
    required this.showChatButton,
    required this.productItemId,
    required this.profileId,
    this.useCurrentUser = false,
  });
  
  @override
  Widget build(BuildContext context) {
    return StatefulWrapper(
      onInit: (context) {
        context.read<PublicProfileCubit>().loadProfile(
              profileId,
              prefillFromCurrentUser: useCurrentUser,
            );
      },
      child: BlocConsumer<PublicProfileCubit, PublicProfileState>(
        listener: (context, state) {
          if (state.isLoadingWithoutPreviousData && !Loading.isVisible()) {
            Loading.show(context);
          } else if (!state.isLoading && Loading.isVisible()) {
            Loading.hide(context);
          }
        },
        builder: (context, state) {
          return state.when(
            error: (e, previousData) => Center(
              child: Text(
                "Error loading profile: $e",
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      color: Palette.current.primaryNeonPink,
                    ),
              ),
            ),
            loading: (previousData) => previousData == null
                ? Container()
                : buildBody(context, previousData),
            loaded: (data) => buildBody(context, data),
          );
        },
      ),
    );
  }

  void _navigateToPublicProfile(BuildContext context) {
    if (useCurrentUser) return;
    Navigator.of(context, rootNavigator: true)
        .push(PublicProfilePage.route(profileId));
  }

  Row buildBody(BuildContext context, PublicProfile profile) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: GestureDetector(
            onTap: () => _navigateToPublicProfile(context),
            child: Align(
              alignment: Alignment.centerLeft,
              child: SizedBox(
                height: 40,
                width: 40,
                child: UserAvatar(
                  useAvatar: profile.useAvatar,
                  avatarUrl: profile.avatarUrl,
                ),
              ),
            ),
          ),
        ),
        const SizedBox(
          width: 10.0,
        ),
        Expanded(
          flex: 8,
          child: Wrap(
            spacing: 12,
            alignment: WrapAlignment.start,
            crossAxisAlignment: WrapCrossAlignment.center,
            children: [
              GestureDetector(
                onTap: () => _navigateToPublicProfile(context),
                child: Text(
                  (profile.username ?? "NULL").toUpperCase(),
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontFamily: "KnockoutCustom",
                        fontWeight: FontWeight.w300,
                        letterSpacing: 0.43,
                        fontSize: 24,
                        color: Palette.current.primaryWhiteSmoke,
                      ),
                ),
              ),
              ...buildVerifiedAndRatingWidgets(context, profile),
            ],
          ),
        ),
        const Spacer(),
        showChatButton
            ? CustomOutlineButton(
                padding: 20,
                iconPath: AppIcons.chat,
                text: S.current.chatChat.toUpperCase(),
                onTap: () => this.onTapChat(context),
              )
            : const SizedBox.shrink(),
      ],
    );
  }

  Iterable<Widget> buildVerifiedAndRatingWidgets(
      BuildContext context, PublicProfile profile) {
    final widgets = <Widget>[];

    if (profile.kycverified == true) {
      widgets.add(Image.asset(
        "assets/icons/checkmark.png",
        width: 15,
        height: 15,
      ));
    }

    if ((profile.listingsRating ?? 0) >= 1) {
      final numberFormat = NumberFormat.decimalPattern();
      final ratingString =
          numberFormat.format(profile.listingsRating?.toInt() ?? 0);
      widgets.add(Row(
        mainAxisSize: MainAxisSize.min,
        children: [
          ImageIcon(
            const AssetImage("assets/icons/thumbs-up.png"),
            size: 20,
            color: Palette.current.primaryNeonGreen,
          ),
          const SizedBox(width: 6),
          Text(
            ratingString,
            style: Theme.of(context).textTheme.bodySmall!.copyWith(
                fontFamily: "KnockoutCustom",
                fontSize: 16,
                color: Palette.current.primaryNeonGreen,
                fontWeight: FontWeight.w300,
                letterSpacing: 0.3),
          ),
        ],
      ));
    }

    return widgets.separatedBy(() => Container(
          decoration: BoxDecoration(
            shape: BoxShape.circle,
            color: Palette.current.primaryWhiteSmoke,
          ),
          width: 4,
          height: 4,
        ));
  }

  Future<void> onTapChat(BuildContext context) async {
    final chatBloc = context.read<ChatBloc>();
    final chatList = chatBloc.state.chats;
    debugPrint(chatList.toString());
    late ChatData chatData;
    final ProfileModel currentProfileData =
        getIt<PreferenceRepositoryService>().profileData();
    try {
      Loading.show(context);
      await Future.delayed(const Duration(milliseconds: 500));

      ChatData existingChat =
          isUserInAnyChannel(currentProfileData.username, chatList);

      if (existingChat.messages.isNotEmpty) {
        debugPrint("existe canal");
        chatData = existingChat;
      } else {
        chatData = await chatBloc.startNewChatPeerToPeer(this.productItemId);
        //TODO fix product name '
      }

      Loading.hide(context);

      await Navigator.of(context, rootNavigator: true).push(
        MaterialPageRoute(
            builder: (BuildContext context) => ChatPage(chatData: chatData)),
      );
    } catch (e) {
      Loading.hide(context);
    }
  }

  ChatData isUserInAnyChannel(String userId, List<ChatData> chatList) {
    String channelUrl = "";
    late ChatData existingChatData;
    for (var chatData in chatList) {
      for (var member in chatData.channel.members) {
        try {
          String formattedData = chatData.channel.data!.replaceAll("'", "\"");
          Map<String, dynamic> dataMap = jsonDecode(formattedData);
          for (var member in chatData.channel.members) {
            if (member.nickname == userId &&
                dataMap['productItemId'] == this.productItemId) {
              channelUrl = chatData.channel.channelUrl;
              existingChatData = chatData;
              return chatData;
            }
          }
        } catch (e) {
          print("Error parsing channel data: $e");
        }
      }
    }
    return ChatData(messages: [], channel: GroupChannel(channelUrl: ""));
  }
}
