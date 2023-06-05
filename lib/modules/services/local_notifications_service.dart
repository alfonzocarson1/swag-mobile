import 'dart:io';
import 'package:flutter/material.dart';
import 'package:http/http.dart' as http;
import 'package:path_provider/path_provider.dart';
import 'package:swagapp/modules/common/utils/context_service.dart';
import 'package:swagapp/modules/di/injector.dart';
import 'package:top_snackbar_flutter/top_snack_bar.dart';
import 'package:swagapp/modules/common/assets/images.dart';
import 'package:top_snackbar_flutter/custom_snack_bar.dart';
import 'package:flutter_local_notifications/flutter_local_notifications.dart';

abstract class LocalNotificationsService {

  static final FlutterLocalNotificationsPlugin _notifications = FlutterLocalNotificationsPlugin();

  static Future<void> initializeApp() async {

    _notifications.resolvePlatformSpecificImplementation<AndroidFlutterLocalNotificationsPlugin>()?.requestPermission();
    AndroidInitializationSettings android = const AndroidInitializationSettings('@mipmap/ic_launcher');
    DarwinInitializationSettings ios = const DarwinInitializationSettings();

    await _notifications.initialize(
      InitializationSettings(
        android: android,
        iOS: ios,
      ),
      onDidReceiveBackgroundNotificationResponse: onDidReceiveBackgroundNotificationResponse,
      onDidReceiveNotificationResponse: onDidReceiveNotificationResponse,
    );
  }

  static Future<void> showNotification({
    required String title, 
    required String body, 
    required String? payload, 
    int id = 0,
  }) async {

    await _notifications.show(
      id, 
      title, 
      body, 
      await _notificationDetails(payload),
    );
  }

  static Future<NotificationDetails> _notificationDetails(String? imagePayload) async {

    bool isImageNotNull = imagePayload != null;
    String bigPicturePath = (isImageNotNull) 
    ? await _downloadAndSaveFile('https://dummyimage.com/600x200', 'bigPicture.jpg')
    : '';
    List<DarwinNotificationAttachment> attachments = (isImageNotNull) 
    ? [DarwinNotificationAttachment(bigPicturePath)]
    : [];

    return NotificationDetails(
      android: const AndroidNotificationDetails(
        'channelId', 
        'channelName',   
        importance: Importance.max,
        icon: AppImages.avatar2,  
      ),
      iOS: DarwinNotificationDetails(
        attachments: attachments,
        sound: '',
      ),
    );
  }

  static void onDidReceiveBackgroundNotificationResponse(NotificationResponse details) {}
  static void onDidReceiveNotificationResponse(NotificationResponse details) {}

  static Future<String> _downloadAndSaveFile(String url, String fileName) async {

    Directory directory = await getApplicationDocumentsDirectory();
    String filePath = '${directory.path}/$fileName';
    http.Response response = await http.get(Uri.parse(url));
    File file = File(filePath);
    await file.writeAsBytes(response.bodyBytes);
    return filePath;
  }

  static void showInAppAllert(String message) {
      
    BuildContext cosa = getIt<ContextService>().rootNavigatorKey.currentContext!;
    OverlayState overlayState = Overlay.of(cosa);

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

