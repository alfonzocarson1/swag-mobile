import 'package:flutter/material.dart';
import 'package:swagapp/modules/pages/login/account_info.dart';

import '../../common/utils/custom_route_animations.dart';

class HomePage extends StatefulWidget {
  static const name = '/Home';
  const HomePage({Key? key}) : super(key: key);

  static Route route() => PageRoutes.material(
        settings: const RouteSettings(name: name),
        builder: (context) => const HomePage(),
      );

  @override
  State<HomePage> createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  void initState() {
    super.initState();
    Future.delayed(const Duration(milliseconds: 2000), () {
      Navigator.of(context, rootNavigator: true).push(AccountInfoPage.route());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF414141),
      body: Center(
        child: Text(
          "Welcome to the Catalog page",
          style: Theme.of(context)
              .textTheme
              .bodySmall!
              .copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
