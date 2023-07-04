import 'package:flutter/material.dart';

/// Wrapper for stateful functionality to provide onInit calls in stateles widget
class StatefulWrapper extends StatefulWidget {
  final Function(BuildContext context)? onInit;
  final Widget child;
  const StatefulWrapper({super.key, required this.onInit, required this.child});
  
  @override
  _StatefulWrapperState createState() => _StatefulWrapperState();
}

class _StatefulWrapperState extends State<StatefulWrapper> {
  @override
  void initState() {
    widget.onInit?.call(context);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return widget.child;
  }
}
