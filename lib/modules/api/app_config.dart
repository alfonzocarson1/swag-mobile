import 'package:flutter/material.dart';

class AppFlavors {
  AppFlavors._();
  static const String prod = 'prod';
  static const String dev = 'dev';
  static const String qa = 'qa';
  static const String uat = 'uat';
}

extension on String {
  T whenFlavor<T>({
    required T Function() dev,
    required T Function() qa,
    required T Function() uat,
    required T Function() prod,
  }) {
    switch (this) {
      case AppFlavors.dev:
        return dev();
      case AppFlavors.qa:
        return qa();
      case AppFlavors.uat:
        return uat();
      case AppFlavors.prod:
        return prod();
      default:
        throw "$this is not recognized as a flavor";
    }
  }

  T whenFlavorOrElse<T>({
    T Function()? dev,
    T Function()? qa,
    T Function()? uat,
    T Function()? prod,
    required T Function() orElse,
  }) {
    switch (this) {
      case AppFlavors.dev:
        return (dev ?? orElse)();
      case AppFlavors.qa:
        return (qa ?? orElse)();
      case AppFlavors.uat:
        return (uat ?? orElse)();
      case AppFlavors.prod:
        return (prod ?? orElse)();
      default:
        return orElse();
    }
  }
}

class AppConfig {
  final String apiBaseUrl;
  final String sendBirdAppId;

  AppConfig._({
    required this.apiBaseUrl,
    required this.sendBirdAppId,
  });

  static Future<AppConfig> init(String appFlavor) async {
    return AppConfig._(
      apiBaseUrl: appFlavor.whenFlavor(
        dev: () => "orchestration.dev.swag.kuldisak.net:8080",
        qa: () => "dev.core-api.app.net",
        uat: () => "orchestration-uat.kuldisak.net",
        prod: () => "dev.core-api.app.net",
      ),
      sendBirdAppId: appFlavor.whenFlavorOrElse(
        uat: () => "29A3A5B7-E41B-49F3-AB81-5EEEC9678CC2",
        orElse: () => "3A0E70A8-4861-44C2-ABC0-B7E13C776BEF",
      ),
    );
  }
}
