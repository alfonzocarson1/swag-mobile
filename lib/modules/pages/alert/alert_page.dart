import 'package:flutter/material.dart';
import '../../common/utils/custom_route_animations.dart';

class AlertPage extends StatefulWidget {
  static const name = '/Alert';
  const AlertPage({Key? key}) : super(key: key);

  static Route route() => PageRoutes.material(
        settings: const RouteSettings(name: name),
        builder: (context) => const AlertPage(),
      );

  @override
  State<AlertPage> createState() => _AlertPageState();
}

class _AlertPageState extends State<AlertPage> {
  @override
  void initState() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF414141),
      body: Center(
        child: Text(
          "Welcome to the Alert page",
          style: Theme.of(context)
              .textTheme
              .bodySmall!
              .copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
