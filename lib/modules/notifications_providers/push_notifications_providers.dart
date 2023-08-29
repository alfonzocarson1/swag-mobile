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

    print('==== FCM Token ====');
    print(token);
    await getIt<PreferenceRepositoryService>()
        .saveFirebaseDeviceToken(token ?? '');

    await getIt<PreferenceRepositoryService>().saveShowNotification(true);

    FirebaseMessaging.onBackgroundMessage(_onBackgroundHandler);

    FirebaseMessaging.onMessage.listen((RemoteMessage message) async {
      print('===== On Message ======');
      print(message.data);
      getIt<AlertCubit>().getAlertList();

      String? currentRoute = getIt<RouteTracker>().currentRoute;

      bool stringToBool(String value) {
        return value.toLowerCase() == 'true';
      }

      if (stringToBool(message.data['showPushNotification'])) {
        if (currentRoute != "/ChatPage") {
          LocalNotificationProvider().showNotification(
              title: message.data['title'],
              body: message.data['message'],
              payLoad: 'data');
        }
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
    getIt<AlertCubit>().getAlertList();

    bool stringToBool(String value) {
      return value.toLowerCase() == 'true';
    }

    if (stringToBool(message.data['showPushNotification'])) {
      LocalNotificationProvider().showNotification(
          title: message.data['title'],
          body: message.data['message'],
          payLoad: 'data');
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
