import 'package:flutter/material.dart';
import '../../common/utils/custom_route_animations.dart';
import '../../common/utils/palette.dart';

class SavedSearchesPage extends StatefulWidget {
  static const name = '/Alert';
  const SavedSearchesPage({Key? key}) : super(key: key);

  static Route route() => PageRoutes.material(
        settings: const RouteSettings(name: name),
        builder: (context) => const SavedSearchesPage(),
      );

  @override
  State<SavedSearchesPage> createState() => _SavedSearchesPageState();
}

class _SavedSearchesPageState extends State<SavedSearchesPage> {
  @override
  void initState() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Palette.current.primaryNero,
      body: Center(
        child: Text(
          "Welcome to the Saved searches page",
          style: Theme.of(context)
              .textTheme
              .bodySmall!
              .copyWith(color: Colors.white),
        ),
      ),
    );
  }
}
