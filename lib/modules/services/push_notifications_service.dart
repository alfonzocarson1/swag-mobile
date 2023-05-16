
import 'package:firebase_core/firebase_core.dart';
import 'package:swagapp/modules/di/injector.dart';
import 'package:firebase_messaging/firebase_messaging.dart';
import 'package:swagapp/modules/data/shared_preferences/shared_preferences_service.dart';

abstract class PushNotificationsService {

  static FirebaseMessaging messaging = FirebaseMessaging.instance;
  static String?  token;

  static Future<void> initializeApp() async {

    await Firebase.initializeApp();
    await requestPermissions();
    token = await FirebaseMessaging.instance.getToken();
    await getIt<PreferenceRepositoryService>().saveFirebaseDeviceToken(token ?? '');

    FirebaseMessaging.onBackgroundMessage((RemoteMessage message)=> _onBackgroundHandler(message));
    FirebaseMessaging.onMessage.listen((RemoteMessage message)=> _onMessageHandler(message));
    FirebaseMessaging.onMessageOpenedApp.listen((RemoteMessage message)=> _onOpenHandler(message));
  }

  static Future<void> _onBackgroundHandler(RemoteMessage message) async {

    print('Background Handler ${message.messageId}');
  }

  static Future<void> _onMessageHandler(RemoteMessage message) async {

    print('OnMessage Handler ${message.messageId}');
  }

  static Future<void> _onOpenHandler(RemoteMessage message) async {

    print('OnMessageOpen Handler ${message.messageId}');
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

    print('User push notification status ${settings.authorizationStatus}');
  }
}


