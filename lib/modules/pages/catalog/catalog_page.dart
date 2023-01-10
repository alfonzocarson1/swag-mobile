import 'package:flutter/material.dart';
import 'package:swagapp/modules/pages/home/account_info.dart';

import '../../common/ui/custom_app_bar.dart';
import '../../common/utils/custom_route_animations.dart';
import '../../data/shared_preferences/shared_preferences_service.dart';
import '../../di/injector.dart';

class CatalogPage extends StatefulWidget {
  static const name = '/Catalog';
  const CatalogPage({Key? key}) : super(key: key);

  static Route route() => PageRoutes.material(
        settings: const RouteSettings(name: name),
        builder: (context) => const CatalogPage(),
      );

  @override
  State<CatalogPage> createState() => _CatalogPageState();
}

class _CatalogPageState extends State<CatalogPage> {
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
