import 'dart:convert';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swagapp/modules/blocs/chat/chat_bloc.dart';
import 'package:sendbird_sdk/sendbird_sdk.dart';
import 'package:swagapp/modules/common/ui/custom_app_bar.dart';
import 'package:swagapp/modules/common/ui/general_delete_popup.dart';
import 'package:swagapp/modules/cubits/listing_for_sale/get_listing_for_sale_cubit.dart';
import 'package:swagapp/modules/models/chat/chat_data.dart';
import 'package:swagapp/modules/models/detail/sale_list_history_model.dart';
import 'package:swagapp/modules/models/listing_for_sale/listing_for_sale_model.dart';
import 'package:swagapp/modules/models/profile/profile_model.dart';
import 'package:swagapp/modules/models/ui_models/checkbox_model.dart';
import 'package:swagapp/modules/pages/chat/chat_page.dart';
import '../../../../generated/l10n.dart';
import '../../../blocs/chat/chat_bloc.dart';
import '../../../blocs/sale_history/sale_history_bloc.dart';
import '../../../common/ui/loading.dart';
import '../../../common/ui/primary_button.dart';
import '../../../common/utils/custom_route_animations.dart';
import '../../../common/utils/palette.dart';
import '../../../constants/constants.dart';
import '../../../cubits/buy/buy_cubit.dart';
import '../../../data/shared_preferences/shared_preferences_service.dart';
import '../../../di/injector.dart';
import '../../../common/utils/utils.dart';
import '../../../models/buy_for_sale_listing/buy_for_sale_listing_model.dart';
import '../../../models/buy_for_sale_listing/update_purchase_status_request.dart';
import '../../../models/detail/detail_collection_model.dart';
import '../../../models/overlay_buton/overlay_button_model.dart';
import '../collection/edit_list_for_Sale_page.dart';
import '../collection/footer_list_item_page.dart';
import '../collection/widgets/custom_overlay_button.dart';
import 'buyer_complete_purchase_pop_up.dart';
import 'multi_image_slide_buy_preview.dart';
import 'package:share_plus/share_plus.dart';

import 'seller_cancel_purchase_pop_up.dart';

class BuyPreviewPage extends StatefulWidget {
  static const name = '/BuyPreviewPage';

  const BuyPreviewPage({super.key, this.productItemId});

  final String? productItemId;

  static Route route({String? productItemId}) => PageRoutes.material(
        settings: const RouteSettings(name: name),
        builder: (context) => BuyPreviewPage(productItemId: productItemId),
      );

  @override
  State<BuyPreviewPage> createState() => _BuyPreviewPageState();
}

class _BuyPreviewPageState extends State<BuyPreviewPage> {
  ProfileModel profileData = getIt<PreferenceRepositoryService>().profileData();

  List<CustomOverlayItemModel> overlayItems = [];
  late DetailCollectionModel collectionModel;
  List<File> tempFiles = [];
  late SalesHistoryListModel salesHistoryList;
  String? profileURL;
  String? defaultImage;

  BuyForSaleListingModel listData =
      const BuyForSaleListingModel(productItemImageUrls: ['']);

  @override
  void initState() {
    getIt<BuyCubit>().getListDetailItem(widget.productItemId ?? '');
    super.initState();
  }

  String? listingChatId;

  @override
  void dispose() {
    super.dispose();
  }

  getSalesHistory() async {
    var catalogItemId = listData.catalogItemId;
    salesHistoryList = await getIt<SalesHistoryBloc>()
        .salesHistoryService
        .salesHistory(catalogItemId ?? "");
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        resizeToAvoidBottomInset: true,
        backgroundColor: Palette.current.primaryEerieBlack,
        appBar: CustomAppBar(),
        body: BlocListener<BuyCubit, BuyStateCubit>(
            listener: (context, state) => state.maybeWhen(
                  orElse: () {
                    return null;
                  },
                  loading: (bool loadin) {
                    return loadin
                        ? Loading.show(context)
                        : Loading.hide(context);
                  },
                  loadedListDetailItem:
                      (BuyForSaleListingModel listDataResponse) {
                    setState(() {
                      listData = listDataResponse;
                      getSalesHistory();

                      if (listData.submitPurchaseInfo != null) {
                        if (listData.submitPurchaseInfo!.avatarBuyer !=
                            'CUSTOM') {
                          var data = imagesList.where((avatar) => (avatar["id"]
                              .contains(
                                  listData.submitPurchaseInfo!.avatarBuyer ??
                                      profileData.useAvatar)));

                          defaultImage = data.first['url'];
                        } else {
                          profileURL = listData
                                  .submitPurchaseInfo!.avatarBuyerUrl ??
                              'https://firebasestorage.googleapis.com/v0/b/platzitrips-c4e10.appspot.com/o/Franklin.png?alt=media&token=c1073f88-74c2-44c8-a287-fbe0caebf878';
                        }
                      }

                      (profileData.accountId == listData.profileId)
                          ? overlayItems = editListingDropDown
                          : overlayItems = reportListingDropDown;
                    });
                    return null;
                  },
                ),
            child: listData.productItemId == null
                ? Container()
                : Container(
                    constraints: BoxConstraints(
                        minHeight: MediaQuery.of(context).size.height * 0.9,
                        maxHeight: MediaQuery.of(context).size.height),
                    child: Stack(
                      children: [
                        LayoutBuilder(builder: (context, viewportConstraints) {
                          String productItemName =
                              listData.productItemName ?? "";
                          String condition = listData.condition ?? "";

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
                                    imgList: listData.productItemImageUrls,
                                  ),
                                  const SizedBox(height: 4),
                                  Padding(
                                    padding: const EdgeInsets.symmetric(
                                        horizontal: 20),
                                    child: Column(
                                      crossAxisAlignment:
                                          CrossAxisAlignment.stretch,
                                      children: [
                                        Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.start,
                                          crossAxisAlignment:
                                              CrossAxisAlignment.start,
                                          children: [
                                            Expanded(
                                                flex: 6,
                                                child: Text(
                                                    productItemName
                                                        .toUpperCase(),
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
                                                                .current
                                                                .white))),
                                            Expanded(
                                                flex: 2,
                                                child: Align(
                                                  alignment:
                                                      Alignment.centerRight,
                                                  child: IconButton(
                                                    icon: Image.asset(
                                                      "assets/images/share.png",
                                                      scale: 3.5,
                                                    ),
                                                    onPressed: () async {
                                                      Share.share(
                                                        '$shareListingUrl${listData.catalogItemId}',
                                                      );
                                                    },
                                                  ),
                                                )),
                                            Expanded(
                                                flex: 1,
                                                child: Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: CustomOverlayButton(
                                                    icon: Image.asset(
                                                      "assets/images/more-horizontal.png",
                                                      scale: 2,
                                                    ),
                                                    items: overlayItems,
                                                    onItemSelected:
                                                        (String value) {
                                                      if (value ==
                                                          editListingDropDown[0]
                                                              .label) {
                                                        getIt<ListingProfileCubit>()
                                                            .listingService
                                                            .updateListing(
                                                                ListingForSaleModel(
                                                              productItemId:
                                                                  listData
                                                                      .productItemId,
                                                              forSale: true,
                                                              sold: false,
                                                              status: 'Editing',
                                                            ));
                                                        Navigator.of(context, rootNavigator: true).push(EditListForSalePage.route(
                                                            DetailCollectionModel(
                                                                profileCollectionItemId:
                                                                    listData.productItemId ??
                                                                        '',
                                                                catalogItemId:
                                                                    listData.catalogItemId ??
                                                                        '',
                                                                description:
                                                                    listData
                                                                        .productItemDescription,
                                                                purchaseDate:
                                                                    '',
                                                                purchasePrice:
                                                                    listData.lastSale ??
                                                                        0.0,
                                                                itemCondition: listData
                                                                        .condition ??
                                                                    'condition',
                                                                itemSource: ''),
                                                            listData
                                                                .productItemId,
                                                            listData.productItemName ??
                                                                '',
                                                            listData
                                                                .productItemImageUrls,
                                                            salesHistoryList));
                                                      } else if (value ==
                                                          editListingDropDown[1]
                                                              .label) {
                                                        showDialog(
                                                            context: context,
                                                            barrierDismissible:
                                                                false,
                                                            builder:
                                                                (BuildContext
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
                                                                model: listData,
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
                                              '${S.of(context).for_sale}: ${decimalDigitsLastSalePrice(listData.lastSale.toString())} ',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodySmall!
                                                  .copyWith(
                                                      fontWeight:
                                                          FontWeight.w300,
                                                      color: Palette.current
                                                          .primaryNeonGreen)),
                                        ),
                                        const SizedBox(height: 14),
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
                                                          fontWeight:
                                                              FontWeight.w300,
                                                          color: Palette.current
                                                              .primaryWhiteSmoke)),
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            Visibility(
                                              visible: listData
                                                      .peerToPeerPaymentOptions!
                                                      .venmoUser !=
                                                  null,
                                              child: Image.asset(
                                                'assets/icons/venmo_icon.png',
                                                scale: 4,
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            Visibility(
                                              visible: listData
                                                      .peerToPeerPaymentOptions!
                                                      .cashTag !=
                                                  null,
                                              child: Image.asset(
                                                'assets/icons/cash_app_icon.png',
                                                scale: 4,
                                              ),
                                            ),
                                            const SizedBox(
                                              width: 10,
                                            ),
                                            Visibility(
                                              visible: listData
                                                      .peerToPeerPaymentOptions!
                                                      .payPalEmail !=
                                                  null,
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
                                              "Condition: ${condition.capitalize()}",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodySmall!
                                                  .copyWith(
                                                      fontWeight:
                                                          FontWeight.w300,
                                                      color: Palette.current
                                                          .primaryNeonPink)),
                                        ),
                                        const SizedBox(height: 10),
                                        Container(
                                          padding: const EdgeInsets.only(
                                              right: 50.0),
                                          child: Text(
                                              '${listData.productItemDescription}',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodySmall!
                                                  .copyWith(
                                                    fontSize: 15,
                                                    letterSpacing: 0.3,
                                                    color: Palette.current
                                                        .primaryWhiteSmoke,
                                                  )),
                                        ),
                                        const SizedBox(height: 30),
                                        (profileData.accountId !=
                                                listData.profileId)
                                            ? Column(
                                                children: [
                                                  FooterListItemPage(
                                                    productItemId: this
                                                            .listData
                                                            .productItemId ??
                                                        '',
                                                    showChatButton: true,
                                                    avatar: profileURL ??
                                                        defaultImage,
                                                    username: listData
                                                        .submitPurchaseInfo
                                                        ?.userNameBuyer,
                                                  ),
                                                  const SizedBox(height: 30),
                                                  Visibility(
                                                      visible:
                                                          listData.status ==
                                                              'listed',
                                                      child: PrimaryButton(
                                                        title:
                                                            '${S.of(context).buy_for}  ${decimalDigitsLastSalePrice(listData.lastSale.toString())}',
                                                        onPressed: () {
                                                          showDialog(
                                                            context: context,
                                                            barrierDismissible:
                                                                false,
                                                            builder: (BuildContext
                                                                    context) =>
                                                                BuyerCompletePurchasePopUp(
                                                              payments: listData
                                                                  .peerToPeerPaymentOptions!,
                                                              productItemId:
                                                                  listData
                                                                      .productItemId,
                                                            ),
                                                          );
                                                        },
                                                        type: PrimaryButtonType
                                                            .green,
                                                      )),
                                                  Visibility(
                                                      visible: (listData
                                                                  .status ==
                                                              'pendingSellerConfirmation' ||
                                                          listData.status ==
                                                              'pendingPayment'),
                                                      child: PrimaryButton(
                                                        title: S
                                                            .of(context)
                                                            .sale_pending_btn
                                                            .toUpperCase(),
                                                        onPressed: () {},
                                                        type: PrimaryButtonType
                                                            .grey,
                                                      )),
                                                  const SizedBox(height: 30),
                                                ],
                                              )
                                            : Column(
                                                children: [
                                                  Visibility(
                                                    visible: listData.status ==
                                                        'listed',
                                                    child: Column(
                                                      children: [
                                                        FooterListItemPage(
                                                          productItemId: this
                                                                  .listData
                                                                  .productItemId ??
                                                              '',
                                                          showChatButton: (profileData
                                                                      .accountId !=
                                                                  listData
                                                                      .profileId)
                                                              ? true
                                                              : false,
                                                          avatar: profileURL ??
                                                              defaultImage,
                                                          username: listData
                                                              .submitPurchaseInfo
                                                              ?.userNameBuyer,
                                                        ),
                                                        const SizedBox(
                                                            height: 30),
                                                        PrimaryButton(
                                                          title:
                                                              '${S.of(context).buy_for}  ${decimalDigitsLastSalePrice(listData.lastSale.toString())}',
                                                          onPressed: null,
                                                          type:
                                                              PrimaryButtonType
                                                                  .grey,
                                                        ),
                                                      ],
                                                    ),
                                                  ),
                                                  (listData.submitPurchaseInfo !=
                                                              null &&
                                                          listData.status !=
                                                              'listed')
                                                      ? Column(
                                                          children: [
                                                            Container(
                                                              padding: const EdgeInsets
                                                                      .symmetric(
                                                                  horizontal:
                                                                      15,
                                                                  vertical: 20),
                                                              width:
                                                                  MediaQuery.of(
                                                                          context)
                                                                      .size
                                                                      .width,
                                                              decoration: BoxDecoration(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              5),
                                                                  border: Border.all(
                                                                      color: Palette
                                                                          .current
                                                                          .primaryNeonGreen),
                                                                  color: Colors
                                                                      .transparent),
                                                              child: Row(
                                                                children: [
                                                                  Expanded(
                                                                    flex: 1,
                                                                    child:
                                                                        Align(
                                                                      alignment:
                                                                          Alignment
                                                                              .centerLeft,
                                                                      child:
                                                                          SizedBox(
                                                                        height:
                                                                            40,
                                                                        width:
                                                                            40,
                                                                        child:
                                                                            CircleAvatar(
                                                                          backgroundColor:
                                                                              Colors.transparent,
                                                                          backgroundImage:
                                                                              const AssetImage('assets/images/Avatar.png'),
                                                                          foregroundImage: profileURL != null
                                                                              ? NetworkImage('$profileURL')
                                                                              : NetworkImage('$defaultImage'),
                                                                          radius:
                                                                              75,
                                                                        ),
                                                                      ),
                                                                    ),
                                                                  ),
                                                                  const SizedBox(
                                                                    width: 10.0,
                                                                  ),
                                                                  Expanded(
                                                                      flex: 8,
                                                                      child:
                                                                          Column(
                                                                        children: [
                                                                          Align(
                                                                            alignment:
                                                                                Alignment.centerLeft,
                                                                            child:
                                                                                Text('@${listData.submitPurchaseInfo!.userNameBuyer} ${S.of(context).seller_buy_message} ${listData.productItemName}', style: Theme.of(context).textTheme.bodySmall!.copyWith(fontWeight: FontWeight.w400, fontSize: 14.0, color: Palette.current.primaryWhiteSmoke)),
                                                                          ),
                                                                        ],
                                                                      ))
                                                                ],
                                                              ),
                                                            ),
                                                            const SizedBox(
                                                              height: 3,
                                                            ),
                                                            RichText(
                                                              text: TextSpan(
                                                                  children: [
                                                                    TextSpan(
                                                                        text:
                                                                            '@${listData.submitPurchaseInfo!.userNameBuyer} will paying using ',
                                                                        style:
                                                                            TextStyle(
                                                                          fontSize:
                                                                              12,
                                                                          color: Palette
                                                                              .current
                                                                              .darkGray,
                                                                        )),
                                                                    TextSpan(
                                                                        text: listData.submitPurchaseInfo!.profilePeerToPeerPayment!.cashTag !=
                                                                                null
                                                                            ? 'CashApp'
                                                                            : listData.submitPurchaseInfo!.profilePeerToPeerPayment!.venmoUser != null
                                                                                ? 'Venmo'
                                                                                : listData.submitPurchaseInfo!.profilePeerToPeerPayment!.payPalEmail != null
                                                                                    ? 'PayPal'
                                                                                    : '',
                                                                        style: TextStyle(
                                                                          fontSize:
                                                                              12,
                                                                          color: Palette
                                                                              .current
                                                                              .blueNeon,
                                                                        )),
                                                                  ]),
                                                            ),
                                                            const SizedBox(
                                                                height: 30),
                                                          ],
                                                        )
                                                      : Container(),
                                                  Visibility(
                                                      visible: listData
                                                              .status ==
                                                          'pendingSellerConfirmation',
                                                      child: Column(
                                                        children: [
                                                          PrimaryButton(
                                                            title: S
                                                                .of(context)
                                                                .complete_sale_btn
                                                                .toUpperCase(),
                                                            onPressed:
                                                                () async {
                                                              ChatBloc
                                                                  chatBloc =
                                                                  context.read<
                                                                      ChatBloc>();

                                                              for (int i = 0;
                                                                  i <
                                                                      chatBloc
                                                                          .state
                                                                          .chats
                                                                          .length;
                                                                  i++) {
                                                                if (chatBloc
                                                                    .state
                                                                    .chats[i]
                                                                    .channel
                                                                    .data!
                                                                    .isNotEmpty) {
                                                                  String
                                                                      jsonString =
                                                                      chatBloc
                                                                          .state
                                                                          .chats[
                                                                              i]
                                                                          .channel
                                                                          .data!;

                                                                  jsonString = jsonString
                                                                      .replaceAll(
                                                                          "'",
                                                                          '"');

                                                                  Map<String,
                                                                          dynamic>
                                                                      json =
                                                                      jsonDecode(
                                                                          jsonString);

                                                                  String
                                                                      productItemId =
                                                                      json[
                                                                          'productItemId'];

                                                                  if (listData
                                                                          .productItemId ==
                                                                      productItemId) {
                                                                    setState(
                                                                        () {
                                                                      listingChatId = chatBloc
                                                                          .state
                                                                          .chats[
                                                                              i]
                                                                          .channel
                                                                          .channelUrl;
                                                                    });

                                                                    break;
                                                                  }
                                                                }
                                                              }

                                                              await getIt<BuyCubit>().acceptPurchase(UpdatePurchaseStatusRequestModel(
                                                                  productItemId:
                                                                      listData
                                                                          .productItemId,
                                                                  listingChatId:
                                                                      listingChatId));

                                                              ChatData
                                                                  chadData =
                                                                  await context
                                                                      .read<
                                                                          ChatBloc>()
                                                                      .startNewChat(
                                                                          listingChatId ??
                                                                              '',
                                                                          false);

                                                              Navigator.push(
                                                                context,
                                                                MaterialPageRoute(
                                                                    builder: (BuildContext
                                                                            context) =>
                                                                        ChatPage(
                                                                            chatData:
                                                                                chadData)),
                                                              );
                                                            },
                                                            type:
                                                                PrimaryButtonType
                                                                    .green,
                                                          ),
                                                          const SizedBox(
                                                              height: 20),
                                                          PrimaryButton(
                                                            title: S
                                                                .of(context)
                                                                .cancel_sale_btn
                                                                .toUpperCase(),
                                                            onPressed: () {
                                                              setState(() {
                                                                ChatBloc
                                                                    chatBloc =
                                                                    context.read<
                                                                        ChatBloc>();

                                                                for (int i = 0;
                                                                    i <
                                                                        chatBloc
                                                                            .state
                                                                            .chats
                                                                            .length;
                                                                    i++) {
                                                                  if (chatBloc
                                                                      .state
                                                                      .chats[i]
                                                                      .channel
                                                                      .data!
                                                                      .isNotEmpty) {
                                                                    String jsonString = chatBloc
                                                                        .state
                                                                        .chats[
                                                                            i]
                                                                        .channel
                                                                        .data!;

                                                                    jsonString =
                                                                        jsonString.replaceAll(
                                                                            "'",
                                                                            '"');

                                                                    Map<String,
                                                                            dynamic>
                                                                        json =
                                                                        jsonDecode(
                                                                            jsonString);

                                                                    String
                                                                        productItemId =
                                                                        json[
                                                                            'productItemId'];

                                                                    if (listData
                                                                            .productItemId ==
                                                                        productItemId) {
                                                                      setState(
                                                                          () {
                                                                        listingChatId = chatBloc
                                                                            .state
                                                                            .chats[i]
                                                                            .channel
                                                                            .channelUrl;
                                                                      });

                                                                      break;
                                                                    }
                                                                  }
                                                                }
                                                              });

                                                              showDialog(
                                                                  context:
                                                                      context,
                                                                  barrierDismissible:
                                                                      false,
                                                                  builder: (BuildContext
                                                                          context) =>
                                                                      SellerCancelPurchasePopUp(
                                                                        productItemId:
                                                                            listData.productItemId,
                                                                        listingChatId:
                                                                            listingChatId,
                                                                      ));
                                                            },
                                                            type:
                                                                PrimaryButtonType
                                                                    .pink,
                                                          )
                                                        ],
                                                      )),
                                                  Visibility(
                                                      visible:
                                                          listData.status ==
                                                              'pendingPayment',
                                                      child: Column(
                                                        children: [
                                                          PrimaryButton(
                                                            title: S
                                                                .of(context)
                                                                .pending_sale_btn
                                                                .toUpperCase(),
                                                            onPressed: null,
                                                            type:
                                                                PrimaryButtonType
                                                                    .grey,
                                                          ),
                                                          const SizedBox(
                                                              height: 20),
                                                          PrimaryButton(
                                                            title: S
                                                                .of(context)
                                                                .cancel_sale_btn
                                                                .toUpperCase(),
                                                            onPressed: () {
                                                              setState(() {
                                                                ChatBloc
                                                                    chatBloc =
                                                                    context.read<
                                                                        ChatBloc>();

                                                                for (int i = 0;
                                                                    i <
                                                                        chatBloc
                                                                            .state
                                                                            .chats
                                                                            .length;
                                                                    i++) {
                                                                  if (chatBloc
                                                                      .state
                                                                      .chats[i]
                                                                      .channel
                                                                      .data!
                                                                      .isNotEmpty) {
                                                                    String jsonString = chatBloc
                                                                        .state
                                                                        .chats[
                                                                            i]
                                                                        .channel
                                                                        .data!;

                                                                    jsonString =
                                                                        jsonString.replaceAll(
                                                                            "'",
                                                                            '"');

                                                                    Map<String,
                                                                            dynamic>
                                                                        json =
                                                                        jsonDecode(
                                                                            jsonString);

                                                                    String
                                                                        productItemId =
                                                                        json[
                                                                            'productItemId'];

                                                                    if (listData
                                                                            .productItemId ==
                                                                        productItemId) {
                                                                      setState(
                                                                          () {
                                                                        listingChatId = chatBloc
                                                                            .state
                                                                            .chats[i]
                                                                            .channel
                                                                            .channelUrl;
                                                                      });
                                                                      break;
                                                                    }
                                                                  }
                                                                }
                                                              });

                                                              showDialog(
                                                                  context:
                                                                      context,
                                                                  barrierDismissible:
                                                                      false,
                                                                  builder: (BuildContext
                                                                          context) =>
                                                                      SellerCancelPurchasePopUp(
                                                                        productItemId:
                                                                            listData.productItemId,
                                                                        listingChatId:
                                                                            listingChatId,
                                                                      ));
                                                            },
                                                            type:
                                                                PrimaryButtonType
                                                                    .pink,
                                                          )
                                                        ],
                                                      )),
                                                  const SizedBox(height: 30),
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
                  )));
  }
}
