import 'package:flutter/material.dart';

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
    return Scaffold(
      resizeToAvoidBottomInset: true,
      backgroundColor: Colors.transparent,
      body: LayoutBuilder(
        builder: (context, viewportConstraints) {
          return Stack(children: [
            Container(
                decoration: const BoxDecoration(
                  image: DecorationImage(
                    image: AssetImage("assets/images/splash.png"),
                    fit: BoxFit.fill,
                  ),
                ),
                child: null),
          ]);
        },
      ),
    );
  }
}
