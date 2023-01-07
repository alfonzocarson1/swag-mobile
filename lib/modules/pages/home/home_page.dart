import 'package:flutter/material.dart';
import 'package:swagapp/modules/common/utils/palette.dart';
import 'package:swagapp/modules/pages/catalog/catalog_page.dart';

import '../../pages/alert/alert_page.dart';
import '../../pages/profile/profile_page.dart';

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
    const CatalogPage(),
    const AlertPage(),
    const ProfilePage()
  ];

  void onTapTapped(int index) {
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
              items: const [
                BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage('assets/images/server.png'),
                    size: 25,
                  ),
                  label: "Browse",
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage('assets/images/Alerts.png'),
                    size: 25,
                  ),
                  label: "Alert",
                ),
                BottomNavigationBarItem(
                  icon: ImageIcon(
                    AssetImage('assets/images/You.png'),
                    size: 25,
                  ),
                  label: "You",
                )
              ]),
        ),
      ),
    );
  }
}
