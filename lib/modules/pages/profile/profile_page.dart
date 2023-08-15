import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swagapp/modules/common/assets/icons.dart';
import 'package:swagapp/modules/cubits/chat/chat_cubit.dart';
import 'package:swagapp/modules/pages/chats/chat_list_view.dart';
import 'package:swagapp/modules/pages/profile/sold/sold_page.dart';

import '../../../generated/l10n.dart';
import '../../common/ui/account_info_head.dart';
import '../../common/utils/custom_route_animations.dart';
import '../../common/utils/palette.dart';
import '../../common/utils/utils.dart';
import '../../cubits/collections/get_collections_cubit.dart';
import '../../cubits/listing_for_sale/get_listing_for_sale_cubit.dart';
import '../../cubits/profile/get_profile_cubit.dart';
import '../../cubits/sold/get_sold_cubit.dart';
import '../../data/shared_preferences/shared_preferences_service.dart';
import '../../di/injector.dart';
import '../../models/profile/profile_model.dart';
import '../settings/settings_page.dart';
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
  late double blurLevel;
  late ProfileModel profileData;
  bool hasUnreadMessages = false;

  @override
  void initState() {
    _tabController = TabController(length: 4, vsync: this);
    _tabController.addListener(_handleTabSelection);
    verifySubscriptionStatus();
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  void refresh() async {
    print("CALLED REFRESH");
    verifySubscriptionStatus();
    getIt<SoldProfileCubit>().loadSoldList();
    getIt<CollectionProfileCubit>().loadResults();
    getIt<ListingProfileCubit>().loadResults();
  }

  getUnreadMessagesState() async {
   hasUnreadMessages = await getIt<ChatCubit>().hasUnreadMessages();
    setState(() {});
  }

  verifySubscriptionStatus() async {
    await getIt<ProfileCubit>().loadProfileResults();
    setState(() {
      profileData = getIt<PreferenceRepositoryService>().profileData();
      if (profileData.hasActiveSubscription == true) {
        blurLevel = 0;
      } else {
        blurLevel = 8.0;
      }
    });
  }

  removePaywall() async {
    await getIt<ProfileCubit>().loadProfileResults();
    profileData = getIt<PreferenceRepositoryService>().profileData();
    blurLevel = 0;
    setState(() {});
  }

  paywallAction() {
    verifySubscriptionStatus();
    ProfileModel profileData =
        getIt<PreferenceRepositoryService>().profileData();
    if (profileData.hasActiveSubscription != true) {
      showPaywallSplashScreen(
          context: context,
          hasUsedFreeTrial: profileData.hasUsedFreeTrial ?? false,
          removePaywall: removePaywall);
    }
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
          BlocBuilder<ProfileCubit, ProfileCubitState>(
            builder: (context, state) {
              profileData = getIt<PreferenceRepositoryService>().profileData();
              if (profileData.hasActiveSubscription == true) {
                blurLevel = 0;
              } else {
                blurLevel = 8.0;
              }
              return state.maybeWhen(
                  orElse: () => Container(),
                  loadedProfileData: (ProfileModel

                  profileBuildData) {
                    return Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: IconButton(
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        icon: Image.asset(
                          'assets/images/Setting.png',
                          scale: 2.5,
                        ),
                        onPressed: () async  {
                          await Navigator.of(context, rootNavigator: true)
                              .push(SettingsPage.route(profileBuildData));
                          refresh();
                        },
                      ),
                    );
                  });
            },
          ),
        ],
        automaticallyImplyLeading: false,
        leading: Padding(
          padding: const EdgeInsets.only(left: 10),
          child: BlocBuilder<ChatCubit, ChatState>(
            builder: (context, state) {
              return state.maybeWhen(
                hasUnreadMessages: (hasUnreadMessages, unreadMessageCount) {
                  return IconButton(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  icon: Image.asset(
                    (hasUnreadMessages)?AppIcons.chatNewMessage : AppIcons.chat,
                    scale: 2.5,
                  ),
                  onPressed: () async {
                       await Navigator.of(context, rootNavigator: true).push(
                        MaterialPageRoute(
                            builder: (context) => const ChatListPage()));
                       refresh();
                      }
                      );
                },
                orElse: (){
                  return IconButton(
                  splashColor: Colors.transparent,
                  highlightColor: Colors.transparent,
                  icon: Image.asset(
                    AppIcons.chat,
                    scale: 2.5,
                  ),
                  onPressed: () async {
                   await Navigator.of(context, rootNavigator: true).push(
                      MaterialPageRoute(
                          builder: (context) => const ChatListPage()));
                     refresh();

                  }
    );
                });
            },
          ),
        ),
      ),
      backgroundColor: Palette.current.primaryNero,
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          children: [
            const AccountInfoHeaderWidget(),
            const SizedBox(
              height: 20,
            ),
            Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 10.0),
                  child: Text(S.of(context).collection_value,
                      style: Theme.of(context)
                          .textTheme
                          .displayMedium!
                          .copyWith(
                              fontFamily: "KnockoutCustom",
                              fontSize: 20,
                              letterSpacing: 1.5,
                              fontWeight: FontWeight.w300,
                              color: Palette.current.light4)),
                ),
                Stack(children: [
                  BlocBuilder<ProfileCubit, ProfileCubitState>(
                      builder: (context, state) {
                    return state.maybeWhen(
                      orElse: () => Container(),
                      loadedProfileData: (ProfileModel profileBuildData) {
                        return Padding(
                          padding: const EdgeInsets.only(left: 10.0),
                          child: GestureDetector(
                            onTap: () {
                              if(profileBuildData.hasActiveSubscription == false){
                                paywallAction();
                              }else{
                                
                              }
                              
                            },
                            child: ImageFiltered(
                              imageFilter: ImageFilter.blur(
                                  sigmaX: blurLevel, sigmaY: blurLevel),
                              child: Text(
                                  decimalDigitsLastSalePrice(profileBuildData
                                      .collectionValue
                                      .toString()),
                                  style: Theme.of(context)
                                      .textTheme
                                      .displayMedium!
                                      .copyWith(
                                          fontFamily: "KnockoutCustom",
                                          fontSize: 45,
                                          letterSpacing: 1.0,
                                          fontWeight: FontWeight.w300,
                                          color: Palette.current.light4)),
                            ),
                          ),
                        );
                      },
                    );
                  }),
                ]),
              ],
            ),
            const SizedBox(
              height: 10,
            ),

            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 20),
              child: TabBar(
                dividerColor: Colors.transparent,
                indicatorColor: Palette.current.primaryNeonGreen,
                controller: _tabController,
                indicator: UnderlineTabIndicator(
                    borderSide: BorderSide(
                      width: 3,
                      color: Palette.current.primaryNeonGreen,
                    ),
                    insets: (_currentIndex == 0)
                        ? const EdgeInsets.only(left: 0, right: 20)
                        : _currentIndex == 1
                            ? const EdgeInsets.only(left: 20, right: 10)
                            : _currentIndex == 2
                                ? const EdgeInsets.only(left: 25, right: 2)
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
                        fontFamily: "KnockoutCustom",
                        fontSize: 21,
                        letterSpacing: 1.1,
                        fontWeight: FontWeight.w300),
                labelStyle: Theme.of(context)
                    .textTheme
                    .headlineMedium!
                    .copyWith(
                        fontFamily: "KnockoutCustom",
                        fontSize: 21,
                        letterSpacing: 1.1,
                        fontWeight: FontWeight.w300),
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
