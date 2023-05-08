import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swagapp/modules/blocs/chat/chat_bloc.dart';
import 'package:swagapp/modules/common/assets/icons.dart';
import 'package:swagapp/modules/common/assets/images.dart';
import 'package:swagapp/modules/common/ui/custom_outline_button.dart';
import 'package:swagapp/modules/common/ui/loading.dart';
import 'package:swagapp/modules/models/chat/chat_data.dart';
import 'package:swagapp/modules/pages/chat/chat_page.dart';

import '../../../../generated/l10n.dart';
import '../../../common/ui/list_item_preview_rating_ui.dart';
import '../../../common/utils/palette.dart';
import '../../../common/utils/utils.dart';
import '../../../data/shared_preferences/shared_preferences_service.dart';
import '../../../di/injector.dart';
import '../../../models/profile/profile_model.dart';

class FooterListItemPage extends StatefulWidget {

  final bool? addList;
  final bool showChatButton;

  const FooterListItemPage({
    super.key, 
    this.addList = false,
    this.showChatButton = false ,
  });

  @override
  State<FooterListItemPage> createState() => _FooterListItemPageState();
}

class _FooterListItemPageState extends State<FooterListItemPage> {
  
  ProfileModel profileData = getIt<PreferenceRepositoryService>().profileData();
  double rating = 4;

  @override
  Widget build(BuildContext context) {

    String? profileURL;
    String? defaultImage;

    ProfileModel profileData =
        getIt<PreferenceRepositoryService>().profileData();

    if (profileData.useAvatar != 'CUSTOM') {
      var data = imagesList
          .where((avatar) => (avatar["id"].contains(profileData.useAvatar)));

      defaultImage = data.first['url'];
    } else {
      profileURL = profileData.avatarUrl ??
          'https://firebasestorage.googleapis.com/v0/b/platzitrips-c4e10.appspot.com/o/Franklin.png?alt=media&token=c1073f88-74c2-44c8-a287-fbe0caebf878';
    }

    ChatBloc chatBloc = context.read<ChatBloc>();

    return Row(
      children: <Widget> 
      [
        Expanded(
          flex: 1,
          child: Align(
            alignment: Alignment.centerLeft,
            child: SizedBox(
              height: 40,
              width: 40,
              child: widget.addList ?? false
                  ? CircleAvatar(
                      backgroundColor: Colors.transparent,
                      backgroundImage:
                          const AssetImage(AppImages.avatar),
                      foregroundImage: profileURL != null
                          ? NetworkImage('$profileURL')
                          : NetworkImage('$defaultImage'),
                      radius: 75,
                    )
                  : Image.asset(
                      AppImages.avatar,
                      scale: 3,
                    ),
            ),
          ),
        ),
        const SizedBox(
          width: 10.0,
        ),
        Expanded(
          flex: 8,
          child: Column(
            children: <Widget> 
            [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(
                  this.widget.addList ?? false
                  ? '@${profileData.username.toUpperCase()}'
                  : S.of(context).verify_name,
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    fontWeight: FontWeight.w300,
                    fontSize: 14,
                    color: Palette.current.white,
                  ),
                ),
              ),
              Align(
                alignment: Alignment.centerLeft,
                child: StarRatingListItemPreview(
                  rating: rating,
                  onRatingChanged: (rating) => setState(() => this.rating = rating),
                ),
              ),
            ],
          ),
        ),
        const Spacer(),
        CustomOutlineButton(
          padding: 20,
          iconPath: AppIcons.chat,
          text: S.current.chatChat.toUpperCase(), 
          onTap: ()=> this.onTapChat(chatBloc), 
        )
      ],
    );
  }

  Future<void> onTapChat(ChatBloc chatBloc) async {

    Loading.show(context);

    await Future.delayed(const Duration(milliseconds: 500));
    ChatData? chatData = await chatBloc.startNewChat('listingId');

    Loading.hide(context);

    await Navigator.of(context, rootNavigator: true).push(
      MaterialPageRoute(builder: (BuildContext context)=> ChatPage(chatData: chatData!,)),
    );
  }
}

