import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:swagapp/modules/common/utils/palette.dart';
import 'package:swagapp/modules/di/injector.dart';
import 'package:swagapp/modules/pages/search/search_page.dart';

import '../../common/utils/custom_route_animations.dart';
import '../../data/shared_preferences/shared_preferences_service.dart';
import '../../pages/alert/alert_page.dart';
import '../../pages/profile/profile_page.dart';
import '../explore/explore_page.dart';
import '../login/create_account_page.dart';

class HomePage extends StatefulWidget {
  static const name = '/HomePage';
  const HomePage({super.key});

  static Route route() => PageRoutes.material(
        settings: const RouteSettings(name: name),
        builder: (context) => const HomePage(),
      );

  @override
  State<StatefulWidget> createState() {
    return _HomePage();
  }
}

class _HomePage extends State<HomePage> {
  final PersistentTabController _controller =
      PersistentTabController(initialIndex: 0);
  int indexTap = 0;

  List<Widget> widgetsChildren = [];

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    widgetsChildren = [
      ExplorePage(pageFromExplore: () {
        onTapTapped(1);
      }),
      const SearchPage(),
      const AlertPage(),
      const ProfilePage()
    ];
  }

  void onTapTapped(int index) {
    bool isLogged = getIt<PreferenceRepositoryService>().isLogged();
    if ((index == 2 || index == 3) && !isLogged) {
      Navigator.of(context, rootNavigator: true)
          .push(CreateAccountPage.route());
      getIt<PreferenceRepositoryService>().saveReturExploreIsNotLogged(true);
    }

    setState(() {
      _controller.index = index;
      indexTap = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    bool isReturn =
        getIt<PreferenceRepositoryService>().returExploreIsNotLogged();

    if (isReturn) {
      setState(() {
        _controller.index = 0;
        indexTap = 0;
        getIt<PreferenceRepositoryService>().saveReturExploreIsNotLogged(false);
      });
    }

    return SizedBox(
      height: 100,
      child: PersistentTabView.custom(
        context,
        controller: _controller,
        screens: widgetsChildren,
        confineInSafeArea: true,
        backgroundColor: Palette.current.primaryEerieBlack,
        handleAndroidBackButtonPress: true,
        resizeToAvoidBottomInset: true,
        stateManagement: true,
        hideNavigationBarWhenKeyboardShows: true,
        onWillPop: (p0) => Future.value(true),
        customWidget: BottomNavigationBar(
            elevation: 0,
            backgroundColor: Palette.current.primaryEerieBlack,
            selectedItemColor: Palette.current.primaryNeonGreen,
            unselectedItemColor: Palette.current.grey,
            selectedFontSize: 14,
            unselectedFontSize: 14,
            onTap: onTapTapped,
            currentIndex: indexTap,
            type: BottomNavigationBarType.fixed,
            items: const [
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage('assets/images/server.png'),
                  size: 20,
                ),
                label: "Explore",
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage('assets/images/Browse.png'),
                  size: 20,
                ),
                label: "Search",
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage('assets/images/Alerts.png'),
                  size: 20,
                ),
                label: "Alerts",
              ),
              BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage('assets/images/You.png'),
                  size: 20,
                ),
                label: "Profile",
              )
            ]),
        itemCount: 4,
      ),
    );
  }
}
