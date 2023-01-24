import 'package:flutter/material.dart';
import 'package:swagapp/modules/common/utils/palette.dart';
import 'package:swagapp/modules/di/injector.dart';
import 'package:swagapp/modules/pages/search/search_page.dart';

import '../../data/shared_preferences/shared_preferences_service.dart';
import '../../pages/alert/alert_page.dart';
import '../../pages/profile/profile_page.dart';
import '../explore/explore_page.dart';

class HomePage extends StatefulWidget {
  const HomePage({super.key});

  @override
  State<StatefulWidget> createState() {
    return _HomePage();
  }
}

class _HomePage extends State<HomePage> {
  int indexTap = 0;
  final List<Widget> widgetsChildren = [
    const ExplorePage(),
    const SearchPage(),
    const AlertPage(),
    const ProfilePage()
  ];

  void onTapTapped(int index) {
    bool isLogged = getIt<PreferenceRepositoryService>().isLogged();
    if ((index == 2 || index == 3) && !isLogged) {
      Navigator.popUntil(context, ModalRoute.withName('/'));
    }

    setState(() {
      indexTap = index;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widgetsChildren[indexTap],
      bottomNavigationBar: Theme(
        data: Theme.of(context).copyWith(
          canvasColor: Palette.current.primaryEerieBlack,
        ),
        child: SizedBox(
          height: 100,
          child: BottomNavigationBar(
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
        ),
      ),
    );
  }
}
