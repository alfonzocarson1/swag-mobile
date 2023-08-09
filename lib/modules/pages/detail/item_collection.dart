import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:swagapp/modules/common/ui/paywall_splash_screen.dart';
import 'package:swagapp/modules/data/detail/i_detail_service.dart';
import 'package:swagapp/modules/models/buy_for_sale_listing/buy_for_sale_listing_model.dart';

import '../../../generated/l10n.dart';
import '../../common/ui/popup_delete_item_collection.dart';
import '../../common/ui/popup_list_item_sale.dart';
import '../../common/ui/primary_button.dart';
import '../../common/utils/palette.dart';
import '../../common/utils/utils.dart';
import '../../cubits/catalog_detail/catalog_detail_cubit.dart';
import '../../cubits/profile/get_profile_cubit.dart';
import '../../data/shared_preferences/shared_preferences_service.dart';
import '../../di/injector.dart';
import '../../models/buy_for_sale_listing/buy_for_sale_listing_response_model.dart';
import '../../models/detail/detail_collection_model.dart';
import '../../models/detail/detail_sale_info_model.dart';
import '../../models/detail/sale_history_model.dart';
import '../../models/notify_when_available/profile_notify_list.dart';
import '../../models/profile/profile_model.dart';
import '../add/buy/buy_for_sale.dart';
import '../add/collection/list_for_sale_page.dart';
import '../login/create_account_page.dart';

late bool hasActiveSubscription;

class CollectionWidget extends StatefulWidget {
  CollectionWidget({
    super.key,
    required this.dataCollection,
    required this.lastSale,
    required this.sale,
    this.available,
    required this.catalogId,
    required this.catalogItemName,
    required this.favorite,
    required this.urlImage,
    required this.addFavorite,
    this.salesHistoryNavigation,
    required this.saleHistoryList,
  });

  final List<DetailCollectionModel>? dataCollection;
  final DetailSaleInfoModel lastSale;
  final bool sale;
  final int? available;
  final String catalogId;
  final String catalogItemName;
  final bool favorite;
  final String urlImage;
  Function(bool) addFavorite;
  VoidCallback? salesHistoryNavigation;
  List<SalesHistoryModel> saleHistoryList;

  @override
  State<CollectionWidget> createState() => _CollectionWidgetState();
}

class _CollectionWidgetState extends State<CollectionWidget> {
  bool isLogged = false;
  ProfileModel? profileData;
  String? profileURL;
  String? defaultImage;
  bool notifyAvailabilityFlagBTN = false;
  bool itemInNotifyList = false;
  bool buttonEnable = true;
  bool oneTine = false;
  Timer? timer;
  List<DetailCollectionModel> newCollectionList = [];
  List<BuyForSaleListingResponseModel> buyForSaleList = [];
  List<DetailCollectionModel> dataCollection = [];

  List<String> ids = [];
  ProfileNotifyList notificationList =
      const ProfileNotifyList(profileNotificationList: []);

  @override
  void initState() {
    getNotificationStatus();
    dataCollection = widget.dataCollection ?? [];
    super.initState();

    timer = Timer(const Duration(seconds: 1), () {
      setState(() {
        if (buyForSaleList.first.saledItemdList.isEmpty) {
          newCollectionList = widget.dataCollection ?? [];
        } else {
          for (final item in buyForSaleList.first.saledItemdList) {
            final index = buyForSaleList.first.saledItemdList.indexOf(item);
            ids.add(buyForSaleList
                .first.saledItemdList[index].profileCollectionItemId!);
          }
          newCollectionList = dataCollection
              .where((item) => !ids.contains(item.profileCollectionItemId))
              .toList();
        }
      });
    });

    isLogged = getIt<PreferenceRepositoryService>().isLogged();
    if (isLogged) {
      getIt<ProfileCubit>().loadProfileResults();
      getProfileAvatar();
    }
    hasActiveSubscription = profileData?.hasActiveSubscription ?? false;
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    timer!.cancel();
  }

  getNotificationStatus() async {
    notificationList = await getIt<IDetailService>().getAvailabilityStatus();
    isInNotifyList(widget.catalogId);
  }

  getProfileAvatar() {
    profileData = getIt<PreferenceRepositoryService>().profileData();

    if (profileData!.useAvatar != 'CUSTOM') {
      var data = imagesList
          .where((avatar) => (avatar["id"].contains(profileData?.useAvatar)));

      defaultImage = data.first['url'];
    } else {
      profileURL = profileData!.avatarUrl ??
          'https://firebasestorage.googleapis.com/v0/b/platzitrips-c4e10.appspot.com/o/Franklin.png?alt=media&token=c1073f88-74c2-44c8-a287-fbe0caebf878';
    }
  }

  bool isInNotifyList(String itemId) {
    itemInNotifyList = notificationList.profileNotificationList
        .any((item) => item.catalogItemId == itemId);
    return itemInNotifyList;
  }

  showToastMessage(String text) {
    return ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        duration: const Duration(seconds: 3),
        behavior: SnackBarBehavior.floating,
        margin: EdgeInsets.only(
          bottom: MediaQuery.of(context).size.height / 1.3,
        ),
        backgroundColor: Colors.transparent,
        content: Row(
          children: <Widget>[
            Flexible(
              child: Container(
                padding: const EdgeInsets.all(18),
                decoration: BoxDecoration(
                    color: Palette.current.blackSmoke,
                    borderRadius: const BorderRadius.all(Radius.circular(5))),
                child: Column(
                  children: <Widget>[
                    Row(
                      children: <Widget>[
                        Flexible(
                          flex: 1,
                          child: Image.asset(
                            scale: 3,
                            "assets/images/Favorite.png",
                          ),
                        ),
                        Flexible(
                            flex: 10,
                            child: Padding(
                              padding: const EdgeInsets.only(left: 20),
                              child: Text(text),
                            )),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ],
        ),
        dismissDirection: DismissDirection.none));
  }

  removePaywall() {
    hasActiveSubscription = true;
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    if (isLogged) {
      Future.delayed(Duration.zero, () {
        getProfileAvatar();
      });
    }

    return Column(
      children: [
        BlocBuilder<CatalogDetailCubit, CatalogDetailState>(
            builder: (context, usernameState) {
          return usernameState.maybeWhen(
            orElse: () => Container(),
            loadedSaledItems: (List<BuyForSaleListingResponseModel> response) {
              List<BuyForSaleListingModel> notifyAvailabilityFlag = [];
              var profileDataModel = profileData;
              if (isLogged && profileDataModel != null) {
                notifyAvailabilityFlag =
                    response.first.saledItemdList.where((i) {
                  return i.profileId != profileDataModel.accountId;
                }).toList();
              }

              WidgetsBinding.instance.addPostFrameCallback((_) {
                setState(() {
                  buyForSaleList = response;
                });
                if (notifyAvailabilityFlag.isEmpty && !itemInNotifyList) {
                  setState(() {
                    notifyAvailabilityFlagBTN = true;
                  });
                } else {
                  setState(() {
                    notifyAvailabilityFlagBTN = false;
                  });
                }
              });

              return Container();
            },
          );
        }),
        const SizedBox(
          height: 30,
        ),
        (isLogged)
            ? Padding(
                padding: const EdgeInsets.only(left: 10),
                child: Row(children: <Widget>[
                  isLogged
                      ? SizedBox(
                          height: 40,
                          width: 40,
                          child: CircleAvatar(
                            backgroundColor: Colors.transparent,
                            backgroundImage:
                                const AssetImage('assets/images/Avatar.png'),
                            foregroundImage: profileURL != null
                                ? NetworkImage('$profileURL')
                                : NetworkImage('$defaultImage'),
                            radius: 75,
                          ),
                        )
                      : Image.asset(
                          "assets/images/Avatar.png",
                          scale: 3,
                        ),
                  const SizedBox(
                    width: 8,
                  ),
                  Text(S.of(context).my_collection,
                      style: Theme.of(context).textTheme.displayLarge!.copyWith(
                          letterSpacing: 1,
                          fontWeight: FontWeight.w300,
                          fontFamily: "KnockoutCustom",
                          fontSize: 28,
                          color: Palette.current.primaryNeonGreen)),
                  const SizedBox(
                    width: 10,
                  ),
                  Expanded(
                      child: Divider(
                    color: Palette.current.grey,
                  )),
                ]),
              )
            : const SizedBox.shrink(),
        (isLogged)
            ? Padding(
                padding: const EdgeInsets.symmetric(horizontal: 20.0),
                child: (!widget.sale && dataCollection.isEmpty)
                    ? Column(
                        children: [
                          const SizedBox(
                            height: 20,
                          ),
                          RichText(
                            text: TextSpan(children: [
                              TextSpan(
                                  text: 'This item is not in your collection. ',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Palette.current.primaryWhiteSmoke,
                                  )),
                              TextSpan(
                                  text: 'Select to be notified ',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Palette.current.blueNeon,
                                  )),
                              TextSpan(
                                  text: 'when one becomes available.',
                                  style: TextStyle(
                                    fontSize: 16,
                                    color: Palette.current.primaryWhiteSmoke,
                                  ))
                            ]),
                          ),
                        ],
                      )
                    : (widget.sale && dataCollection.isEmpty)
                        ? Column(
                            children: [
                              const SizedBox(
                                height: 20,
                              ),
                              Text(S.of(context).collection_message,
                                  style: TextStyle(
                                    fontSize: 15,
                                    color: Palette.current.primaryWhiteSmoke,
                                  )),
                            ],
                          )
                        : const Text(''),
              )
            : const SizedBox.shrink(),
        (dataCollection.isNotEmpty)
            ? Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: dataCollection.isNotEmpty
                    ? Column(
                        children: List.generate(
                            dataCollection.length,
                            (index) => Column(
                                  children: [
                                    ListTile(
                                      visualDensity:
                                          const VisualDensity(vertical: -4),
                                      dense: true,
                                      leading: Text(S.of(context).acquired,
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodySmall!
                                              .copyWith(
                                                fontSize: 16,
                                                color: Palette
                                                    .current.primaryWhiteSmoke,
                                              )),
                                      trailing: Text(
                                          DateFormat.yMd().format(
                                              DateTime.parse(
                                                  dataCollection[index]
                                                      .purchaseDate)),
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodySmall!
                                              .copyWith(
                                                fontSize: 16,
                                                color: Palette
                                                    .current.primaryWhiteSmoke,
                                              )),
                                    ),
                                    ListTile(
                                      visualDensity:
                                          const VisualDensity(vertical: -4),
                                      dense: true,
                                      leading: Text(S.of(context).paid,
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodySmall!
                                              .copyWith(
                                                fontSize: 16,
                                                color: Palette
                                                    .current.primaryWhiteSmoke,
                                              )),
                                      trailing: Text(
                                          decimalDigitsLastSalePrice(
                                              dataCollection[index]
                                                  .purchasePrice
                                                  .toString()),
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodySmall!
                                              .copyWith(
                                                fontSize: 16,
                                                color: Palette
                                                    .current.primaryNeonGreen,
                                              )),
                                    ),
                                    ListTile(
                                      visualDensity:
                                          const VisualDensity(vertical: -4),
                                      dense: true,
                                      leading: Text(
                                          "${S.of(context).condition}:",
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodySmall!
                                              .copyWith(
                                                fontSize: 16,
                                                color: Palette
                                                    .current.primaryWhiteSmoke,
                                              )),
                                      trailing: Text(
                                          dataCollection[index].itemCondition,
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodySmall!
                                              .copyWith(
                                                fontSize: 16,
                                                color: Palette
                                                    .current.primaryNeonPink,
                                              )),
                                    ),
                                    Visibility(
                                      visible:
                                          index != dataCollection.length - 1,
                                      child: Divider(
                                        color: Palette.current.grey,
                                      ),
                                    ),
                                    const SizedBox(
                                      height: 20,
                                    ),
                                  ],
                                )),
                      )
                    : const Text(""),
              )
            : const SizedBox.shrink(),
        const SizedBox(
          height: 20,
        ),
        Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15),
            child: Column(
              children: [
                (widget.sale && !notifyAvailabilityFlagBTN)
                    ? SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: PrimaryButton(
                          title: widget.sale
                              ? widget.available! > 1
                                  ? '${S.of(context).buy_for} ${decimalDigitsLastSalePrice(widget.lastSale.minPrice!)} - ${decimalDigitsLastSalePrice(widget.lastSale.maxPrice!)}'
                                  : '${S.of(context).buy_for} ${decimalDigitsLastSalePrice(widget.lastSale.minPrice!)}'
                              : '${S.of(context).buy_for} ${decimalDigitsLastSalePrice(widget.lastSale.minPrice!)}',
                          onPressed: () {
                            if (isLogged) {
                              Navigator.of(context, rootNavigator: true)
                                  .push(BuyForSale.route(
                                widget.catalogId,
                                widget.catalogItemName,
                                widget.lastSale,
                                widget.urlImage,
                                widget.favorite,
                                widget.sale,
                                widget.available ?? 0,
                                widget.saleHistoryList,
                                (val) {
                                  widget.addFavorite(val);
                                },
                              ));
                            } else {
                              Navigator.of(context, rootNavigator: true)
                                  .push(CreateAccountPage.route());
                            }
                          },
                          type: PrimaryButtonType.green,
                        ),
                      )
                    : Container(),
                const SizedBox(
                  height: 20,
                ),
                (dataCollection.isNotEmpty)
                    ? SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: PrimaryButton(
                          title: S.of(context).list_for_sale_btn,
                          onPressed: () {
                            if (isLogged) {
                              if (hasActiveSubscription) {
                                (newCollectionList.isNotEmpty &&
                                        (newCollectionList.length > 1))
                                    ? showDialog(
                                        context: context,
                                        barrierDismissible: false,
                                        builder: (BuildContext context) {
                                          return PopUpListItemSale(
                                              catalogItemName:
                                                  widget.catalogItemName,
                                              catalogImage: widget.urlImage,
                                              dataCollection:
                                                  newCollectionList);
                                        })
                                    : (newCollectionList.isNotEmpty &&
                                            (newCollectionList.length == 1))
                                        ? Navigator.of(context,
                                                rootNavigator: true)
                                            .push(ListForSalePage.route(
                                                widget.salesHistoryNavigation,
                                                newCollectionList[0],
                                                widget.catalogItemName,
                                                widget.urlImage))
                                        : showToastMessage(
                                            S.of(context).collection_listed);
                              } else {
                                showPaywallSplashScreen(
                                    context: context,
                                    hasUsedFreeTrial:
                                        profileData?.hasUsedFreeTrial ?? false,
                                    removePaywall: removePaywall);
                              }
                            } else {
                              Navigator.of(context, rootNavigator: true)
                                  .push(CreateAccountPage.route());
                            }
                          },
                          type: PrimaryButtonType.black,
                        ),
                      )
                    : Container(),
                const SizedBox(
                  height: 20,
                ),
                (dataCollection.isNotEmpty)
                    ? SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: PrimaryButton(
                          title: S.of(context).remove_collection_btn,
                          onPressed: () {
                            if (isLogged) {
                              showDialog(
                                  context: context,
                                  barrierDismissible: false,
                                  builder: (BuildContext context) {
                                    return PopUpDeleteItemCollection(
                                        dataCollection: dataCollection);
                                  });
                            } else {
                              Navigator.of(context, rootNavigator: true)
                                  .push(CreateAccountPage.route());
                            }
                          },
                          type: PrimaryButtonType.pink,
                        ),
                      )
                    : Container(),
                const SizedBox(
                  height: 20,
                ),
                (widget.sale && !isLogged)
                    ? SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: PrimaryButton(
                          title: widget.sale
                              ? widget.available! > 1
                                  ? '${S.of(context).buy_for} ${decimalDigitsLastSalePrice(widget.lastSale.minPrice!)} - ${decimalDigitsLastSalePrice(widget.lastSale.maxPrice!)}'
                                  : '${S.of(context).buy_for} ${decimalDigitsLastSalePrice(widget.lastSale.minPrice!)}'
                              : '${S.of(context).buy_for} ${decimalDigitsLastSalePrice(widget.lastSale.minPrice!)}',
                          onPressed: () {
                            if (isLogged) {
                              Navigator.of(context, rootNavigator: true)
                                  .push(BuyForSale.route(
                                widget.catalogId,
                                widget.catalogItemName,
                                widget.lastSale,
                                widget.urlImage,
                                widget.favorite,
                                widget.sale,
                                widget.available ?? 0,
                                widget.saleHistoryList,
                                (val) {
                                  widget.addFavorite(val);
                                },
                              ));
                            } else {
                              Navigator.of(context, rootNavigator: true)
                                  .push(CreateAccountPage.route());
                            }
                          },
                          type: PrimaryButtonType.green,
                        ),
                      )
                    : (!widget.sale || notifyAvailabilityFlagBTN)
                        ? SizedBox(
                            width: MediaQuery.of(context).size.width,
                            child: PrimaryButton(
                              title: S.of(context).notify_available,
                              onPressed: () {
                                if (isLogged &&
                                    notifyAvailabilityFlagBTN &&
                                    buttonEnable &&
                                    !itemInNotifyList) {
                                  buttonEnable = false;
                                  if (hasActiveSubscription == true) {
                                    setState(() {});
                                    getIt<CatalogDetailCubit>()
                                        .notifyAvailability(widget.catalogId);
                                    showToastMessage(
                                        S.of(context).notify_availability);
                                  } else {
                                    showPaywallSplashScreen(
                                        context: context,
                                        hasUsedFreeTrial:
                                            profileData?.hasUsedFreeTrial ??
                                                false,
                                        removePaywall: removePaywall);
                                  }
                                } else if (isLogged &&
                                    buttonEnable == false &&
                                    !itemInNotifyList) {
                                  if (hasActiveSubscription == true) {
                                    showToastMessage(S
                                        .of(context)
                                        .notification_already_requested);
                                  } else {
                                    showPaywallSplashScreen(
                                        context: context,
                                        hasUsedFreeTrial:
                                            profileData?.hasUsedFreeTrial ??
                                                false,
                                        removePaywall: removePaywall);
                                  }
                                } else if (!notifyAvailabilityFlagBTN &&
                                    buttonEnable &&
                                    itemInNotifyList) {
                                  if (hasActiveSubscription == true) {
                                    showToastMessage(S
                                        .of(context)
                                        .notification_already_requested);
                                  } else {
                                    Navigator.of(context).push(
                                        MaterialPageRoute(
                                            builder: (context) =>
                                                PaywallSplashScreen(
                                                  hasUsedFreeTrial: false,
                                                  removePaywall: () {
                                                    removePaywall();
                                                  },
                                                )));
                                  }
                                } else if (!isLogged) {
                                  Navigator.of(context, rootNavigator: true)
                                      .push(CreateAccountPage.route());
                                }
                              },
                              type: PrimaryButtonType.primaryEerieBlack,
                            ),
                          )
                        : Container(),
                const SizedBox(
                  height: 50,
                )
              ],
            ))
      ],
    );
  }
}
