import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:swagapp/modules/common/utils/palette.dart';
import 'package:swagapp/modules/di/injector.dart';
import 'package:swagapp/modules/models/profile/profile_model.dart';
import 'package:swagapp/modules/pages/search/search_page.dart';

import '../../common/utils/custom_route_animations.dart';
import '../../cubits/alert/alert_cubit.dart';
import '../../cubits/collections/get_collections_cubit.dart';
import '../../cubits/listing_for_sale/get_listing_for_sale_cubit.dart';
import '../../cubits/profile/get_profile_cubit.dart';
import '../../cubits/sold/get_sold_cubit.dart';
import '../../data/shared_preferences/shared_preferences_service.dart';
import '../../pages/alert/alert_page.dart';
import '../../pages/profile/profile_page.dart';
import '../../routes/app_routes.dart';
import '../explore/account_info.dart';
import '../explore/explore_page.dart';
import '../login/create_account_page.dart';

class HomePage extends StatefulWidget {
  static const name = '/HomePage';
  const HomePage({
    super.key,
  });

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
  ProfileModel? profileData;
  bool unread = getIt<PreferenceRepositoryService>().unreadAlert();
  bool profileDataState =
      getIt<PreferenceRepositoryService>().getProfileDataState();

  List<Widget> widgetsChildren = [];
  var widgetsChildrenRefreshNotifiers = <ChangeNotifier>[];
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    widgetsChildrenRefreshNotifiers = [
      ChangeNotifier(),
      ChangeNotifier(),
      ChangeNotifier(),
      ChangeNotifier(),
    ];
    widgetsChildren = [
      ExplorePage(
        pageFromExplore: () {
          onTapTapped(1);
        },
        refreshNotifier: widgetsChildrenRefreshNotifiers[0],
      ),
      const SearchPage(),
      const AlertPage(),
      const ProfilePage()
    ];
    cehckIfProfileDataIsMissing();
  }

  void onTapTapped(int index) async {
    widgetsChildrenRefreshNotifiers[index]?.notifyListeners();
    bool isLogged = getIt<PreferenceRepositoryService>().isLogged();
    if ((index == 2 || index == 3) && !isLogged) {
      Navigator.of(context, rootNavigator: true)
          .push(CreateAccountPage.route());
      getIt<PreferenceRepositoryService>().saveReturExploreIsNotLogged(true);
    } else if (index == 2 && isLogged) {
      getIt<AlertCubit>().getAlertList();
    }
    else if(index == 3 && isLogged) {
      print("CALLED ALL");
      await getIt<ProfileCubit>().loadProfileResults();
      await getIt<SoldProfileCubit>().loadSoldList();
      await getIt<CollectionProfileCubit>().loadResults();
      await getIt<ListingProfileCubit>().loadResults();
    }

    setState(() {
      _controller.index = index;
      indexTap = index;
    });
  }

  void cehckIfProfileDataIsMissing() async {
    profileData = getIt<PreferenceRepositoryService>().profileData();
    await getIt<ProfileCubit>().loadProfileResults();
    try {
      final pData = getIt<PreferenceRepositoryService>().profileData();
      if (pData.addresses!.isEmpty && profileDataState) {
        Future.delayed(const Duration(milliseconds: 700), () {
          Navigator.of(context, rootNavigator: true)
              .push(AccountInfoPage.route());
        });
      }

      // if (context.canPop() && profileDataState == false ) {
      //   Navigator.pop(context);
      // }
    } catch (e) {
      debugPrint('Failed To Check Partial Profile Data Scenario: $e');
    }
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

    Future.delayed(Duration.zero, () {
      setState(() {
        this.unread = getIt<PreferenceRepositoryService>().unreadAlert();
      });
    });

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
            items: [
              const BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage('assets/images/server.png'),
                  size: 20,
                ),
                label: "Explore",
              ),
              const BottomNavigationBarItem(
                icon: ImageIcon(
                  AssetImage('assets/images/Browse.png'),
                  size: 20,
                ),
                label: "Search",
              ),
              BottomNavigationBarItem(
                icon: this.unread
                    ? Stack(
                        children: [
                          const ImageIcon(
                            AssetImage('assets/images/Alerts.png'),
                            size: 20,
                          ),
                          Positioned(
                            top: 0,
                            right: 0,
                            child: Container(
                              width: 10,
                              height: 10,
                              decoration: BoxDecoration(
                                color: Palette.current.primaryNeonPink,
                                shape: BoxShape.circle,
                              ),
                            ),
                          ),
                        ],
                      )
                    : const ImageIcon(
                        AssetImage('assets/images/Alerts.png'),
                        size: 20,
                      ),
                label: "Alerts",
              ),
              const BottomNavigationBarItem(
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
