import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'app.dart';
import 'modules/api/app_config.dart';
import 'modules/common/utils/utils.dart';
import 'modules/constants/constants.dart';
import 'modules/data/secure_storage/storage_repository_service.dart';
import 'modules/data/shared_preferences/shared_preferences_service.dart';
import 'modules/di/injector.dart';

Future<void> main() async {
  WidgetsFlutterBinding.ensureInitialized();
  SystemChrome.setPreferredOrientations(
      [DeviceOrientation.portraitUp, DeviceOrientation.portraitDown]);
  setupAppScope();
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
  await _handleFlavorConfig();
}

Future<void> _handleFlavorConfig() async {
  const MethodChannel('flavor')
      .invokeMethod<String>('getFlavor')
      .then((String? flavor) {
    debugPrint('STARTED WITH FLAVOR $flavor');
    switch (flavor) {
      case AppConfig.swagProd:
        // AppConfig().init(url: hostProd).then((_) => _runApp());
        AppConfig().init(url: hostDev).then((_) => _runApp());
        break;
      case AppConfig.swagDev:
        AppConfig().init(url: hostDev).then((_) => _runApp());
        break;
      case AppConfig.swagQa:
        // AppConfig().init(url: hostQa).then((_) => _runApp());
        AppConfig().init(url: hostDev).then((_) => _runApp());
        break;
    }
  }).catchError((error) {
    debugPrint('FAILED TO LOAD FLAVOR');
    debugPrint(error.toString());
  });
}

void _runApp() {
  return runApp(App());
}
