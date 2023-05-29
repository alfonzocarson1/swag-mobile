
import 'dart:io';
import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:firebase_core/firebase_core.dart';
import 'package:swagapp/generated/l10n.dart';
import 'package:swagapp/modules/di/injector.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:swagapp/modules/common/utils/context_service.dart';
import 'package:swagapp/modules/models/chat/sendbird_push_payload.dart';
import 'package:swagapp/modules/data/shared_preferences/shared_preferences_service.dart';
import 'package:swagapp/modules/services/local_notifications_service.dart';

abstract class PushNotificationsService {

  static FirebaseMessaging messaging = FirebaseMessaging.instance;
  static String?  token;
  static StreamController<Map<String, dynamic>> _notificationStreamController = StreamController.broadcast();
  static Stream<Map<String, dynamic>> get notificationStreamController => _notificationStreamController.stream;

  static Future<void> initializeApp() async {

    await Firebase.initializeApp();
    await requestPermissions();
    token = await FirebaseMessaging.instance.getToken();
    // : await FirebaseMessaging.instance.getAPNSToken();
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

  static Future<void> _onBackgroundHandler(RemoteMessage message) async {
    // _notificationStreamController.add(message.data);
    _notificationStreamController.add(json.decode(_sendBirdMessagePayload));
  }

  static Future<void> _onMessageHandler(RemoteMessage message) async {
    // _notificationStreamController.add(message.data);
    _notificationStreamController.add(json.decode(_sendBirdMessagePayload));
  }

  static Future<void> _onOpenHandler(RemoteMessage message) async {
    // _notificationStreamController.add(message.data);
    _notificationStreamController.add(json.decode(_sendBirdMessagePayload));
  }

  static requestPermissions() async {

    NotificationSettings settings = await messaging.requestPermission(
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
      
      _onSendBirdMessageReceived(data);
    });
  }

  static void _onSendBirdMessageReceived(Map<String, dynamic> data) async{
    
    BuildContext context = getIt<ContextService>().rootNavigatorKey.currentContext!;
    SendBirdPushPayload payload = SendBirdPushPayload.fromJson(data);

    await LocalNotificationsService.showNotification(
      title: S.current.chatMessageFrom(payload.sender.name), 
      body: payload.message, 
      payload: null,
    );
  }

  static closeStreams()=> _notificationStreamController.close();
}

String _sendBirdMessagePayload = """{
    "category": "messaging:offline_notification",
    "type": "string",                 
    "message": "This is a new Message from a Push",              
    "custom_type": "string",          
    "message_id": 1685104331244,      
    "created_at": 1685104331244,      
    "app_id": "string",               
    "unread_message_count": 1,    
    "channel": {
        "channel_url": "string",  
        "name": "string",         
        "custom_type": "string",  
        "channel_unread_count": 1 
    },
    "channel_type": "string",                                                                     
    "sender": {
        "id": "@Cristian",           
        "name": "@Cristian",         
        "profile_url": "string",  
        "require_auth_for_profile_image": false,
        "metadata": {}
    },
    "recipient": {
        "id": "string",           
        "name": "string"          
    },
    "files": [],                  
    "translations": {},           
    "push_title": "string",                                         
    "push_sound": "string",       
    "audience_type": "string",    
    "mentioned_users": {
        "user_id": "string",      
        "nickname": "string",     
        "profile_url": "string",  
        "require_auth_for_profile_image": false
    }
}
""";

