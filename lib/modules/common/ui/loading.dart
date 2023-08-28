import 'package:flutter/material.dart';
import 'package:loading_indicator/loading_indicator.dart';

class Loading {
  static bool _isDialogShowing = false;

  /// shows the loading widget
  static show(BuildContext context) {
    _isDialogShowing = true;
    showDialog(
      context: context,
      builder: (BuildContext context) {
        return const AbsorbPointer(
          child: Stack(
            children: [
              Padding(
                padding: EdgeInsets.all(150.0),
                child: Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    crossAxisAlignment: CrossAxisAlignment.center,
                    children: [
                      LoadingIndicator(
                        indicatorType: Indicator.ballPulse,
                        colors: [Colors.white],
                        strokeWidth: 2.0,
                      ),
                    ],
                  ),
                ),
              )
            ],
          ),
        );
      },
    );
  }

  /// hides the loading widget
  static hide(BuildContext context) {
    _isDialogShowing = false;
    Navigator.of(context, rootNavigator: true).pop();
  }

  static isVisible() {
    return _isDialogShowing;
  }
}
