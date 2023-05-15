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

class FooterListItemPage extends StatefulWidget {

  final bool showChatButton;

  const FooterListItemPage({
    super.key, 
    this.showChatButton = false ,
  });

  @override
  State<FooterListItemPage> createState() => _FooterListItemPageState();
}

class _FooterListItemPageState extends State<FooterListItemPage> {
  
  double rating = 4;

  @override
  Widget build(BuildContext context) {

    ChatBloc chatBloc = context.read<ChatBloc>();

    return Row(
      children: <Widget> 
      [
        Expanded(
          flex: 1,
          child: Align(
            alignment: Alignment.centerLeft,
            child: Image.asset(
              AppImages.avatar,
              scale: 3,
            ),
          ),
        ),
        Expanded(
          flex: 8,
          child: Column(
            children: <Widget> 
            [
              Align(
                alignment: Alignment.centerLeft,
                child: Text(S.of(context).verify_name,
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

