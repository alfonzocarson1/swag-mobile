import 'package:flutter/material.dart';
import 'package:swagapp/generated/l10n.dart';

import '../../common/utils/custom_route_animations.dart';

class HomePage extends StatelessWidget {
  static const name = '/Home';
  const HomePage({Key? key}) : super(key: key);

  static Route route() => PageRoutes.material(
        settings: const RouteSettings(name: name),
        builder: (context) => const HomePage(),
      );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: Center(
        child: Text(S.of(context).app_name),
      ),
    );
  }
}
