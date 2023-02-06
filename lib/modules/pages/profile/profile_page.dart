import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:swagapp/modules/pages/profile/sold_page.dart';

import '../../../generated/l10n.dart';
import '../../common/ui/account_info_head.dart';
import '../../common/ui/rating_ui.dart';
import '../../common/utils/custom_route_animations.dart';
import '../../common/utils/palette.dart';
import 'collection_page.dart';
import 'favorites_page.dart';
import 'listings_page.dart';

class ProfilePage extends StatefulWidget {
  static const name = '/Profile';
  const ProfilePage({Key? key}) : super(key: key);

  static Route route() => PageRoutes.material(
        settings: const RouteSettings(name: name),
        builder: (context) => const ProfilePage(),
      );

  @override
  State<ProfilePage> createState() => _ProfilePageState();
}

class _ProfilePageState extends State<ProfilePage>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;
  double rating = 3.5;
  int _currentIndex = 0;

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this);
    _tabController.addListener(_handleTabSelection);

    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        systemOverlayStyle: SystemUiOverlayStyle(
          statusBarColor: Palette.current.black,
          statusBarIconBrightness: Brightness.light, // For Android (dark icons)
          statusBarBrightness: Brightness.dark, // For iOS (dark icons)
        ),
        actions: <Widget>[
          Padding(
            padding: const EdgeInsets.only(right: 10),
            child: IconButton(
              icon: Image.asset('assets/images/Setting.png'),
              tooltip: 'Open shopping cart',
              onPressed: () {
                // handle the press
              },
            ),
          ),
        ],
        automaticallyImplyLeading: false,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: IconButton(
              icon: Image.asset('assets/images/Message.png'), onPressed: () {}),
        ),
      ),
      backgroundColor: Palette.current.primaryNero,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const AccountInfoHeaderWidget(),
            const SizedBox(
              height: 10,
            ),
            StarRating(
              rating: rating,
              onRatingChanged: (rating) => setState(() => this.rating = rating),
            ),
            const SizedBox(
              height: 10,
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TabBar(
                controller: _tabController,
                indicator: UnderlineTabIndicator(
                    borderSide: BorderSide(
                      width: 3,
                      color: Palette.current.primaryNeonGreen,
                    ),
                    insets: (_currentIndex == 0)
                        ? const EdgeInsets.only(left: 0, right: 20)
                        : _currentIndex == 1
                            ? const EdgeInsets.only(left: 15, right: 15)
                            : _currentIndex == 2
                                ? const EdgeInsets.only(left: 29, right: 0)
                                : _currentIndex == 3
                                    ? const EdgeInsets.only(left: 55, right: 0)
                                    : const EdgeInsets.only(left: 0, right: 0)),
                indicatorSize: TabBarIndicatorSize.label,
                labelPadding: const EdgeInsets.only(left: 0, right: 0),
                labelColor: Palette.current.primaryNeonGreen,
                unselectedLabelColor: Palette.current.primaryWhiteSmoke,
                unselectedLabelStyle: Theme.of(context)
                    .textTheme
                    .headlineMedium!
                    .copyWith(
                        fontFamily: "Knockout",
                        letterSpacing: 1.5,
                        fontSize: 22,
                        fontWeight: FontWeight.w500),
                labelStyle: Theme.of(context)
                    .textTheme
                    .headlineMedium!
                    .copyWith(
                        fontFamily: "Knockout",
                        letterSpacing: 1.5,
                        fontSize: 22,
                        fontWeight: FontWeight.w500),
                tabs: [
                  Tab(
                      child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      S.of(context).tab_collection,
                    ),
                  )),
                  Tab(
                      child: Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: _buildTab(
                      text: S.of(context).tab_listings,
                    ),
                  )),
                  Padding(
                    padding: const EdgeInsets.only(left: 10),
                    child: Tab(
                        child: Align(
                      alignment: Alignment.centerRight,
                      child: Text(
                        S.of(context).tab_favorites,
                      ),
                    )),
                  ),
                  Tab(
                      child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      S.of(context).tab_sold,
                    ),
                  )),
                ],
              ),
            ),

            // tab bar view here
            Expanded(
              child: TabBarView(
                physics: NeverScrollableScrollPhysics(),
                controller: _tabController,
                children: const [
                  CollectionPage(),
                  ListingsPage(),
                  FavoritesPage(),
                  SoldPage()
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  _handleTabSelection() {
    if (_tabController.indexIsChanging) {
      setState(() {
        _currentIndex = _tabController.index;
      });
    }
  }
}

_buildTab({required String text}) {
  return Container(
    alignment: Alignment.center,
    width: double.infinity,
    child: Text(text),
  );
}
