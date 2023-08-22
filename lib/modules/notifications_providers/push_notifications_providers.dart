import 'dart:convert';
import 'dart:io';
import 'dart:async';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/cupertino.dart';
import 'package:swagapp/modules/cubits/alert/alert_cubit.dart';

import '../common/utils/context_service.dart';
import '../data/shared_preferences/shared_preferences_service.dart';
import '../di/injector.dart';
import '../pages/alert/alert_page.dart';
import '../services/route_observer.dart';
import 'local_notifications_providers.dart';

class PushNotificationsProvider {
  FirebaseMessaging messaging = FirebaseMessaging.instance;
  String? token;

  final _notificationStreamController = StreamController<String>.broadcast();

  Stream<String> get messages => _notificationStreamController.stream;

  Future<void> initializeProvider() async {
    await requestPermissions();
    token = await FirebaseMessaging.instance.getToken();

    debugPrint('==== FCM Token ====');
    debugPrint(token);
    await getIt<PreferenceRepositoryService>()
        .saveFirebaseDeviceToken(token ?? '');

    await FirebaseMessaging.instance
        .setForegroundNotificationPresentationOptions(
      alert: true,
      badge: true,
      sound: true,
    );

    await getIt<PreferenceRepositoryService>().saveShowNotification(true);

    FirebaseMessaging.onBackgroundMessage(_onBackgroundHandler);

    FirebaseMessaging.onMessage.listen((RemoteMessage message) async {
      debugPrint('===== On Message ======');
      debugPrint(message.toMap().toString());

      try {
        String? currentRoute = getIt<RouteTracker>().currentRoute;
        var json = jsonDecode(message.data['sendbird']);

        if (currentRoute != "/ChatPage" && Platform.isAndroid) {
          LocalNotificationProvider().showNotification(
              title: json['push_title'],
              body: json['message'],
              payLoad: 'data');
          getIt<AlertCubit>().getAlertList();
        }
      } catch (e) {
        // no sendbird in data
      }
    });

    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      debugPrint('===== On MessageOpenedApp ======');
      debugPrint(message.toMap().toString());

      getIt<ContextService>()
          .rootNavigatorKey
          .currentState!
          .push(AlertPage.route());
    });
  }

  requestPermissions() async {
    await messaging.requestPermission(
      alert: true,
      announcement: false,
      badge: true,
      carPlay: false,
      criticalAlert: false,
      provisional: false,
      sound: true,
    );
  }

  dispose() {
    _notificationStreamController.close();
  }
}

@pragma('vm:entry-point')
Future<void> _onBackgroundHandler(RemoteMessage message) async {
  debugPrint('===== On BackgroundMessage ======');
  debugPrint(message.toMap().toString());

  try {
    var json = jsonDecode(message.data['sendbird']);

    if (Platform.isAndroid && message.notification != null) {
      LocalNotificationProvider().showNotification(
        title: message.notification!.title,
        body: message.notification!.body,
        payLoad: 'data',
      );
      getIt<AlertCubit>().getAlertList();
    }
  } catch (e) {
    // no sendbird in data
  }
}
