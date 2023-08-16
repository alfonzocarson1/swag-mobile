import 'dart:convert';
import 'dart:io';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app_badger/flutter_app_badger.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sendbird_chat_sdk/sendbird_chat_sdk.dart';
import 'package:swagapp/modules/common/utils/sendbird_utils.dart';
import 'package:swagapp/modules/cubits/alert/alert_cubit.dart';
import 'package:swagapp/modules/cubits/chat/chat_cubit.dart';
import 'package:swagapp/modules/pages/alert/rating_buyer.dart';
import '../../../generated/l10n.dart';

import '../../common/ui/loading.dart';
import '../../common/ui/simple_loader.dart';
import '../../common/utils/context_service.dart';
import '../../common/utils/custom_route_animations.dart';
import '../../common/utils/palette.dart';
import '../../common/utils/utils.dart';
import '../../cubits/buy/buy_cubit.dart';
import '../../data/shared_preferences/shared_preferences_service.dart';
import '../../di/injector.dart';
import '../../enums/chat_type.dart';
import '../../enums/listing_status_data.dart';
import '../../models/alerts/alert_response_model.dart';

import '../../models/buy_for_sale_listing/buy_for_sale_listing_model.dart';
import '../../notifications_providers/local_notifications_providers.dart';
import '../add/buy/preview_buy_for_sale.dart';

import '../chat/chatPage.dart';
import '../profile/sold/sold_detail_page.dart';
import '../settings/purchase_history/purchase_history_details/purchase_history_details_page.dart';
import 'delivered_popup.dart';

class AlertPage extends StatefulWidget {
  static const name = '/Alert';
  const AlertPage({Key? key}) : super(key: key);

  static Route route() => PageRoutes.material(
        settings: const RouteSettings(name: name),
        builder: (context) => const AlertPage(),
      );

  @override
  State<AlertPage> createState() => _AlertPageState();
}

class _AlertPageState extends State<AlertPage> {
  int unreadCount = 0;
  String? listingChatId;
  late List<GroupChannel> groupChannelList;
  bool loading = true;

  @override
  void initState() {
    getIt<AlertCubit>().getAlertList();

    // TODO: implement initState
    super.initState();
  }

  getChannelsList() async {
    groupChannelList = await getIt<ChatCubit>().loadGroupChannels();
  }

  // Simular la carga de datos

  AlertResponseModel? alertList;

  Future<void> _refreshList() async {
    // Simular la carga de datos
    await Future.delayed(Duration(seconds: 2));
    getIt<AlertCubit>().getAlertList();
    setState(() {});
  }

  Future<void> onTapSubmit(String channelUrl) async {
    late GroupChannel chatData;
    try {
      await Future.delayed(const Duration(milliseconds: 500));
      chatData = await getIt<ChatCubit>().startChat(channelUrl);

      Loading.hide(context);
      if (Platform.isIOS) {
        await FirebaseMessaging.instance
            .setForegroundNotificationPresentationOptions(
          alert: false,
          badge: false,
          sound: false,
        );
      }
      getIt<PreferenceRepositoryService>().saveShowNotification(false);
      await Navigator.of(context, rootNavigator: true).push(
        MaterialPageRoute(
            builder: (BuildContext context) => ChatPage(channel: chatData),
            settings: const RouteSettings(name: '/ChatPage')),
      );
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    getChannelsList();
    return Scaffold(
        extendBodyBehindAppBar: true,
        resizeToAvoidBottomInset: true,
        backgroundColor: Palette.current.blackSmoke,
        body: BlocListener<AlertCubit, AlertStateCubit>(
            listener: (context, state) => state.maybeWhen(
                  orElse: () {
                    return null;
                  },
                  loadedAlertList: (AlertResponseModel listAlert) {
                    setState(() {
                      this.unreadCount = 0;
                      alertList = listAlert;
                      this.loading = false;
                      for (var alert in alertList!.alertList) {
                        if (alert.read == false) {
                          unreadCount++;
                        }
                      }
                      getIt<PreferenceRepositoryService>()
                          .setUnreadAlertCount(unreadCount);
                      FlutterAppBadger.updateBadgeCount(unreadCount);
                    });
                    return null;
                  },
                  error: (String message) {
                    setState(() {
                      this.loading = false;
                    });
                    return Container();
                  },
                ),
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20, right: 20, top: 70),
                  child: Row(
                    children: [
                      Expanded(
                        flex: 8,
                        child: Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                            S.of(context).alert_center_title,
                            textAlign: TextAlign.left,
                            style: Theme.of(context)
                                .textTheme
                                .displayMedium!
                                .copyWith(
                                  fontFamily: "KnockoutCustom",
                                  fontSize: 30,
                                  fontWeight: FontWeight.w300,
                                  color: Palette.current.primaryNeonGreen,
                                ),
                          ),
                        ),
                      ),
                      (alertList != null && alertList!.alertList.isNotEmpty)
                          ? Expanded(
                              flex: 3,
                              child: Align(
                                alignment: Alignment.centerRight,
                                child: Text(
                                  '$unreadCount ${S.of(context).unread}',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall!
                                      .copyWith(
                                        fontSize: 15,
                                        fontWeight: unreadCount > 0
                                            ? FontWeight.w400
                                            : FontWeight.w300,
                                        letterSpacing:
                                            unreadCount > 0 ? 0.5 : 0.3,
                                        color: Palette.current.primaryNeonPink,
                                      ),
                                ),
                              ),
                            )
                          : const SizedBox(),
                    ],
                  ),
                ),
                const SizedBox(height: 20),
                loading
                    ? const SimpleLoader()
                    : (alertList != null && alertList!.alertList.isNotEmpty)
                        ? Expanded(
                            child: RefreshIndicator(
                              onRefresh: _refreshList,
                              child: ListView.separated(
                                padding: const EdgeInsets.only(top: 0),
                                itemCount: alertList!.alertList.length,
                                separatorBuilder: (context, index) => SizedBox(
                                  height: 0.2,
                                  child: Container(
                                    color: Palette.current.grey,
                                  ),
                                ),
                                itemBuilder: (context, index) {
                                  final item = alertList!.alertList[index];
                                  return ListTile(
                                    onTap: () async {
                                      getIt<AlertCubit>().readAlert(
                                          item.notificationAlertId ?? '');

                                      BuyForSaleListingModel?
                                          alertListinStatus =
                                          await getIt<BuyCubit>()
                                              .getAlertListDetailItem(
                                                  item.payload!.productItemId ??
                                                      '');

                                      if (item.typeNotification ==
                                          ListingStatusDataType
                                              .notifyChatP2P.textValue) {
                                        Loading.show(context);
                                        onTapSubmit(
                                            alertListinStatus!.status ?? '');
                                      }

                                      if ((item.typeNotification ==
                                              ChatType.notifyMe.textValue) &&
                                          (alertListinStatus!.status ==
                                                  ListingStatusDataType
                                                      .removed.textValue ||
                                              alertListinStatus!.status ==
                                                  ListingStatusDataType
                                                      .editing.textValue)) {
                                        LocalNotificationProvider
                                            .showInAppAllert(
                                                'Listing unavailable');
                                      }

                                      if (alertListinStatus!.status ==
                                          ListingStatusDataType
                                              .pendingSellerConfirmation
                                              .textValue) {
                                        Navigator.of(context,
                                                rootNavigator: true)
                                            .push(MaterialPageRoute(
                                                builder: (context) =>
                                                    BuyPreviewPage(
                                                      productItemId: item
                                                          .payload!
                                                          .productItemId,
                                                    )));
                                      }

                                      if (item.typeNotification ==
                                              ChatType.notifyMe.textValue &&
                                          alertListinStatus.status ==
                                              ListingStatusDataType
                                                  .listed.textValue) {
                                        Navigator.of(context,
                                                rootNavigator: true)
                                            .push(MaterialPageRoute(
                                                builder: (context) =>
                                                    BuyPreviewPage(
                                                      productItemId: item
                                                          .payload!
                                                          .productItemId,
                                                    )));
                                      }

                                      if (alertListinStatus.status ==
                                              ListingStatusDataType
                                                  .paid.textValue ||
                                          alertListinStatus.status ==
                                              ListingStatusDataType
                                                  .pendingPayment.textValue ||
                                          alertListinStatus.status ==
                                              ListingStatusDataType.paymentReceived
                                                  .textValue ||
                                          alertListinStatus.status ==
                                              ListingStatusDataType
                                                  .shipped.textValue ||
                                          (item.typeNotification !=
                                                  ChatType.notifyMe.textValue &&
                                              (alertListinStatus.status ==
                                                      ListingStatusDataType
                                                          .listed.textValue ||
                                                  alertListinStatus!.status ==
                                                      ListingStatusDataType
                                                          .editing.textValue ||
                                                  alertListinStatus!.status ==
                                                      ListingStatusDataType
                                                          .removed
                                                          .textValue))) {
                                        String productItemId =
                                            item.payload!.productItemId ?? "";
                                        String listingImageUrl =
                                            item.payload!.listingImageUrl ?? "";

                                        String channelUrl =
                                            SendBirdUtils.getListingChatUrl(
                                                groupChannelList,
                                                productItemId,
                                                listingImageUrl);
                                        Loading.show(context);
                                        onTapSubmit(channelUrl);
                                      }

                                      if (alertListinStatus.status ==
                                          ListingStatusDataType
                                              .received.textValue) {
                                        Navigator.of(context,
                                                rootNavigator: true)
                                            .push(MaterialPageRoute(
                                                builder: (context) =>
                                                    SoldDetailPage(
                                                      productItemId: item
                                                              .payload!
                                                              .productItemId ??
                                                          '',
                                                    )));

                                        await Future.delayed(
                                            const Duration(milliseconds: 1000),
                                            () {});
                                        showDialog(
                                            context: context,
                                            barrierDismissible: false,
                                            builder: (BuildContext context) {
                                              return RatingBuyer(
                                                productItemId: item.payload!
                                                        .productItemId ??
                                                    '',
                                                purchaseHistoryId: item.payload!
                                                        .purchaseHistoryId ??
                                                    '',
                                                userName:
                                                    item.payload!.userName ??
                                                        '',
                                                seller: true,
                                              );
                                            });
                                      }

                                      if (item.payload!.dateItemShipped !=
                                          null) {
                                        BuyForSaleListingModel?
                                            alertListinStatus =
                                            await getIt<BuyCubit>()
                                                .getAlertListDetailItem(item
                                                        .payload!
                                                        .productItemId ??
                                                    '');

                                        Navigator.of(context,
                                                rootNavigator: true)
                                            .push(PurchaseHistoryDetailsPage
                                                .route(item.payload!
                                                        .purchaseHistoryId ??
                                                    ''));

                                        await Future.delayed(
                                            const Duration(milliseconds: 1000),
                                            () {});

                                        if (alertListinStatus!.status ==
                                            ListingStatusDataType
                                                .received.textValue) {
                                          LocalNotificationProvider
                                              .showInAppAllert(
                                                  S.of(context).buyer_recived);

                                          await Future.delayed(
                                              const Duration(
                                                  milliseconds: 1000),
                                              () {});
                                          showDialog(
                                              context: context,
                                              barrierDismissible: false,
                                              builder: (BuildContext context) {
                                                return RatingBuyer(
                                                  productItemId: item.payload!
                                                          .productItemId ??
                                                      '',
                                                  purchaseHistoryId: item
                                                          .payload!
                                                          .purchaseHistoryId ??
                                                      '',
                                                  userName:
                                                      item.payload!.userName ??
                                                          '',
                                                  seller: false,
                                                );
                                              });
                                        } else if (alertListinStatus!.status ==
                                            ListingStatusDataType
                                                .feedbackProvided.textValue) {
                                          LocalNotificationProvider
                                              .showInAppAllert(
                                                  S.of(context).buyer_rate);
                                        } else {
                                          showDialog(
                                              context: context,
                                              barrierDismissible: false,
                                              builder: (BuildContext context) {
                                                return DeliveredPopUp(
                                                  userName:
                                                      item.payload!.userName ??
                                                          '',
                                                  productItemId: item.payload!
                                                          .productItemId ??
                                                      '',
                                                  purchaseHistoryId: item
                                                          .payload!
                                                          .purchaseHistoryId ??
                                                      '',
                                                  itemName:
                                                      item.payload!.itemName ??
                                                          '',
                                                );
                                              });
                                        }
                                      }
                                    },
                                    leading: Theme(
                                      data: ThemeData(
                                        unselectedWidgetColor:
                                            Palette.current.primaryWhiteSmoke,
                                        checkboxTheme: CheckboxThemeData(
                                          side: MaterialStateBorderSide
                                              .resolveWith(
                                            (Set<MaterialState> states) {
                                              if (states.contains(
                                                  MaterialState.selected)) {
                                                return BorderSide(
                                                  width: 1,
                                                  color: Palette.current.grey,
                                                );
                                              }
                                              return BorderSide(
                                                width: 1,
                                                color: Palette.current.grey,
                                              );
                                            },
                                          ),
                                          fillColor: MaterialStateProperty
                                              .resolveWith<Color>(
                                            (Set<MaterialState> states) {
                                              if (states.contains(
                                                  MaterialState.selected)) {
                                                return Palette
                                                    .current.primaryNeonGreen;
                                              }
                                              return Palette.current.grey;
                                            },
                                          ),
                                        ),
                                      ),
                                      child: Container(
                                        width: 40,
                                        height: 40,
                                        decoration: BoxDecoration(
                                          shape: BoxShape.circle,
                                          border: Border.all(
                                            color: item.read
                                                ? Colors.transparent
                                                : Palette
                                                    .current.primaryNeonPink,
                                            width: 2.0,
                                          ),
                                        ),
                                        child: CircleAvatar(
                                          backgroundColor: Colors.transparent,
                                          backgroundImage: const AssetImage(
                                              'assets/images/Avatar.png'),
                                          foregroundImage: NetworkImage(
                                              alertAvatar(
                                                  item.payload!.avatar ?? '',
                                                  item.payload!
                                                          .listingImageUrl ??
                                                      '')),
                                          radius: 75,
                                        ),
                                      ),
                                    ),
                                    title: Row(
                                      children: [
                                        Expanded(
                                          flex: 7,
                                          child: Text(
                                            overflow: TextOverflow.ellipsis,
                                            maxLines: 1,
                                            item.notificationAlertTitle ?? '',
                                            style: Theme.of(context)
                                                .textTheme
                                                .displayLarge!
                                                .copyWith(
                                                  fontWeight: FontWeight.w400,
                                                  letterSpacing: 0.6,
                                                  color: item.read
                                                      ? Palette.current.grey
                                                      : Palette.current.white,
                                                  fontSize: 16,
                                                ),
                                          ),
                                        ),
                                        Expanded(
                                            flex: 3,
                                            child: Text(
                                              alertDays(item.timeStamp ?? ''),
                                              textAlign: TextAlign.end,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodySmall!
                                                  .copyWith(
                                                    fontSize: 14,
                                                    color: Palette.current.grey,
                                                  ),
                                            ))
                                      ],
                                    ),
                                    subtitle: Row(
                                      children: [
                                        Expanded(
                                          flex: 5,
                                          child: Text(
                                            item.notificationAlertBody ?? '',
                                            overflow: TextOverflow.ellipsis,
                                            maxLines: 1,
                                            textAlign: TextAlign.start,
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodySmall!
                                                .copyWith(
                                                  fontSize: 14,
                                                  color: Palette.current.grey,
                                                ),
                                          ),
                                        ),
                                        Expanded(flex: 2, child: Container()),
                                      ],
                                    ),
                                  );
                                },
                              ),
                            ),
                          )
                        : Container(
                            padding: EdgeInsets.only(
                                top: MediaQuery.of(context).size.height * 0.3),
                            child: Column(
                              children: [
                                Image.asset(
                                  "assets/images/Alerts.png",
                                  width: 30,
                                  height: 30,
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                Text(
                                  textAlign: TextAlign.center,
                                  'no Alerts yet!'.toUpperCase(),
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall!
                                      .copyWith(
                                        fontFamily: "KnockoutCustom",
                                        fontWeight: FontWeight.w300,
                                        fontSize: 30,
                                        letterSpacing: 1.2,
                                        color: Palette.current.darkGray,
                                      ),
                                ),
                              ],
                            ),
                          ),
              ],
            )));
  }
}
