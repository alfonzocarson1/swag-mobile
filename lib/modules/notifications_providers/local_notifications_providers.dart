import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';

import '../common/assets/images.dart';
import '../common/utils/context_service.dart';
import '../di/injector.dart';
import '../pages/alert/alert_page.dart';

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
      getIt<ContextService>()
          .rootNavigatorKey
          .currentState!
          .push(AlertPage.route());
    });
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
