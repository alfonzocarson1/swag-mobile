import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:swagapp/modules/common/ui/custom_app_bar.dart';

import '../../../../generated/l10n.dart';
import '../../../blocs/listing_bloc/listing_bloc.dart';
import '../../../common/ui/loading.dart';
import '../../../common/ui/multi_image_slide.dart';
import '../../../common/ui/primary_button.dart';
import '../../../common/utils/custom_route_animations.dart';
import '../../../common/utils/palette.dart';
import '../../../common/utils/utils.dart';
import '../../../models/listing_for_sale/listing_for_sale_model.dart';
import 'footer_list_item_page.dart';

class ListItemPreviewPage extends StatefulWidget {
  static const name = '/ListItemPreviewPage';

  ListItemPreviewPage(
      {super.key,
      required this.imgList,
      required this.itemName,
      required this.itemPrice,
      required this.itemCondition,
      required this.itemDescription,
      required this.profileCollectionItemId,
      required this.catalogItemId,
      required this.onClose});

  List<XFile> imgList;
  String itemName;
  double itemPrice;
  String itemCondition;
  String itemDescription;
  String profileCollectionItemId;
  String catalogItemId;
  Function() onClose;

  static Route route(imgList, itemName, itemPrice, itemCondition,
          itemDescription, profileCollectionItemId, catalogItemId, onClose) =>
      PageRoutes.material(
        settings: const RouteSettings(name: name),
        builder: (context) => ListItemPreviewPage(
            imgList: imgList,
            itemName: itemName,
            itemPrice: itemPrice,
            itemCondition: itemCondition,
            itemDescription: itemDescription,
            profileCollectionItemId: profileCollectionItemId,
            catalogItemId: catalogItemId,
            onClose: onClose),
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
        body: BlocListener<ListingBloc, ListingState>(
            listener: (context, state) => state.maybeWhen(
                  orElse: () {
                    return null;
                  },
                  loadedListingSuccess: (state) {
                    widget.onClose();
                    Loading.hide(context);
                    Navigator.pop(context);
                    return null;
                  },
                  initial: () {
                    return Loading.show(context);
                  },
                  error: (message) => {
                    Loading.hide(context),
                    // Dialogs.showOSDialog(context, 'Error', message, 'OK', () {})
                  },
                ),
            child: _getBody()));
  }

  Widget _getBody() {
    return Container(
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
                                  child: Text(widget.itemName,
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
                                "${S.of(context).for_sale}: ${decimalDigitsLastSalePrice(widget.itemPrice.toString())}",
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall!
                                    .copyWith(
                                        fontWeight: FontWeight.w300,
                                        color:
                                            Palette.current.primaryNeonGreen)),
                          ),
                          const SizedBox(height: 10),
                          Align(
                            alignment: Alignment.centerLeft,
                            child: Text(
                                "${S.of(context).condition}: ${widget.itemCondition}",
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
                            child: Text(widget.itemDescription,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall!
                                    .copyWith(
                                      fontSize: 15,
                                      letterSpacing: 0.3,
                                      color: Palette.current.primaryWhiteSmoke,
                                    )),
                          ),
                          const SizedBox(height: 30),
                          const FooterListItemPage(),
                          const SizedBox(height: 30),
                          PrimaryButton(
                            title: S.of(context).post_listing_btn,
                            onPressed: () {
                              context.read<ListingBloc>().add(
                                  ListingEvent.createListing(
                                      ListingForSaleModel(
                                          productItemName: widget.itemName,
                                          productItemPrice: widget.itemPrice,
                                          productItemDescription:
                                              widget.itemDescription,
                                          sold: false,
                                          condition: widget.itemCondition
                                              .toUpperCase(),
                                          listingItemsAction: "ADD",
                                          forSale: true,
                                          lastSale: widget.itemPrice,
                                          catalogItemId: widget.catalogItemId,
                                          profileCollectionItemId:
                                              widget.profileCollectionItemId),
                                      widget.imgList));
                            },
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
    );
  }
}
