import 'package:flutter/material.dart';
import '../../common/utils/custom_route_animations.dart';
import '../../common/utils/palette.dart';

class AccessoriesPage extends StatefulWidget {
  static const name = '/Accessories';
  const AccessoriesPage({Key? key}) : super(key: key);

  static Route route() => PageRoutes.material(
        settings: const RouteSettings(name: name),
        builder: (context) => const AccessoriesPage(),
      );

  @override
  State<AccessoriesPage> createState() => _AccessoriesPageState();
}

class _AccessoriesPageState extends State<AccessoriesPage> {
  @override
  void initState() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.current.primaryNero,
      body: Center(
        child: Text(
          "Welcome to the ACCESSORIES page",
          style: Theme.of(context)
              .textTheme
              .bodySmall!
              .copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
