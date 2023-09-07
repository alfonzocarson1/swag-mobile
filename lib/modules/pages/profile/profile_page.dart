import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swagapp/modules/common/assets/icons.dart';
import 'package:swagapp/modules/cubits/chat/chat_cubit.dart';
import 'package:swagapp/modules/cubits/paywall/paywall_cubit.dart';
import 'package:swagapp/modules/pages/chats/chat_list_view.dart';
import 'package:swagapp/modules/pages/profile/sold/sold_page.dart';

import '../../../generated/l10n.dart';
import '../../common/ui/account_info_head.dart';
import '../../common/utils/custom_route_animations.dart';
import '../../common/utils/palette.dart';
import '../../common/utils/utils.dart';
import '../../cubits/profile/get_profile_cubit.dart';
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
  double blurLevel = 8.0;
  late ProfileModel profileData;
  bool hasUnreadMessages = false;

  @override
  void initState() {
    profileData = getIt<PreferenceRepositoryService>().profileData();
    _tabController = TabController(length: 4, vsync: this);
    _tabController.addListener(_handleTabSelection);
    super.initState();
  }

  @override
  void dispose() {
    super.dispose();
    _tabController.dispose();
  }

  getUnreadMessagesState() async {
    hasUnreadMessages = await getIt<ChatCubit>().hasUnreadMessages();
    setState(() {});
  }

  loadData() async {
    await getIt<ProfileCubit>().loadProfileResults();
    profileData = getIt<PreferenceRepositoryService>().profileData();
  }

  paywallAction() {
    ProfileModel profileData =
        getIt<PreferenceRepositoryService>().profileData();
    if (profileData.hasActiveSubscription != true) {
      showPaywallSplashScreen(
          context: context,
          hasUsedFreeTrial: profileData.hasUsedFreeTrial ?? false,
          removePaywall: () {});
    }
  }

  @override
  Widget build(BuildContext context) {
    resetPaywall();
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
              return state.maybeWhen(
                  orElse: () => Container(),
                  loadedProfileData: (ProfileModel profileBuildData) {
                    profileData = profileBuildData;
                    return Padding(
                      padding: const EdgeInsets.only(right: 10),
                      child: IconButton(
                        splashColor: Colors.transparent,
                        highlightColor: Colors.transparent,
                        icon: Image.asset(
                          'assets/images/Setting.png',
                          scale: 2.5,
                        ),
                        onPressed: () {
                          Navigator.of(context, rootNavigator: true)
                              .push(SettingsPage.route(profileBuildData));
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
                      (hasUnreadMessages)
                          ? AppIcons.chatNewMessage
                          : AppIcons.chat,
                      scale: 2.5,
                    ),
                    onPressed: () =>
                        Navigator.of(context, rootNavigator: true).push(
                          MaterialPageRoute(
                              builder: (context) => const ChatListPage()),
                        ));
              }, orElse: () {
                return IconButton(
                    splashColor: Colors.transparent,
                    highlightColor: Colors.transparent,
                    icon: Image.asset(
                      AppIcons.chat,
                      scale: 2.5,
                    ),
                    onPressed: () =>
                        Navigator.of(context, rootNavigator: true).push(
                          MaterialPageRoute(
                              builder: (context) => const ChatListPage()),
                        ));
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
             AccountInfoHeaderWidget(avatarFirstUse: false),
            const SizedBox(
              height: 20,
            ),
            collectiveValueWidget(),
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

  Widget collectiveValueWidget() {
    blurredValue() => BlurredValue(
          blurLevel: 8,
          collectionValue: profileData.collectionValue,
        );
    clearValue() => BlurredValue(
          blurLevel: 0,
          collectionValue: profileData.collectionValue,
        );

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 10.0),
          child: Text(S.of(context).collection_value,
              style: Theme.of(context).textTheme.displayMedium!.copyWith(
                  fontFamily: "KnockoutCustom",
                  fontSize: 20,
                  letterSpacing: 1.5,
                  fontWeight: FontWeight.w300,
                  color: Palette.current.light4)),
        ),
        BlocBuilder<ProfileCubit, ProfileCubitState>(
          builder: (context, state) {
            return state.maybeWhen(
              loadedProfileData: (profileData) {
                if (profileData.hasActiveSubscription == false) {
                  return BlocBuilder<PaywallCubit, PaywallCubitState>(
                    builder: (context, state) {
                      return state.maybeWhen(
                        initial: () => GestureDetector(
                          onTap: () {
                            if (profileData.hasActiveSubscription == false) {
                              paywallAction();
                            }
                          },
                          child: blurredValue(),
                        ),
                        success: () => clearValue(),
                        orElse: () => Container(),
                      );
                    },
                  );
                } else {
                  return BlurredValue(
                    blurLevel: 0,
                    collectionValue: profileData.collectionValue,
                  );
                }
              },
              orElse: () => (profileData.hasActiveSubscription == false)
                  ? blurredValue()
                  : clearValue(),
            );
          },
        ),
      ],
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

class BlurredValue extends StatelessWidget {
  const BlurredValue({
    super.key,
    required this.blurLevel,
    required this.collectionValue,
  });

  final double blurLevel;
  final double collectionValue;

  @override
  Widget build(BuildContext context) {
    final text = Text(decimalDigitsLastSalePrice(collectionValue.toString()),
        style: Theme.of(context).textTheme.displayMedium!.copyWith(
            fontFamily: "KnockoutCustom",
            fontSize: 45,
            letterSpacing: 1.0,
            fontWeight: FontWeight.w300,
            color: Palette.current.light4));
    if (blurLevel == 0) {
      return text;
    }
    return ImageFiltered(
      imageFilter: ImageFilter.blur(sigmaX: blurLevel, sigmaY: blurLevel),
      child: text,
    );
  }
}

_buildTab({required String text}) {
  return Container(
    alignment: Alignment.center,
    width: double.infinity,
    child: Text(text),
  );
}
