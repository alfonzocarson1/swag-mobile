import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:swagapp/generated/l10n.dart';
import 'package:swagapp/modules/common/utils/palette.dart';
import 'package:swagapp/modules/constants/constants.dart';
import 'package:swagapp/modules/models/search/catalog_item_model.dart';

class ShrunkenItemWidget extends StatelessWidget {
  const ShrunkenItemWidget({Key? key, required this.model}) : super(key: key);

  final CatalogItemModel model;

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            SizedBox(
              height: MediaQuery.of(context).size.width * 0.41,
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
              top: 7,
              right: 0,
              child: Visibility(
                visible: true,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text("3 X",
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            fontFamily: "Knockout",
                            fontSize: 30,
                            fontWeight: FontWeight.w300,
                            color: Palette.current.primaryNeonGreen)),
                  ),
                ),
              ),
            ),
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
                                    color: Palette.current.white)),
                      ),
                    ),
                  )),
            )
          ],
        ),
        const SizedBox(
          height: 5,
        ),
        Text(
            model.catalogItemName.length >= maxCharactersForGridViewTitle
                ? '${model.catalogItemName.substring(0, maxCharactersForGridViewTitle)}...'
                : model.catalogItemName,
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.displayLarge!.copyWith(
                letterSpacing: 1,
                fontWeight: FontWeight.w300,
                fontFamily: "Knockout",
                fontSize: 24,
                color: Palette.current.white)),
        Text(
            model.saleInfo.length >= maxCharactersForGridViewDesc
                ? '${model.saleInfo.substring(0, maxCharactersForGridViewDesc)}...'
                : model.saleInfo,
            overflow: TextOverflow.fade,
            maxLines: 1,
            style: Theme.of(context).textTheme.bodySmall!.copyWith(
                fontWeight: FontWeight.w300,
                fontSize: 13,
                color: Palette.current.primaryNeonGreen)),
      ],
    );
  }
}
