import 'dart:io';

import 'package:flutter/material.dart';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swagapp/modules/common/ui/custom_app_bar.dart';
import 'package:swagapp/modules/cubits/profile/get_profile_cubit.dart';

import '../../../../generated/l10n.dart';
import '../../../blocs/detail_bloc/detail_bloc.dart';
import '../../../blocs/listing_bloc/listing_bloc.dart';
import '../../../common/ui/loading.dart';
import '../../../common/ui/multi_image_slide.dart';
import '../../../common/ui/primary_button.dart';
import '../../../common/utils/custom_route_animations.dart';
import '../../../common/utils/palette.dart';
import '../../../common/utils/tab_wrapper.dart';
import '../../../common/utils/utils.dart';
import '../../../constants/constants.dart';
import '../../../cubits/listing_for_sale/get_listing_for_sale_cubit.dart';
import '../../../cubits/paginated_search/paginated_search_cubit.dart';
import '../../../data/shared_preferences/shared_preferences_service.dart';
import '../../../di/injector.dart';
import '../../../models/detail/detail_collection_model.dart';
import '../../../models/listing_for_sale/listing_for_sale_model.dart';
import '../../../models/overlay_buton/overlay_button_model.dart';

import '../../../models/settings/peer_to_peer_payments_get_model.dart';
import '../../../models/settings/peer_to_peer_payments_model.dart';
import 'footer_list_item_page.dart';

class ListItemPreviewPage extends StatefulWidget {
  static const name = '/ListItemPreviewPage';

  ListItemPreviewPage(
      {super.key,
      required this.isUpdate,
      required this.imgList,
      required this.itemName,
      required this.itemPrice,
      required this.itemCondition,
      required this.itemDescription,
      required this.profileCollectionItemId,
      required this.catalogItemId,
      this.profileId,
      this.productItemId,
      this.imgUrls,
      required this.paymentAccepted,
      required this.onClose});

  List<File> imgList;

  bool isUpdate;

  String itemName;
  double itemPrice;
  String itemCondition;
  String itemDescription;
  String profileCollectionItemId;
  String catalogItemId;
  String? productItemId;
  String? profileId;
  List<String>? imgUrls;
  List<String> paymentAccepted;
  Function() onClose;

  static Route route(
          {isUpdate,
          productItemId,
          imgList,
          imgUrls,
          itemName,
          itemPrice,
          itemCondition,
          itemDescription,
          profileCollectionItemId,
          catalogItemId,
          paymentAccepted,
          onClose}) =>
      PageRoutes.material(
        settings: const RouteSettings(name: name),
        builder: (context) => ListItemPreviewPage(
            isUpdate: isUpdate,
            productItemId: productItemId,
            imgList: imgList,
            imgUrls: imgUrls,
            itemName: itemName,
            itemPrice: itemPrice,
            itemCondition: itemCondition,
            itemDescription: itemDescription,
            profileCollectionItemId: profileCollectionItemId,
            catalogItemId: catalogItemId,
            paymentAccepted: paymentAccepted,
            onClose: onClose),
      );

  @override
  State<ListItemPreviewPage> createState() => _ListItemPreviewPageState();
}

class _ListItemPreviewPageState extends State<ListItemPreviewPage> {
  String profileId = "";
  List<CustomOverlayItemModel> items = editListingDropDown;
  late DetailCollectionModel collectionModel;
  PeerToPeerPaymentsGetModel paymentData =
      getIt<PreferenceRepositoryService>().paymanetData();
  @override
  void initState() {
    super.initState();
    getProfileData();
  }

  getProfileData() async {
    var tempProfile =
        await getIt<ProfileCubit>().profileService.privateProfile();
    setState(() {
      profileId = tempProfile.accountId;
    });
  }

  @override
  Widget build(BuildContext context) {
    collectionModel = DetailCollectionModel(
        profileCollectionItemId: 'profileCollectionItemId',
        catalogItemId: 'catalogItemId',
        purchaseDate: '',
        purchasePrice: widget.itemPrice,
        itemCondition: 'itemCondition',
        itemSource: '');

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
                    BlocProvider.of<DetailBloc>(context)
                        .add(DetailEvent.getDetailItem(widget.catalogItemId));
                    Loading.hide(context);
                    widget.onClose();
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
          maxHeight: MediaQuery.of(context).size.height * 1),
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
                    const SizedBox(height: 20),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 20),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          Row(
                            children: [
                              Expanded(
                                  flex: 6,
                                  child: Text(widget.itemName.toUpperCase(),
                                      style: Theme.of(context)
                                          .textTheme
                                          .displayLarge!
                                          .copyWith(
                                              letterSpacing: 0.8,
                                              fontWeight: FontWeight.w300,
                                              fontFamily: "KnockoutCustom",
                                              fontSize: 30,
                                              color: Palette.current.white))),
                              Expanded(flex: 2, child: Container()),
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
                          const SizedBox(height: 24),
                          Row(
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(
                                    "${S.of(context).payment_types_accepted}:",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall!
                                        .copyWith(
                                            fontWeight: FontWeight.w300,
                                            letterSpacing: 0.3,
                                            color: Palette
                                                .current.primaryWhiteSmoke)),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Visibility(
                                visible:
                                    widget.paymentAccepted.contains('Venmo'),
                                child: Image.asset(
                                  'assets/icons/venmo_icon.png',
                                  scale: 4,
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Visibility(
                                visible:
                                    widget.paymentAccepted.contains('CashApp'),
                                child: Image.asset(
                                  'assets/icons/cash_app_icon.png',
                                  scale: 4,
                                ),
                              ),
                              const SizedBox(
                                width: 10,
                              ),
                              Visibility(
                                visible:
                                    widget.paymentAccepted.contains('PayPal'),
                                child: Image.asset(
                                  'assets/icons/pay_pal_icon.png',
                                  scale: 4,
                                ),
                              )
                            ],
                          ),
                          const SizedBox(height: 23),
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
                          const SizedBox(height: 17),
                          Container(
                            padding: const EdgeInsets.only(right: 50.0),
                            child: Text(widget.itemDescription,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall!
                                    .copyWith(
                                      fontSize: 16,
                                      letterSpacing: 0.3,
                                      color: Palette.current.primaryWhiteSmoke,
                                    )),
                          ),
                          const SizedBox(height: 30),
                          if (profileId != "")
                            FooterListItemPage(
                              useCurrentUser: true,
                              profileId: profileId,
                              productItemId: this.widget.productItemId ?? '',
                              showChatButton: false,
                            ),
                          const SizedBox(height: 30),
                          PrimaryButton(
                            title: S.of(context).post_listing_btn,
                            onPressed: () {
                              if (widget.isUpdate == false) {
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
                                                widget.profileCollectionItemId,
                                            peerToPeerPaymentOptions:
                                                PeerToPeerPaymentsModel(
                                              venmoUser: widget.paymentAccepted
                                                      .contains('Venmo')
                                                  ? paymentData
                                                          .peerToPeerPayments!
                                                          .venmoUser ??
                                                      ''
                                                  : null,
                                              cashTag: widget.paymentAccepted
                                                      .contains('CashApp')
                                                  ? paymentData
                                                          .peerToPeerPayments!
                                                          .cashTag ??
                                                      ''
                                                  : null,
                                              payPalEmail: widget
                                                      .paymentAccepted
                                                      .contains('PayPal')
                                                  ? paymentData
                                                          .peerToPeerPayments!
                                                          .payPalEmail ??
                                                      ''
                                                  : null,
                                            )),
                                        widget.imgList));
                              } else {
                                getIt<ListingProfileCubit>().updateListing(
                                  ListingForSaleModel(
                                    productItemId: widget.productItemId,
                                    productItemName: widget.itemName,
                                    productItemPrice: widget.itemPrice,
                                    productItemDescription:
                                        widget.itemDescription,
                                    sold: false,
                                    condition:
                                        widget.itemCondition.toUpperCase(),
                                    listingItemsAction: "ADD",
                                    forSale: true,
                                    lastSale: widget.itemPrice,
                                    catalogItemId: widget.catalogItemId,
                                    profileCollectionItemId:
                                        widget.profileCollectionItemId,
                                    status: 'Listed',
                                  ),
                                  widget.imgList,
                                  widget.imgUrls ?? [],
                                );

                                Navigator.of(context).pop();
                                Navigator.of(context).pop();
                                Navigator.of(context).pop();
                              }
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
