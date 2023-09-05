import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:share_plus/share_plus.dart';

import '../../../../generated/l10n.dart';
import '../../../common/ui/custom_app_bar.dart';
import '../../../common/ui/loading.dart';
import '../../../common/ui/primary_button.dart';
import '../../../common/utils/custom_route_animations.dart';
import '../../../common/utils/palette.dart';
import '../../../common/utils/utils.dart';
import '../../../constants/constants.dart';
import '../../../cubits/buy/buy_cubit.dart';
import '../../../cubits/public_profile/public_profile_cubit.dart';
import '../../../di/injector.dart';
import '../../../enums/listing_status_data.dart';
import '../../../models/buy_for_sale_listing/buy_for_sale_listing_model.dart';
import '../../../models/overlay_buton/overlay_button_model.dart';
import '../../login/create_account_page.dart';
import '../collection/footer_list_item_page.dart';
import '../collection/widgets/custom_overlay_button.dart';
import 'multi_image_slide_buy_preview.dart';

class PreviewListingAsGuest extends StatefulWidget {
  static const name = '/PreviewListingAsGuest';

  const PreviewListingAsGuest({super.key, this.productItemId, this.catalogId});

  final String? productItemId;
  final String? catalogId;

  static Route route({String? productItemId, String? catalogId}) =>
      PageRoutes.material(
        settings: const RouteSettings(name: name),
        builder: (context) => PreviewListingAsGuest(
            productItemId: productItemId, catalogId: catalogId),
      );

  @override
  State<PreviewListingAsGuest> createState() => _PreviewListingAsGuestState();
}

class _PreviewListingAsGuestState extends State<PreviewListingAsGuest> {
  BuyForSaleListingModel listData =
      const BuyForSaleListingModel(productItemImageUrls: ['']);
  String? profileURL;
  String? defaultImage;
  bool get isListingDataLoaded => listData.productItemId != null;
  List<CustomOverlayItemModel> overlayItems = [];
  bool loadingAvailable = true;

  @override
  void initState() {
    getIt<BuyCubit>().getListDetailItemAsGuest(widget.productItemId ?? '');
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Palette.current.primaryEerieBlack,
      resizeToAvoidBottomInset: true,
      appBar: CustomAppBar(),
      body: BlocListener<BuyCubit, BuyStateCubit>(
        listener: (context, state) => state.maybeWhen(
          orElse: () {
            return null;
          },
          loading: (bool loading) {
            return this.loadingAvailable == false
                ? Container()
                : loading
                    ? Loading.show(context)
                    : Loading.hide(context);
          },
          loadedListDetailItem: (BuyForSaleListingModel listDataResponse) {
            setState(() {
              listData = listDataResponse;
              Future.delayed(const Duration(seconds: 2)).then((value) {
                setState(() {
                  this.loadingAvailable = false;
                });
              });
              if (listData.submitPurchaseInfo != null) {
                if (listData.submitPurchaseInfo!.avatarBuyer != 'CUSTOM') {
                  var data = imagesList.where(
                    (avatar) => (avatar["id"].contains(listData
                            .submitPurchaseInfo!.avatarBuyer ??
                        'https://firebasestorage.googleapis.com/v0/b/platzitrips-c4e10.appspot.com/o/Franklin.png?alt=media&token=c1073f88-74c2-44c8-a287-fbe0caebf878')),
                  );

                  defaultImage = data.first['url'];
                } else {
                  profileURL = listData.submitPurchaseInfo!.avatarBuyerUrl ??
                      'https://firebasestorage.googleapis.com/v0/b/platzitrips-c4e10.appspot.com/o/Franklin.png?alt=media&token=c1073f88-74c2-44c8-a287-fbe0caebf878';
                }
              }

              overlayItems = reportListingDropDown;
            });
            return null;
          },
        ),
        child: isListingDataLoaded
            ? _buildLoadedListingData(context)
            : Container(),
      ),
    );
  }

  Future<void> _refreshList() async {
    setState(() {
      this.loadingAvailable = false;
    });
    await Future.delayed(const Duration(seconds: 2));
    getIt<BuyCubit>().getListDetailItemAsGuest(widget.productItemId ?? '');
    getIt<PublicProfileCubit>().loadProfile(
      listData.profileId!,
      prefillFromCurrentUser: false,
    );
  }

  Widget _buildLoadedListingData(BuildContext context) {
    String productItemName = listData.productItemName ?? "";
    String condition = listData.condition ?? "";

    return RefreshIndicator(
      onRefresh: _refreshList,
      child: SingleChildScrollView(
        physics:
            const AlwaysScrollableScrollPhysics(), // Makes sure the scroll view is always scrollable, required for RefreshIndicator.
        child: Column(
          children: [
            MultiImageSlideBuyPreview(
              imgList: listData.productItemImageUrls,
            ),
            const SizedBox(height: 4),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  _buildListingHeader(productItemName, context),
                  const SizedBox(height: 10),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      '${S.of(context).for_sale}: ${decimalDigitsLastSalePrice(
                        listData.lastSale.toString(),
                      )} ',
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            fontWeight: FontWeight.w300,
                            color: Palette.current.primaryNeonGreen,
                          ),
                    ),
                  ),
                  const SizedBox(height: 14),
                  _buildPaymentTypesAccepted(context),
                  const SizedBox(height: 23),
                  Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      "Condition: ${condition.capitalize()}",
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            fontWeight: FontWeight.w300,
                            color: Palette.current.primaryNeonPink,
                          ),
                    ),
                  ),
                  const SizedBox(height: 10),
                  Container(
                    padding: const EdgeInsets.only(right: 50.0),
                    child: Text(
                      '${listData.productItemDescription}',
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            fontSize: 15,
                            letterSpacing: 0.3,
                            color: Palette.current.primaryWhiteSmoke,
                          ),
                    ),
                  ),
                  const SizedBox(height: 30),
                  _buildFooter(context),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _buildFooter(BuildContext context) {
    return Column(
      children: [
        FooterListItemPage(
          productItemId: this.listData.productItemId ?? '',
          showChatButton: true,
          profileId: listData.profileId!,
          useCurrentUser: false,
          catalogId: listData.catalogItemId ?? '',
        ),
        const SizedBox(height: 30),
        Visibility(
          visible: listData.status == 'listed',
          child: PrimaryButton(
            title: '${S.of(context).buy_for}  ${decimalDigitsLastSalePrice(
              listData.lastSale.toString(),
            )}',
            onPressed: () async {
              BuyForSaleListingModel? alertListinStatus =
                  await getIt<BuyCubit>()
                      .getAlertListDetailItem(listData.productItemId ?? '');
              if (alertListinStatus!.status !=
                  ListingStatusDataType.listed.textValue) {
                handleListingStatusUnavailableAsGuest(
                    listData.catalogItemId ?? '');
              } else {
                Navigator.of(context, rootNavigator: true)
                    .push(CreateAccountPage.route());
              }
            },
            type: PrimaryButtonType.green,
          ),
        ),
        Visibility(
          visible: (listData.status == 'pendingSellerConfirmation' ||
              listData.status == 'pendingPayment'),
          child: PrimaryButton(
            title: S.of(context).sale_pending_btn.toUpperCase(),
            onPressed: () async {
              BuyForSaleListingModel? alertListinStatus =
                  await getIt<BuyCubit>()
                      .getAlertListDetailItem(listData.productItemId ?? '');
              if (alertListinStatus!.status !=
                  ListingStatusDataType.listed.textValue) {
                handleListingStatusUnavailableAsGuest(
                    listData.catalogItemId ?? '');
              } else {
                Navigator.of(context, rootNavigator: true)
                    .push(CreateAccountPage.route());
              }
            },
            type: PrimaryButtonType.grey,
          ),
        ),
        const SizedBox(height: 30),
      ],
    );
  }

  Widget _buildPaymentTypesAccepted(BuildContext context) {
    return Row(
      children: [
        Align(
          alignment: Alignment.centerLeft,
          child: Text(
            "${S.of(context).payment_types_accepted}:",
            style: Theme.of(context).textTheme.bodySmall!.copyWith(
                fontWeight: FontWeight.w300,
                color: Palette.current.primaryWhiteSmoke),
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Visibility(
          visible: listData.peerToPeerPaymentOptions!.venmoUser != null,
          child: Image.asset(
            'assets/icons/venmo_icon.png',
            scale: 4,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Visibility(
          visible: listData.peerToPeerPaymentOptions!.cashTag != null,
          child: Image.asset(
            'assets/icons/cash_app_icon.png',
            scale: 4,
          ),
        ),
        const SizedBox(
          width: 10,
        ),
        Visibility(
          visible: listData.peerToPeerPaymentOptions!.payPalEmail != null,
          child: Image.asset(
            'assets/icons/pay_pal_icon.png',
            scale: 4,
          ),
        )
      ],
    );
  }

  Widget _buildListingHeader(String productItemName, BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Expanded(
          flex: 6,
          child: Text(
            productItemName.toUpperCase(),
            style: Theme.of(context).textTheme.displayLarge!.copyWith(
                  letterSpacing: 1,
                  fontWeight: FontWeight.w300,
                  fontFamily: "KnockoutCustom",
                  fontSize: 30,
                  color: Palette.current.white,
                ),
          ),
        ),
        Visibility(
          visible: listData.status == 'listed',
          child: Expanded(
            flex: 2,
            child: Align(
              alignment: Alignment.centerRight,
              child: IconButton(
                icon: Image.asset(
                  "assets/images/share.png",
                  scale: 3.5,
                ),
                onPressed: () async {
                  BuyForSaleListingModel? alertListinStatus =
                      await getIt<BuyCubit>()
                          .getAlertListDetailItem(listData.productItemId ?? '');
                  if (alertListinStatus!.status !=
                      ListingStatusDataType.listed.textValue) {
                    handleListingStatusUnavailableAsGuest(
                        listData.catalogItemId ?? '');
                  } else {
                    Share.share(
                      '${listData.productItemName} - $shareListingUrl${listData.productItemId}',
                    );
                  }
                },
              ),
            ),
          ),
        ),
        Visibility(
          visible: listData.status == 'listed',
          child: Expanded(
            flex: 1,
            child: Align(
              alignment: Alignment.centerLeft,
              child: CustomOverlayButton(
                icon: Image.asset(
                  "assets/images/more-horizontal.png",
                  scale: 2,
                ),
                items: overlayItems,
                onItemSelected: (String value) async {
                  BuyForSaleListingModel? alertListinStatus =
                      await getIt<BuyCubit>()
                          .getAlertListDetailItem(listData.productItemId ?? '');
                  if (alertListinStatus!.status !=
                      ListingStatusDataType.listed.textValue) {
                    handleListingStatusUnavailableAsGuest(
                        listData.catalogItemId ?? '');
                  } else {
                    Navigator.of(context, rootNavigator: true)
                        .push(CreateAccountPage.route());
                  }
                },
              ),
            ),
          ),
        ),
      ],
    );
  }
}
