import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../main.dart';
import '../../blocs/category_bloc/category_bloc.dart';
import '../../common/ui/dynamic_toast_messages.dart';
import '../../common/utils/palette.dart';

class SplashPage extends StatefulWidget {
  const SplashPage({super.key});

  static const String name = '/splash';
  static Route route() {
    return MaterialPageRoute(
      settings: const RouteSettings(name: name),
      builder: (context) => const SplashPage(),
    );
  }

  @override
  State<SplashPage> createState() => _SplashPageState();
}

class _SplashPageState extends State<SplashPage> {
  bool isStuck = false;
  @override
  void initState() {

    logger.e("TimeOutIssue Splash Init");
    super.initState();
    context.read<CategoryBloc>().add(const CategoryEvent.getCategories());

    startTimer();

  }

  void startTimer() {
    Timer(const Duration(seconds: 20), () {
      if (!mounted) return; // Check if the widget is still in the tree
      // setState(() {
      //   isStuck = true;
      // });

      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
          duration: const Duration(seconds: 3),
          behavior: SnackBarBehavior.floating,
          margin: EdgeInsets.only(
            bottom: MediaQuery.of(context).size.height / 1.3,
          ),
          backgroundColor: Colors.transparent,
          content: const ToastMessage(
            message: 'Unable to load app. Please force close the app and try again. If the issue persists please try re-installing.',
          ),
          dismissDirection: DismissDirection.none));

    });
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
