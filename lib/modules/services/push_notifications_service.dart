import 'dart:io';
import 'dart:async';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:swagapp/modules/di/injector.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:swagapp/modules/enums/notification_type.dart';
import 'package:swagapp/modules/common/utils/context_service.dart';
import 'package:swagapp/modules/models/chat/sendbird_push_payload.dart';
import 'package:swagapp/modules/services/local_notifications_service.dart';
import 'package:swagapp/modules/data/shared_preferences/shared_preferences_service.dart';

abstract class PushNotificationsService {

  static FirebaseMessaging messaging = FirebaseMessaging.instance;
  static String?  token;
  static StreamController<Map<String, dynamic>> _notificationStreamController = StreamController.broadcast();
  static Stream<Map<String, dynamic>> get notificationStreamController => _notificationStreamController.stream;

  static Future<void> initializeApp() async {

    if(Platform.isIOS) {

      await Firebase.initializeApp();
      await requestPermissions();
      token = (Platform.isIOS) 
      ? await FirebaseMessaging.instance.getAPNSToken()
      : await FirebaseMessaging.instance.getToken();
      await getIt<PreferenceRepositoryService>().saveFirebaseDeviceToken(token ?? '');

      await FirebaseMessaging.instance.setForegroundNotificationPresentationOptions(
        alert: false, 
        badge: false,
        sound: false,
      );

      FirebaseMessaging.onBackgroundMessage((RemoteMessage message)=> _onBackgroundHandler(message));
      FirebaseMessaging.onMessage.listen((RemoteMessage message)=> _onMessageHandler(message));
      FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message)=> _onOpenHandler(message));
    }
  }

  static Future<void> _onBackgroundHandler(RemoteMessage message) async {
    _notificationStreamController.add(message.data);
  }

  static Future<void> _onMessageHandler(RemoteMessage message) async {
    _notificationStreamController.add(message.data);
  }

  static Future<void> _onOpenHandler(RemoteMessage message) async {
    _notificationStreamController.add(message.data);
  }

  static requestPermissions() async {

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

  static void listenPushNotifications() {

    notificationStreamController.listen((Map<String, dynamic> data) { 
      
      if(data['title'].contains(NotificationType.notifyMe.textValue)) {

      }
      // else _onSendBirdMessageReceived(data['data']);
    });
  }

  static void _onSendBirdMessageReceived(Map<String, dynamic> data) async{

    BuildContext context = getIt<ContextService>().rootNavigatorKey.currentContext!;

    try {
      
      SendBirdPushPayload payload = SendBirdPushPayload.fromJson(data);

      LocalNotificationsService.showInAppAllert(
        '${payload.sender.name} ${payload.message}',
      );
    } 
    catch (e) {
      ScaffoldMessenger.of(context).showSnackBar(SnackBar(content: Text(e.toString())));
    }
    
  }

  static closeStreams()=> _notificationStreamController.close();

}

