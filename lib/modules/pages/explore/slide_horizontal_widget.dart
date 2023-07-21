import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../generated/l10n.dart';
import '../../common/ui/popup_add_exisiting_item_collection.dart';
import '../../common/utils/palette.dart';
import '../../common/utils/utils.dart';
import '../../data/shared_preferences/shared_preferences_service.dart';
import '../../di/injector.dart';
import '../add/collection/add_collection_page.dart';
import '../detail/item_detail_page.dart';
import '../login/create_account_page.dart';

class HorizontalSlideWidget extends StatelessWidget {
  final String pathImage;
  final String title;
  final String? lastSale;
  bool forSale = false;
  final String? minPrice;
  final String? maxPrice;
  final int numberAvailable;
  final String catalogItemId;

  HorizontalSlideWidget({
    required this.pathImage,
    required this.title,
    required this.forSale,
    required this.minPrice,
    required this.maxPrice,
    required this.lastSale,
    required this.numberAvailable,
    required this.catalogItemId,
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    bool isLogged = false;
    isLogged = getIt<PreferenceRepositoryService>().isLogged();

    return GestureDetector(
      onTap: () {
        Navigator.of(context, rootNavigator: true)
            .push(ItemDetailPage.route(catalogItemId, (val) {}, null));
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          SizedBox(
            height: MediaQuery.of(context).size.width * 0.38,
            // width: MediaQuery.of(context).size.width * 0.80,
            child: Stack(
              fit: StackFit.loose,
              children: [
                SizedBox(
                  // height: MediaQuery.of(context).size.width * 0.37,
                  // width: MediaQuery.of(context).size.width * 0.50,
                  child: ClipRRect(
                    child: CachedNetworkImage(
                      fit: BoxFit.fitHeight,
                      imageUrl: pathImage,
                      placeholder: (context, url) => SizedBox(
                        height: 170,
                        child: Center(
                          child: CircularProgressIndicator(
                            color: Palette.current.primaryNeonGreen,
                            backgroundColor: Colors.white,
                          ),
                        ),
                      ),
                      errorWidget: (context, url, error) =>
                          Image.asset("assets/images/ProfilePhoto.png"),
                    ),
                  ),
                ),
                Positioned(
                  bottom: 0,
                  right: 0,
                  child: Visibility(
                      visible: forSale,
                      child: Container(
                        height: 30,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Palette.current.primaryNeonPink,
                        ),
                        child: Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Align(
                            alignment: Alignment.centerRight,
                            child: Text(
                                '''$numberAvailable ${S.of(context).for_sale}''',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall!
                                    .copyWith(
                                        fontStyle: FontStyle.normal,
                                        fontFamily: "RingsideRegular",
                                        fontSize: 13,
                                        fontWeight: FontWeight.w400,
                                        color: Palette.current.white)),
                          ),
                        ),
                      )),
                )
              ],
            ),
          ),
          const SizedBox(
            height: 5,
          ),
          Text(title,
              maxLines: 1,
              overflow: TextOverflow.ellipsis,
              style: Theme.of(context).textTheme.displayLarge!.copyWith(
                  letterSpacing: 0.18,
                  fontWeight: FontWeight.w300,
                  fontFamily: "KnockoutCustom",
                  fontSize: 21,
                  color: Palette.current.white)),
          Text(
              forSale
                  ? (numberAvailable > 1)
                      ? '${S.of(context).from}: ${decimalDigitsLastSalePrice(minPrice.toString())}'
                      : '${S.of(context).for_sale}: ${decimalDigitsLastSalePrice(minPrice.toString())}'
                  : '${S.of(context).last_sale}: ${decimalDigitsLastSalePrice(lastSale.toString())}',
              overflow: TextOverflow.fade,
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  fontWeight: FontWeight.w300,
                  fontSize: 13,
                  color: Palette.current.primaryNeonGreen)),
        ],
      ),
    );
  }
}
