import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:swagapp/modules/pages/search/search_result/search_result_page.dart';
import '../../common/utils/custom_route_animations.dart';
import '../../common/utils/palette.dart';
import '../../data/shared_preferences/shared_preferences_service.dart';
import '../../di/injector.dart';

class RecentSearchesPage extends StatefulWidget {
  static const name = '/RecentSearches';
  const RecentSearchesPage({Key? key}) : super(key: key);

  static Route route() => PageRoutes.material(
        settings: const RouteSettings(name: name),
        builder: (context) => const RecentSearchesPage(),
      );

  @override
  State<RecentSearchesPage> createState() => _RecentSearchesPageState();
}

class _RecentSearchesPageState extends State<RecentSearchesPage> {
  @override
  Widget build(BuildContext context) {

    List<String> recentSearches = getIt<PreferenceRepositoryService>().getRecentSearches();
    List<String> reversedRecentSearches = recentSearches.reversed.toList();

    return Container(
      color: Palette.current.primaryNero,
      child: ListView.builder(
        keyboardDismissBehavior: ScrollViewKeyboardDismissBehavior.onDrag,
        itemCount: reversedRecentSearches.length,
        padding: const EdgeInsets.only(top: 10),
        itemBuilder: (_, index) => this._recentItem(context, reversedRecentSearches[index]),
      ),
    );
  }

  Widget _recentItem(BuildContext context, String searchParam) {
    return InkWell(
      onTap: ()=> PersistentNavBarNavigator.pushNewScreen(
        context,
        screen: SearchResultPage(searchParam: searchParam),
        withNavBar: true,
      ),
      child: Column(
        children: [
          Ink(
            height: 50,
            decoration: BoxDecoration(color: Palette.current.primaryNero),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 20.0, right: 21),
                  child: Row(
                    children: [
                      RichText(
                        maxLines: 1,
                        softWrap: false,
                        overflow: TextOverflow.ellipsis,
                        text: TextSpan(children: [
                          TextSpan(
                            text: searchParam,
                            style: Theme.of(context)
                                .textTheme
                                .headlineLarge!
                                .copyWith(
                                    color: Palette.current.darkGray,
                                    fontSize: 16),
                          ),
                        ]),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Container(
            color: Palette.current.darkGray,
            height: 0.35,
          ),
        ],
      ),
    );
  }

  void onTapResult(BuildContext context, String searchParam) {
    PersistentNavBarNavigator.pushNewScreen(
      context,
      screen: SearchResultPage(searchParam: searchParam),
      withNavBar: true,
    );
  }
}
