import 'package:flutter/material.dart';

import '../../../../generated/l10n.dart';
import '../../../common/ui/list_item_preview_rating_ui.dart';
import '../../../common/ui/rating_ui.dart';
import '../../../common/utils/palette.dart';

class FooterListItemPage extends StatefulWidget {
  const FooterListItemPage({super.key});

  @override
  State<FooterListItemPage> createState() => _FooterListItemPageState();
}

class _FooterListItemPageState extends State<FooterListItemPage> {
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
                  child: Text(S.of(context).verify_name,
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          fontWeight: FontWeight.w300,
                          fontSize: 14,
                          color: Palette.current.white)),
                ),
                Align(
                  alignment: Alignment.centerLeft,
                  child: StarRatingListItemPreview(
                    rating: rating,
                    onRatingChanged: (rating) =>
                        setState(() => this.rating = rating),
                  ),
                ),
              ],
            ))
      ],
    );
  }
}
