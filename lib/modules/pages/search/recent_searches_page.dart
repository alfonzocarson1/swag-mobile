import 'package:flutter/material.dart';
import '../../common/utils/custom_route_animations.dart';
import '../../common/utils/palette.dart';

class RecentSearchesPage extends StatefulWidget {
  static const name = '/Alert';
  const RecentSearchesPage({Key? key}) : super(key: key);

  static Route route() => PageRoutes.material(
        settings: const RouteSettings(name: name),
        builder: (context) => const RecentSearchesPage(),
      );

  @override
  State<RecentSearchesPage> createState() => _RecentSearchesPageState();
}

class _RecentSearchesPageState extends State<RecentSearchesPage> {
  @override
  void initState() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.current.primaryNero,
      body: Center(
        child: Text(
          "Welcome to the Recent searches page",
          style: Theme.of(context)
              .textTheme
              .bodySmall!
              .copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
