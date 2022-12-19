import 'package:flutter/material.dart';

class ContextService {
  final GlobalKey<NavigatorState> _rootNavigatorKey = GlobalKey<NavigatorState>(
    debugLabel: 'root',
  );

  GlobalKey<NavigatorState> get rootNavigatorKey => _rootNavigatorKey;
}
