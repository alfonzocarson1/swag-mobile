import 'package:flutter/material.dart';
import 'package:swagapp/modules/pages/search/account_info.dart';

import '../../common/ui/custom_app_bar.dart';
import '../../common/utils/custom_route_animations.dart';
import '../../data/shared_preferences/shared_preferences_service.dart';
import '../../di/injector.dart';

class SearchPage extends StatefulWidget {
  static const name = '/Catalog';
  const SearchPage({Key? key}) : super(key: key);

  static Route route() => PageRoutes.material(
        settings: const RouteSettings(name: name),
        builder: (context) => const SearchPage(),
      );

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage> {
  bool _isLogged = false;
  @override
  void initState() {
    super.initState();
    _isLogged = getIt<PreferenceRepositoryService>().isLogged();
    // if (_isLogged) {
    //   Future.delayed(const Duration(milliseconds: 2000), () {
    //     Navigator.of(context, rootNavigator: true)
    //         .push(AccountInfoPage.route());
    //   });
    // }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: const Color(0xFF414141),
      appBar: !_isLogged ? CustomAppBar() : null,
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
