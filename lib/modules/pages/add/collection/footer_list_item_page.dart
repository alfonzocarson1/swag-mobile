import 'package:flutter/material.dart';

import '../../../../generated/l10n.dart';
import '../../../common/ui/list_item_preview_rating_ui.dart';
import '../../../common/ui/rating_ui.dart';
import '../../../common/utils/palette.dart';
import '../../../data/shared_preferences/shared_preferences_service.dart';
import '../../../di/injector.dart';
import '../../../models/profile/profile_model.dart';

class FooterListItemPage extends StatefulWidget {
  FooterListItemPage({super.key, this.addList});

  bool? addList = false;

  @override
  State<FooterListItemPage> createState() => _FooterListItemPageState();
}

class _FooterListItemPageState extends State<FooterListItemPage> {
  ProfileModel profileData = getIt<PreferenceRepositoryService>().profileData();

  double rating = 4;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Expanded(
          flex: 1,
          child: Align(
            alignment: Alignment.centerLeft,
            child: Image.asset(
              "assets/images/Avatar.png",
              scale: 3,
            ),
          ),
        ),
        Expanded(
            flex: 8,
            child: Column(
              children: [
                Align(
                  alignment: Alignment.centerLeft,
                  child: Text(
                      widget.addList ?? false
                          ? '@${profileData.username.toUpperCase()}'
                          : S.of(context).verify_name,
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          fontWeight: FontWeight.w300,
                          fontSize: 14,
                          color: Palette.current.white)),
                ),
                // Align(
                //   alignment: Alignment.centerLeft,
                //   child: StarRatingListItemPreview(
                //     rating: rating,
                //     onRatingChanged: (rating) =>
                //         setState(() => this.rating = rating),
                //   ),
                // ),
              ],
            ))
      ],
    );
  }
}
