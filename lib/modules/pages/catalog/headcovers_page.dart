import 'package:flutter/material.dart';
import '../../common/utils/custom_route_animations.dart';
import '../../common/utils/palette.dart';

class HeadcoversPage extends StatefulWidget {
  static const name = '/Headcovers';
  const HeadcoversPage({Key? key}) : super(key: key);

  static Route route() => PageRoutes.material(
        settings: const RouteSettings(name: name),
        builder: (context) => const HeadcoversPage(),
      );

  @override
  State<HeadcoversPage> createState() => _HeadcoversPageState();
}

class _HeadcoversPageState extends State<HeadcoversPage> {
  @override
  void initState() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.current.primaryNero,
      body: Center(
        child: Text(
          "Welcome to the HEADCOVERS page",
          style: Theme.of(context)
              .textTheme
              .bodySmall!
              .copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
