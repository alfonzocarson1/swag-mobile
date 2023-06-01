import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swagapp/modules/common/ui/custom_app_bar.dart';
import 'package:swagapp/modules/common/ui/general_delete_popup.dart';
import 'package:swagapp/modules/cubits/listing_for_sale/get_listing_for_sale_cubit.dart';
import 'package:swagapp/modules/models/detail/sale_list_history_model.dart';
import 'package:swagapp/modules/models/listing_for_sale/listing_for_sale_model.dart';
import 'package:swagapp/modules/models/profile/profile_model.dart';
import 'package:swagapp/modules/models/ui_models/checkbox_model.dart';
import '../../../../generated/l10n.dart';
import '../../../blocs/sale_history/sale_history_bloc.dart';
import '../../../common/ui/primary_button.dart';
import '../../../common/utils/custom_route_animations.dart';
import '../../../common/utils/palette.dart';
import '../../../constants/constants.dart';
import '../../../cubits/profile/get_profile_cubit.dart';
import '../../../di/injector.dart';
import '../../../common/utils/utils.dart';
import '../../../models/buy_for_sale_listing/buy_for_sale_listing_model.dart';
import '../../../models/detail/detail_collection_model.dart';
import '../../../models/overlay_buton/overlay_button_model.dart';
import '../collection/edit_list_for_Sale_page.dart';
import '../collection/footer_list_item_page.dart';
import '../collection/widgets/custom_overlay_button.dart';
import 'buyer_complete_purchase_pop_up.dart';
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
  List<CustomOverlayItemModel> overlayItems = [];
  late DetailCollectionModel collectionModel;
  List<File> tempFiles = [];
  late SalesHistoryListModel salesHistoryList;

  @override
  void initState() {
    getSalesHistory();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
  }

  getSalesHistory() async {
    var catalogItemId = widget.dataItem.catalogItemId;
    salesHistoryList = await getIt<SalesHistoryBloc>()
        .salesHistoryService
        .salesHistory(catalogItemId ?? "");
  }

  @override
  Widget build(BuildContext context) {
    collectionModel = DetailCollectionModel(
        profileCollectionItemId: widget.dataItem.productItemId ?? '',
        catalogItemId: widget.dataItem.catalogItemId ?? '',
        description: widget.dataItem.productItemDescription,
        purchaseDate: '',
        purchasePrice: widget.dataItem.lastSale ?? 0.0,
        itemCondition: widget.dataItem.condition ?? 'condition',
        itemSource: '');

    return Scaffold(
      extendBodyBehindAppBar: true,
      resizeToAvoidBottomInset: true,
      backgroundColor: Palette.current.primaryEerieBlack,
      appBar: CustomAppBar(),
      body: BlocBuilder<ProfileCubit, ProfileCubitState>(
        builder: (context, state) {
          return state.maybeWhen(
            initial: () => Container(),
            loadedProfileData: (ProfileModel profileBuildData) {
              (profileBuildData.accountId == widget.dataItem.profileId)
                  ? overlayItems = editListingDropDown
                  : overlayItems = reportListingDropDown;
              return Container(
                constraints: BoxConstraints(
                    minHeight: MediaQuery.of(context).size.height * 0.9,
                    maxHeight: MediaQuery.of(context).size.height),
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
                                padding:
                                    const EdgeInsets.symmetric(horizontal: 20),
                                child: Column(
                                  crossAxisAlignment:
                                      CrossAxisAlignment.stretch,
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
                                                        fontWeight:
                                                            FontWeight.w300,
                                                        fontFamily:
                                                            "KnockoutCustom",
                                                        fontSize: 30,
                                                        color: Palette
                                                            .current.white))),
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
                                              child: CustomOverlayButton(
                                                icon: Image.asset(
                                                  "assets/images/more-horizontal.png",
                                                  scale: 2,
                                                ),
                                                items: overlayItems,
                                                onItemSelected: (String value) {
                                                  if (value ==
                                                      editListingDropDown[0]
                                                          .label) {
                                                    getIt<ListingProfileCubit>()
                                                        .listingService
                                                        .updateListing(
                                                            ListingForSaleModel(
                                                          productItemId: widget
                                                              .dataItem
                                                              .productItemId,
                                                          forSale: true,
                                                          sold: false,
                                                          status: 'Editing',
                                                        ));
                                                    Navigator.of(context,
                                                            rootNavigator: true)
                                                        .push(EditListForSalePage.route(
                                                            collectionModel,
                                                            widget.dataItem
                                                                .productItemId,
                                                            widget.dataItem
                                                                    .productItemName ??
                                                                '',
                                                            widget.dataItem
                                                                .productItemImageUrls,
                                                            salesHistoryList));
                                                  } else if (value ==
                                                      editListingDropDown[1]
                                                          .label) {
                                                    showDialog(
                                                        context: context,
                                                        barrierDismissible:
                                                            false,
                                                        builder: (BuildContext
                                                            context) {
                                                          return GeneralDeletePopup(
                                                            title: S
                                                                .of(context)
                                                                .remove_listing,
                                                            message: S
                                                                .of(context)
                                                                .remove_listing_subtitle,
                                                            options: [
                                                              CheckboxModel(
                                                                  title: S
                                                                      .of(context)
                                                                      .delete_collection_razon_1),
                                                              CheckboxModel(
                                                                  title: S
                                                                      .of(context)
                                                                      .delete_collection_razon_2),
                                                              CheckboxModel(
                                                                  title: S
                                                                      .of(context)
                                                                      .delete_collection_reason_4),
                                                              CheckboxModel(
                                                                  title: S
                                                                      .of(context)
                                                                      .delete_collection_razon_3),
                                                            ],
                                                            model:
                                                                widget.dataItem,
                                                            onSubmit: () {},
                                                          );
                                                        });
                                                  }
                                                },
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
                                                  color: Palette.current
                                                      .primaryNeonGreen)),
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
                                                  color: Palette.current
                                                      .primaryNeonPink)),
                                    ),
                                    const SizedBox(height: 10),
                                    Container(
                                      height: MediaQuery.of(context)
                                              .devicePixelRatio *
                                          70,
                                      padding:
                                          const EdgeInsets.only(right: 50.0),
                                      child: Text(
                                          '${widget.dataItem.productItemDescription}',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodySmall!
                                              .copyWith(
                                                fontSize: 15,
                                                letterSpacing: 0.3,
                                                color: Palette
                                                    .current.primaryWhiteSmoke,
                                              )),
                                    ),
                                    (profileBuildData.accountId !=
                                            widget.dataItem.profileId)
                                        ? Column(
                                            children: [
                                              FooterListItemPage(),
                                              const SizedBox(height: 30),
                                              Visibility(
                                                  visible:
                                                      widget.dataItem.status ==
                                                          'listed',
                                                  child: PrimaryButton(
                                                    title:
                                                        '${S.of(context).buy_for}  ${decimalDigitsLastSalePrice(widget.dataItem.lastSale.toString())}',
                                                    onPressed: () {
                                                      showDialog(
                                                        context: context,
                                                        barrierDismissible:
                                                            false,
                                                        builder: (BuildContext
                                                                context) =>
                                                            const BuyerCompletePurchasePopUp(),
                                                      );
                                                    },
                                                    type:
                                                        PrimaryButtonType.green,
                                                  )),
                                              Visibility(
                                                  visible:
                                                      widget.dataItem.status !=
                                                          'listed',
                                                  child: PrimaryButton(
                                                    title:
                                                        '${S.of(context).buy_for}  ${decimalDigitsLastSalePrice(widget.dataItem.lastSale.toString())}',
                                                    onPressed: () {},
                                                    type:
                                                        PrimaryButtonType.green,
                                                  )),
                                            ],
                                          )
                                        : Column(
                                            children: [
                                              FooterListItemPage(),
                                              const SizedBox(height: 30),
                                              PrimaryButton(
                                                title:
                                                    '${S.of(context).buy_for}  ${decimalDigitsLastSalePrice(widget.dataItem.lastSale.toString())}',
                                                onPressed: null,
                                                type: PrimaryButtonType.grey,
                                              ),
                                            ],
                                          ),
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
            },
            orElse: () => Container(),
          );
        },
      ),
    );
  }
}
