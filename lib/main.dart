import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:swagapp/modules/services/local_notifications_service.dart';
import 'package:swagapp/modules/services/push_notifications_service.dart';
import 'app.dart';
import 'modules/api/app_config.dart';
import 'modules/common/utils/utils.dart';
import 'modules/constants/constants.dart';
import 'modules/data/secure_storage/storage_repository_service.dart';
import 'modules/data/shared_preferences/shared_preferences_service.dart';
import 'modules/di/injector.dart';

Future<void> main() async {
  if (kReleaseMode) {
    debugPrint = (String? message, {int? wrapWidth}) {};
  }
  WidgetsFlutterBinding.ensureInitialized();
  // FlutterError.onError = (details) {
  //   debugPrintStack(
  //     stackTrace: details.stack,
  //     label: details.exception.toString(),
  //   );
  // };
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);

  final appFlavor = await getAppFlavor();
  debugPrint('STARTED WITH FLAVOR $appFlavor');
  await setupAppScope(appFlavor);
  await getIt<PreferenceRepositoryService>().initialize();
  getIt<StorageRepositoryService>().initialize();
  initFiltersAndSorts();
  initUtilsPreference();
  try {
    // await PushNotificationProvider.instance.initNotifications();
  } catch (e) {
    if (kDebugMode) {
      print('initNotifications error message: $e');
    }
  }
  return _runApp();
}

Future<String> getAppFlavor() async {
  try {
    final flavor =
        await const MethodChannel('flavor').invokeMethod<String>('getFlavor');
    if (flavor == null) {
      debugPrint('ERROR: APP FLAVOR IS NULL');
    }
    return flavor!;
  } catch (e, stk) {
    debugPrintStack(
      label: 'FAILED TO LOAD FLAVOR | ${e.toString()}',
      stackTrace: stk,
    );
    rethrow;
  }
}

Future<void> _runApp() async {
  WidgetsFlutterBinding.ensureInitialized();
  await PushNotificationsService.initializeApp();
  await LocalNotificationsService.initializeApp();
  return runApp(App());
}
