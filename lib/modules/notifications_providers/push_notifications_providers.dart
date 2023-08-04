import 'dart:convert';
import 'dart:io';
import 'dart:async';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:flutter/cupertino.dart';

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
    token = (Platform.isIOS)
        ? await FirebaseMessaging.instance.getAPNSToken()
        : await FirebaseMessaging.instance.getToken();

    print('==== FCM Token ====');
    print(token);
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
      print('===== On Message ======');
      print(message.data);

      String? currentRoute = getIt<RouteTracker>().currentRoute;
      var json = jsonDecode(message.data['sendbird']);

      if (currentRoute != "/ChatPage" && Platform.isAndroid) {
        LocalNotificationProvider().showNotification(
            title: json['push_title'], body: json['message'], payLoad: 'data');
      }
    });

    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message) {
      print('===== On MessageOpenedApp ======');
      print(message.data);

      getIt<ContextService>()
          .rootNavigatorKey
          .currentState!
          .push(AlertPage.route());
    });
  }

  static Future<void> _onBackgroundHandler(RemoteMessage message) async {
    print('===== On BackgroundMessage ======');
    print(message.data);

    var json = jsonDecode(message.data['sendbird']);

    if (Platform.isAndroid) {
      LocalNotificationProvider().showNotification(
          title: json['push_title'], body: json['message'], payLoad: 'data');
    }
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
