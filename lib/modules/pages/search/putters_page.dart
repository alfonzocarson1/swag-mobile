import 'package:flutter/material.dart';
import 'package:swagapp/modules/common/utils/palette.dart';
import '../../common/utils/custom_route_animations.dart';

class PuttersPage extends StatefulWidget {
  static const name = '/Putters';
  const PuttersPage({Key? key}) : super(key: key);

  static Route route() => PageRoutes.material(
        settings: const RouteSettings(name: name),
        builder: (context) => const PuttersPage(),
      );

  @override
  State<PuttersPage> createState() => _PuttersPageState();
}

class _PuttersPageState extends State<PuttersPage> {
  @override
  void initState() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.current.primaryNero,
      body: Center(
        child: Text(
          "Welcome to the PUTTERS page",
          style: Theme.of(context)
              .textTheme
              .bodySmall!
              .copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
