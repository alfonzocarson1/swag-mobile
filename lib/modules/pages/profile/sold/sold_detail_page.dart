import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swagapp/modules/common/ui/custom_app_bar.dart';

import 'package:swagapp/modules/models/profile/profile_model.dart';

import '../../../../generated/l10n.dart';
import '../../../common/ui/loading.dart';
import '../../../common/utils/custom_route_animations.dart';
import '../../../common/utils/palette.dart';

import '../../../common/utils/utils.dart';
import '../../../cubits/public_profile/public_profile_cubit.dart';
import '../../../cubits/sold/get_sold_cubit.dart';
import '../../../data/shared_preferences/shared_preferences_service.dart';
import '../../../di/injector.dart';

import '../../../models/sold/product_item_sold.dart';
import '../../add/buy/multi_image_slide_buy_preview.dart';

class SoldDetailPage extends StatefulWidget {
  static const name = '/SoldDetailPage';

  const SoldDetailPage({super.key, this.productItemId});

  final String? productItemId;

  static Route route({String? productItemId}) => PageRoutes.material(
        settings: const RouteSettings(name: name),
        builder: (context) => SoldDetailPage(productItemId: productItemId),
      );

  @override
  State<SoldDetailPage> createState() => _SoldDetailPageState();
}

class _SoldDetailPageState extends State<SoldDetailPage> {
  ProfileModel profileData = getIt<PreferenceRepositoryService>().profileData();

  ProductItemSold soldItemData = const ProductItemSold(
      productItemId: '', productItemImageUrls: [], productItemName: '');

  String? profileURL;
  String? defaultImage;

  @override
  void initState() {
    getIt<SoldProfileCubit>()
        .getDetailProductItemsSold(widget.productItemId ?? '');
    super.initState();
  }

  String? listingChatId;

  @override
  void dispose() {
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        resizeToAvoidBottomInset: true,
        backgroundColor: Palette.current.primaryEerieBlack,
        appBar: CustomAppBar(),
        body: BlocListener<SoldProfileCubit, SoldCubitState>(
            listener: (context, state) => state.maybeWhen(
                  orElse: () {
                    return null;
                  },
                  loadedSoldDetailItem: (ProductItemSold dataSoldDetail) {
                    setState(() {
                      soldItemData = dataSoldDetail;

                      context.read<PublicProfileCubit>().loadProfile(
                            soldItemData.submitPurchaseInfo!.buyerAccountId ??
                                '',
                          );

                      if (soldItemData.submitPurchaseInfo != null) {
                        if (soldItemData.submitPurchaseInfo!.avatarBuyer !=
                            'CUSTOM') {
                          var data = imagesList.where((avatar) => (avatar["id"]
                              .contains(soldItemData
                                      .submitPurchaseInfo!.avatarBuyer ??
                                  profileData.useAvatar)));

                          defaultImage = data.first['url'];
                        } else {
                          profileURL = soldItemData
                                  .submitPurchaseInfo!.avatarBuyerUrl ??
                              'https://firebasestorage.googleapis.com/v0/b/platzitrips-c4e10.appspot.com/o/Franklin.png?alt=media&token=c1073f88-74c2-44c8-a287-fbe0caebf878';
                        }
                      }
                    });
                    return null;
                  },
                ),
            child: soldItemData.profileId == null
                ? Container()
                : Container(
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
                                    imgList: soldItemData.productItemImageUrls,
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
                                                      soldItemData
                                                          .productItemName
                                                          .toUpperCase(),
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .displayLarge!
                                                          .copyWith(
                                                              letterSpacing: 1,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w300,
                                                              fontFamily:
                                                                  "KnockoutCustom",
                                                              fontSize: 30,
                                                              color: Palette
                                                                  .current
                                                                  .white))),
                                            ],
                                          ),
                                          const SizedBox(height: 10),
                                          Align(
                                            alignment: Alignment.centerLeft,
                                            child: Text(
                                                '${S.of(context).for_sale}: ${decimalDigitsLastSalePrice(soldItemData.lastSale.toString())} ',
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
                                                            color: Palette
                                                                .current
                                                                .primaryWhiteSmoke)),
                                              ),
                                              const SizedBox(
                                                width: 10,
                                              ),
                                              Visibility(
                                                visible: soldItemData
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
                                                visible: soldItemData
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
                                                visible: soldItemData
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
                                                "Condition: ${soldItemData.condition!.capitalize()}",
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
                                                '${soldItemData.productItemDescription}',
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
                                          Column(
                                            children: [
                                              Container(
                                                padding:
                                                    const EdgeInsets.symmetric(
                                                        horizontal: 15,
                                                        vertical: 20),
                                                width: MediaQuery.of(context)
                                                    .size
                                                    .width,
                                                decoration: BoxDecoration(
                                                    borderRadius:
                                                        BorderRadius.circular(
                                                            5),
                                                    border: Border.all(
                                                        color: Palette.current
                                                            .primaryNeonGreen),
                                                    color: Colors.transparent),
                                                child: Row(
                                                  children: [
                                                    Expanded(
                                                      flex: 2,
                                                      child: Align(
                                                        alignment: Alignment
                                                            .centerLeft,
                                                        child: Stack(
                                                          children: [
                                                            SizedBox(
                                                              height: 50,
                                                              width: 50,
                                                              child:
                                                                  CircleAvatar(
                                                                backgroundColor:
                                                                    Colors
                                                                        .transparent,
                                                                backgroundImage:
                                                                    const AssetImage(
                                                                        'assets/images/Avatar.png'),
                                                                foregroundImage: profileURL !=
                                                                        null
                                                                    ? NetworkImage(
                                                                        '$profileURL')
                                                                    : NetworkImage(
                                                                        '$defaultImage'),
                                                                radius: 75,
                                                              ),
                                                            ),
                                                            BlocConsumer<
                                                                PublicProfileCubit,
                                                                PublicProfileState>(
                                                              listener:
                                                                  (context,
                                                                      state) {},
                                                              builder: (context,
                                                                  state) {
                                                                return state
                                                                    .maybeWhen(
                                                                  error: (e,
                                                                          previousData) =>
                                                                      Center(
                                                                    child: Text(
                                                                      "Error loading profile: $e",
                                                                      style: Theme.of(
                                                                              context)
                                                                          .textTheme
                                                                          .bodySmall!
                                                                          .copyWith(
                                                                            color:
                                                                                Palette.current.primaryNeonPink,
                                                                          ),
                                                                    ),
                                                                  ),
                                                                  loaded: (data) => data
                                                                              .kycverified ??
                                                                          false
                                                                      ? const Positioned(
                                                                          bottom:
                                                                              -1,
                                                                          right:
                                                                              -1,
                                                                          child:
                                                                              Image(
                                                                            image:
                                                                                AssetImage('assets/images/Verifyindicator.png'),
                                                                            width:
                                                                                20,
                                                                            height:
                                                                                20,
                                                                          ))
                                                                      : const SizedBox(),
                                                                  orElse: () {
                                                                    return Container();
                                                                  },
                                                                );
                                                              },
                                                            ),
                                                          ],
                                                        ),
                                                      ),
                                                    ),
                                                    const SizedBox(
                                                      width: 10.0,
                                                    ),
                                                    Expanded(
                                                        flex: 8,
                                                        child: Column(
                                                          children: [
                                                            Align(
                                                              alignment: Alignment
                                                                  .centerLeft,
                                                              child: Text(
                                                                  S.of(context).sold_footer_title(
                                                                      soldItemData
                                                                              .submitPurchaseInfo!
                                                                              .userNameBuyer ??
                                                                          '',
                                                                      soldItemData
                                                                              .soldDate ??
                                                                          ''),
                                                                  style: Theme.of(
                                                                          context)
                                                                      .textTheme
                                                                      .bodySmall!
                                                                      .copyWith(
                                                                          fontWeight: FontWeight
                                                                              .w400,
                                                                          fontSize:
                                                                              14.0,
                                                                          color: Palette
                                                                              .current
                                                                              .primaryWhiteSmoke)),
                                                            ),
                                                          ],
                                                        ))
                                                  ],
                                                ),
                                              ),
                                            ],
                                          ),
                                          const SizedBox(height: 50),
                                        ]),
                                  )
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
