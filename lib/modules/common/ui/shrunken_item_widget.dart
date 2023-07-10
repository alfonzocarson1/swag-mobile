import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:swagapp/generated/l10n.dart';
import 'package:swagapp/modules/common/utils/palette.dart';
import 'package:swagapp/modules/constants/constants.dart';
import 'package:swagapp/modules/models/search/catalog_item_model.dart';

import '../../data/shared_preferences/shared_preferences_service.dart';
import '../../di/injector.dart';
import '../../pages/add/collection/add_collection_page.dart';
import '../../pages/detail/item_detail_page.dart';
import '../../pages/login/create_account_page.dart';
import '../utils/utils.dart';
import 'popup_add_exisiting_item_collection.dart';

class ShrunkenItemWidget extends StatelessWidget {
  const ShrunkenItemWidget({Key? key, required this.model}) : super(key: key);

  final CatalogItemModel model;

  @override
  Widget build(BuildContext context) {
    bool isLogged = getIt<PreferenceRepositoryService>().isLogged();

    return GestureDetector(
      onTap: () {
        Navigator.of(context, rootNavigator: true)
            .push(ItemDetailPage.route(model.catalogItemId, (val) {}, null));
      },
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Stack(
            children: [
              SizedBox(
                height: MediaQuery.of(context).size.width * 0.46,
                child: ClipRRect(
                  child: CachedNetworkImage(
                    fit: BoxFit.fitHeight,
                    imageUrl: model.catalogItemImage,
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
                  top: 10,
                  right: 10,
                  child: InkWell(
                    onTap: () {
                      if (isLogged) {
                        if (model.collectionItems!.isNotEmpty) {
                          showDialog(
                              context: context,
                              barrierDismissible: false,
                              builder: (BuildContext context) {
                                return PopUpAddExisitingItemCollection(
                                    onAdd: () => Navigator.of(context,
                                            rootNavigator: true)
                                        .push(AddCollection.route(
                                            context,
                                            model.catalogItemId,
                                            model.catalogItemImage,
                                            model.catalogItemName)));
                              });
                        } else {
                          Navigator.of(context, rootNavigator: true).push(
                              AddCollection.route(
                                  context,
                                  model.catalogItemId,
                                  model.catalogItemImage,
                                  model.catalogItemName));
                        }
                      } else {
                        Navigator.of(context, rootNavigator: true)
                            .push(CreateAccountPage.route());
                      }
                    },
                    child: Container(
                      height: 30,
                      width: 30,
                      padding: const EdgeInsets.all(7.0),
                      decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(90.0),
                          color: Palette.current.blackSmoke),
                      child: Image.asset(
                        width: 27,
                        height: 27,
                        'assets/images/plus.png',
                        color: Palette.current.white,
                      ),
                    ),
                  )),
              Positioned(
                bottom: 0,
                right: 0,
                child: Visibility(
                    visible: model.forSale,
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
                              "${model.numberAvailable} ${S.of(context).for_sale}",
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(
                                      fontSize: 14,
                                      fontFamily: 'Ringside',
                                      fontWeight: FontWeight.bold,
                                      color: Palette.current.black)),
                        ),
                      ),
                    )),
              )
            ],
          ),
          const SizedBox(
            height: 6,
          ),
          Padding(padding: const EdgeInsets.only(left: 4),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Container(
                    width: (MediaQuery.of(context).size.width * 0.46) - 30,
                  child: Text(
                      model.catalogItemName.length >= maxCharactersForGridViewTitle
                          ? '${model.catalogItemName.substring(0, maxCharactersForGridViewTitle)}...'.toUpperCase()
                          : model.catalogItemName.toUpperCase(),
                      maxLines: 1,
                      overflow: TextOverflow.ellipsis,
                      style: Theme.of(context).textTheme.displayLarge!.copyWith(
                          letterSpacing: 1,
                          fontWeight: FontWeight.w300,
                          fontFamily: "KnockoutCustom",
                          fontSize: 24,
                          color: Palette.current.white))
                  )
                ),
              ),
              const SizedBox(height: 6),
              Padding(padding: const EdgeInsets.only(left: 4),
                child: Align(
                  alignment: Alignment.topLeft,
                  child: Text(
                      model.forSale
                          ? '${model.numberAvailable == 1 ? S.of(context).for_sale : S.of(context).from} : ${decimalDigitsLastSalePrice(model.saleInfo.minPrice!)}'
                          : '${S.of(context).last_sale}: ${decimalDigitsLastSalePrice(model.saleInfo.lastSale!)}',
                      overflow: TextOverflow.fade,
                      maxLines: 1,
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          fontWeight: FontWeight.w300,
                          fontSize: 13,
                          color: Palette.current.primaryNeonGreen)),
                ),
              ),
        ],
      ),
    );
  }
}
