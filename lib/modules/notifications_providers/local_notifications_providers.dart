import 'dart:convert';
import 'dart:io';

import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:sendbird_chat_sdk/sendbird_chat_sdk.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

import '../common/assets/images.dart';
import '../common/ui/loading.dart';
import '../common/utils/context_service.dart';
import '../common/utils/sendbird_utils.dart';
import '../cubits/chat/chat_cubit.dart';
import '../data/shared_preferences/shared_preferences_service.dart';
import '../di/injector.dart';
import '../enums/listing_status_data.dart';
import '../pages/add/buy/preview_buy_for_sale.dart';
import '../pages/alert/alert_page.dart';
import '../pages/chat/chatPage.dart';
import '../pages/profile/sold/sold_detail_page.dart';

class LocalNotificationProvider {
  final FlutterLocalNotificationsPlugin notificationsPlugin =
      FlutterLocalNotificationsPlugin();

  Future<void> initNotification() async {
    AndroidInitializationSettings initializationSettingsAndroid =
        const AndroidInitializationSettings('@mipmap/ic_launcher');

    var initializationSettingsIOS = DarwinInitializationSettings(
        requestAlertPermission: true,
        requestBadgePermission: true,
        requestSoundPermission: true,
        onDidReceiveLocalNotification:
            (int id, String? title, String? body, String? payload) async {});

    var initializationSettings = InitializationSettings(
        android: initializationSettingsAndroid, iOS: initializationSettingsIOS);
    await notificationsPlugin.initialize(initializationSettings,
        onDidReceiveNotificationResponse:
            (NotificationResponse notificationResponse) async {
      BuildContext context =
          getIt<ContextService>().rootNavigatorKey.currentContext!;
      var jsonData = jsonDecode(notificationResponse.payload ?? '');
      print(jsonData);

      if (jsonData['listingStatus'] ==
          ListingStatusDataType.pendingSellerConfirmation.textValue) {
        getIt<ContextService>()
            .rootNavigatorKey
            .currentState!
            .push(MaterialPageRoute(
                builder: (context) => BuyPreviewPage(
                      productItemId: jsonData['productItemId'],
                    )));
      }

      if (jsonData['listingStatus'] == ListingStatusDataType.paid.textValue ||
          jsonData['listingStatus'] ==
              ListingStatusDataType.pendingPayment.textValue ||
          jsonData['listingStatus'] ==
              ListingStatusDataType.paymentReceived.textValue ||
          jsonData['listingStatus'] ==
              ListingStatusDataType.shipped.textValue ||
          jsonData['listingStatus'] == ListingStatusDataType.listed.textValue) {
        Loading.show(context);
        onTapSubmit(jsonData['channelUrl']);
      }
    });
  }

  Future<void> onTapSubmit(String channelUrl) async {
    BuildContext context =
        getIt<ContextService>().rootNavigatorKey.currentContext!;
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
      getIt<ContextService>()
          .rootNavigatorKey
          .currentState!
          .push(MaterialPageRoute(
              builder: (context) => ChatPage(
                    channel: chatData,
                  )));
    } catch (e) {
      print(e);
    }
  }

  notificationDetails() {
    return const NotificationDetails(
        android: AndroidNotificationDetails('channelId', 'channelName',
            importance: Importance.max, priority: Priority.high),
        iOS: DarwinNotificationDetails());
  }

  Future showNotification(
      {int id = 0, String? title, String? body, String? payLoad}) async {
    return notificationsPlugin
        .show(id, title, body, await notificationDetails(), payload: payLoad);
  }

  static void showInAppAllert(String message) {
    BuildContext context =
        getIt<ContextService>().rootNavigatorKey.currentContext!;
    OverlayState overlayState = Overlay.of(context);

    showTopSnackBar(
      overlayState,
      animationDuration: const Duration(milliseconds: 250),
      curve: Curves.easeInOutQuad,
      CustomSnackBar.info(
        icon: const Padding(
          padding: EdgeInsets.only(left: 20),
          child: Image(
            width: 20,
            image: AssetImage(AppImages.favorite),
          ),
        ),
        iconPositionLeft: 0,
        iconRotationAngle: 0,
        textAlign: TextAlign.start,
        backgroundColor: Colors.black,
        messagePadding: const EdgeInsets.only(left: 50, right: 30),
        textStyle: const TextStyle(color: Colors.white),
        message: message,
      ),
    );
  }
}
