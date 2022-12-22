import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../common/utils/palette.dart';

class SplashPage extends StatelessWidget {
  const SplashPage({super.key});

  static const String name = '/splash';
  static Route route() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: name),
      builder: (context) => const SplashPage(),
    );
  }

  @override
  Widget build(BuildContext context) {
    SystemChrome.setSystemUIOverlayStyle(SystemUiOverlayStyle(
      statusBarColor: Palette.current.black,
      statusBarIconBrightness: Brightness.light,
      statusBarBrightness: Brightness.dark,
    ));
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.transparent,
      body: Container(
          decoration: const BoxDecoration(
            image: DecorationImage(
              image: AssetImage("assets/images/splash.png"),
              fit: BoxFit.fill,
            ),
          ),
          child: null),
    );
  }
}
