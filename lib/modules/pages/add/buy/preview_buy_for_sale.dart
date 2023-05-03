import 'package:flutter/material.dart';
import 'package:swagapp/modules/common/ui/custom_app_bar.dart';

import '../../../../generated/l10n.dart';
import '../../../common/ui/primary_button.dart';
import '../../../common/utils/custom_route_animations.dart';
import '../../../common/utils/palette.dart';
import '../../../common/utils/utils.dart';
import '../../../models/buy_for_sale_listing/buy_for_sale_listing_model.dart';
import '../collection/footer_list_item_page.dart';
import 'multi_image_slide_buy_preview.dart';

class BuyPreviewPage extends StatefulWidget {
  static const name = '/BuyPreviewPage';

  const BuyPreviewPage({super.key, required this.dataItem});

  final BuyForSaleListingModel dataItem;

  static Route route(BuyForSaleListingModel dataItem) => PageRoutes.material(
        settings: const RouteSettings(name: name),
        builder: (context) => BuyPreviewPage(dataItem: dataItem),
      );

  @override
  State<BuyPreviewPage> createState() => _BuyPreviewPageState();
}

class _BuyPreviewPageState extends State<BuyPreviewPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      resizeToAvoidBottomInset: true,
      backgroundColor: Palette.current.primaryEerieBlack,
      appBar: CustomAppBar(),
      body: Container(
        constraints: BoxConstraints(
            minHeight: MediaQuery.of(context).size.height * 0.9,
            maxHeight: MediaQuery.of(context).size.height * 0.9),
        child: Stack(
          children: [
            LayoutBuilder(builder: (context, viewportConstraints) {
              return SingleChildScrollView(
                physics: const ClampingScrollPhysics(),
                reverse: false,
                child: ConstrainedBox(
                  constraints: BoxConstraints(
                    minHeight: viewportConstraints.maxHeight,
                  ),
                  child: Column(
                    children: [
                      MultiImageSlideBuyPreview(
                        imgList: widget.dataItem.productItemImageUrls,
                      ),
                      const SizedBox(height: 4),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Row(
                              children: [
                                Expanded(
                                    flex: 6,
                                    child: Text(
                                        '${widget.dataItem.productItemName}',
                                        style: Theme.of(context)
                                            .textTheme
                                            .displayLarge!
                                            .copyWith(
                                                letterSpacing: 1,
                                                fontWeight: FontWeight.w300,
                                                fontFamily: "KnockoutCustom",
                                                fontSize: 30,
                                                color: Palette.current.white))),
                                Expanded(
                                    flex: 2,
                                    child: Align(
                                      alignment: Alignment.centerRight,
                                      child: IconButton(
                                        icon: Image.asset(
                                          "assets/images/share.png",
                                          scale: 3.5,
                                        ),
                                        onPressed: () async {},
                                      ),
                                    )),
                                Expanded(
                                    flex: 1,
                                    child: Align(
                                      alignment: Alignment.centerLeft,
                                      child: IconButton(
                                        icon: Image.asset(
                                          "assets/images/more-horizontal.png",
                                          scale: 3.5,
                                        ),
                                        onPressed: () async {},
                                      ),
                                    ))
                              ],
                            ),
                            const SizedBox(height: 10),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                  '${S.of(context).for_sale}: ${decimalDigitsLastSalePrice(widget.dataItem.lastSale.toString())} ',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall!
                                      .copyWith(
                                          fontWeight: FontWeight.w300,
                                          color: Palette
                                              .current.primaryNeonGreen)),
                            ),
                            const SizedBox(height: 10),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                  "Condition: ${widget.dataItem.condition}",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall!
                                      .copyWith(
                                          fontWeight: FontWeight.w300,
                                          color:
                                              Palette.current.primaryNeonPink)),
                            ),
                            const SizedBox(height: 10),
                            Padding(
                              padding: const EdgeInsets.only(right: 50.0),
                              child: Text(
                                  '${widget.dataItem.productItemDescription}',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall!
                                      .copyWith(
                                        fontSize: 15,
                                        letterSpacing: 0.3,
                                        color:
                                            Palette.current.primaryWhiteSmoke,
                                      )),
                            ),
                            const SizedBox(height: 30),
                            const FooterListItemPage(),
                            const SizedBox(height: 30),
                            PrimaryButton(
                              title:
                                  '${S.of(context).buy_for}  ${decimalDigitsLastSalePrice(widget.dataItem.lastSale.toString())}',
                              onPressed: () {},
                              type: PrimaryButtonType.green,
                            ),
                            const SizedBox(height: 30),
                          ],
                        ),
                      ),
                    ],
                  ),
                ),
              );
            })
          ],
        ),
      ),
    );
  }
}
