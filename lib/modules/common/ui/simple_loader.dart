
import 'package:flutter/material.dart';
import 'package:loading_indicator/loading_indicator.dart';

class SimpleLoader extends StatelessWidget {
  const SimpleLoader({super.key});

  @override
  Widget build(BuildContext context) {
    return   const Padding(
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
              );
  }
}