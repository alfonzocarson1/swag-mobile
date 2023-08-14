import 'package:flutter/material.dart';
import 'package:loading_indicator/loading_indicator.dart';

 double height = 0.0;
class SimpleLoader extends StatelessWidget {
  const SimpleLoader({super.key});

  @override
  Widget build(BuildContext context) {
     height = MediaQuery.of(context).size.height;
    return  Padding(
      padding: (height <=840) ? const EdgeInsets.all(160.0) : const EdgeInsets.all(150.0) ,
      child: const Center(
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

class SmallSimpleLoader extends StatelessWidget {
  const SmallSimpleLoader({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return  Center(
      child: SizedBox(
        width: (height <= 667) ? 100 : 150,
        height: (height <= 667) ? 60 : 60,
        child: const LoadingIndicator(
          indicatorType: Indicator.ballPulse,
          colors: [Colors.white],
          strokeWidth: 1.0,
        ),
      ),
    );
  }
}
