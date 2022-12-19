import 'package:flutter/material.dart';

class AppConfig {
  static const String swagProd = 'prod';
  static const String swagDev = 'dev';
  static const String swagQa = 'qa';

  static final AppConfig _instance = AppConfig._internal();
  AppConfig._internal();
  factory AppConfig() => _instance;

  String? _baseUrl;

  String? get baseUrl {
    if (_baseUrl!.isEmpty) {
      throw ErrorDescription(
          "AppConfig.init({}) must be called before trying to access this.");
    }
    return _baseUrl;
  }

  Future<void> init({String? url}) async {
    _baseUrl = url;
  }
}
