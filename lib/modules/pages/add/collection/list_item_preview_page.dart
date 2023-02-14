import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:swagapp/modules/common/ui/custom_app_bar.dart';

import '../../../../generated/l10n.dart';
import '../../../common/ui/multi_image_slide.dart';
import '../../../common/ui/primary_button.dart';
import '../../../common/utils/custom_route_animations.dart';
import '../../../common/utils/palette.dart';
import 'footer_list_item_page.dart';
import 'product_image_slide.dart';

class ListItemPreviewPage extends StatefulWidget {
  static const name = '/ListItemPreviewPage';

  ListItemPreviewPage(
      {super.key,
      required this.imgList,
      this.itemName,
      this.itemPrice,
      this.itemCondition,
      this.itemDescription});

  List<XFile> imgList;
  String? itemName;
  String? itemPrice;
  String? itemCondition;
  String? itemDescription;

  static Route route(
          imgList, itemName, itemPrice, itemCondition, itemDescription) =>
      PageRoutes.material(
        settings: const RouteSettings(name: name),
        builder: (context) => ListItemPreviewPage(
            imgList: imgList,
            itemName: itemName,
            itemPrice: itemPrice,
            itemCondition: itemCondition,
            itemDescription: itemDescription),
      );

  @override
  State<ListItemPreviewPage> createState() => _ListItemPreviewPageState();
}

class _ListItemPreviewPageState extends State<ListItemPreviewPage> {
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
                      MultiImageSlide(
                        imgList: widget.imgList,
                      ),
                      const SizedBox(height: 10),
                      Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            Row(
                              children: [
                                Expanded(
                                    flex: 6,
                                    child: Text(widget.itemName ?? '',
                                        style: Theme.of(context)
                                            .textTheme
                                            .displayLarge!
                                            .copyWith(
                                                letterSpacing: 1,
                                                fontWeight: FontWeight.w300,
                                                fontFamily: "Knockout",
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
                                  "${S.of(context).for_sale}: \$${widget.itemPrice}",
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
                                  "${S.of(context).Condition} ${widget.itemCondition}",
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall!
                                      .copyWith(
                                          fontWeight: FontWeight.w300,
                                          color:
                                              Palette.current.primaryNeonPink)),
                            ),
                            const SizedBox(height: 10),
                            Text(widget.itemDescription ?? '',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall!
                                    .copyWith(
                                      fontSize: 15,
                                      letterSpacing: 0.3,
                                      color: Palette.current.primaryWhiteSmoke,
                                    )),
                            const SizedBox(height: 30),
                            const FooterListItemPage(),
                            const SizedBox(height: 30),
                            PrimaryButton(
                              title: S.of(context).post_listing_btn,
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
