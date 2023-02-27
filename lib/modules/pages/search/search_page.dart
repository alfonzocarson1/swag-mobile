import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:swagapp/generated/l10n.dart';
import 'package:swagapp/modules/common/ui/pushed_header.dart';
import 'package:swagapp/modules/common/ui/search_input.dart';
import 'package:swagapp/modules/common/utils/palette.dart';
import 'package:swagapp/modules/pages/search/filter/filters_bottom_sheet.dart';
import 'package:swagapp/modules/pages/search/tabs/accessories_page.dart';
import 'package:swagapp/modules/pages/search/tabs/headcovers_page.dart';
import 'package:swagapp/modules/pages/search/tabs/putters_page.dart';
import 'package:swagapp/modules/pages/search/search_on_tap_page.dart';
import 'package:swagapp/modules/pages/search/tabs/whats_hot_page.dart';

import '../../common/utils/custom_route_animations.dart';
import '../../data/shared_preferences/shared_preferences_service.dart';
import '../../di/injector.dart';

class SearchPage extends StatefulWidget {
  static const name = '/SearchCatalog';
  const SearchPage({Key? key}) : super(key: key);

  static Route route() => PageRoutes.material(
        settings: const RouteSettings(name: name),
        builder: (context) => const SearchPage(),
      );

  @override
  State<SearchPage> createState() => _SearchPageState();
}

class _SearchPageState extends State<SearchPage>
    with TickerProviderStateMixin, AutomaticKeepAliveClientMixin<SearchPage> {
  @override
  bool get wantKeepAlive => true;
  late final TabController _controller;
  int selectedIndex = 0;
  final TextEditingController _textEditingController = TextEditingController();

  List<dynamic> categoriesData = [];

  @override
  void initState() {
    super.initState();
    getLastCategories();
    _controller = TabController(length: 4, vsync: this);
    // _isLogged = getIt<PreferenceRepositoryService>().isLogged();
    // if (_isLogged) {
    // Future.delayed(const Duration(milliseconds: 4000), () {
    //   Navigator.of(context, rootNavigator: true).push(AccountInfoPage.route());
    // });
    // }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
  }

  @override
  Future<void> getLastCategories() async {
    categoriesData =
        await getIt<PreferenceRepositoryService>().getLastCategories();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return DefaultTabController(
      length: 4,
      child: Scaffold(
          appBar: PushedHeader(
            customWidget: Column(
              children: [
                _searchField(context, S.of(context).search_hint),
                Container(
                  color: Palette.current.darkGray,
                  height: 0.2,
                ),
              ],
            ),
            height: 62,
          ),
          backgroundColor: Palette.current.primaryNero,
          body: getBody()),
    );
  }

  Widget getBody() {
    var tabLen = categoriesData.length;

    return Column(
      children: [
        tabLen == 0 ? Container() : _getTabBar(context),
        Expanded(
          child: TabBarView(controller: _controller, children: const [
            WhatsHotPage(),
            HeadcoversPage(),
            PuttersPage(),
            AccessoriesPage()
          ]),
        ),
      ],
    );
  }

  Widget _searchField(BuildContext context, String title) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16.0, top: 4),
          child: Image.asset(
            "assets/icons/Search.png",
            height: 20,
            width: 20,
          ),
        ),
        Expanded(
          child: InkWell(
            onTap: () {
              PersistentNavBarNavigator.pushNewScreen(
                context,
                screen: SearchOnTapPage(),
                withNavBar: true,
                pageTransitionAnimation: PageTransitionAnimation.cupertino,
              );
              // Navigator.of(context, rootNavigator: true)
              //     .push(SearchOnTapPage.route()); //_textEditingController
            },
            child: SearchInput(
                prefixIcon: null,
                suffixIcon: null,
                enabled: false,
                controller: _textEditingController,
                hint: title,
                resultViewBuilder: (_, controller) => Container(),
                onCancel: () {
                  // _textEditingController.text = '';
                  // context
                  //     .read<CategoryBloc>()
                  //     .add(const CategoryEvent.refresh());
                  // context.read<SearchBloc>().add(const SearchEvent.reset());
                }),
          ),
        ),
        Padding(
          padding: const EdgeInsets.only(top: 4.0),
          child: Row(
            children: [
              IconButton(
                onPressed: () {},
                icon: Image.asset(
                  "assets/icons/ForSale.png",
                  height: 20,
                  width: 20,
                ),
              ),
              IconButton(
                onPressed: () {
                  Navigator.of(context, rootNavigator: true)
                      .push(FiltersBottomSheet.route(context));
                },
                icon: Image.asset(
                  "assets/icons/Filter.png",
                  height: 20,
                  width: 20,
                ),
              ),
            ],
          ),
        ),
      ],
    );
  }

  Widget _getTabBar(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 10, left: 0, right: 0),
      child: TabBar(
          controller: _controller,
          labelColor: Palette.current.primaryNeonGreen,
          indicatorSize: TabBarIndicatorSize.label,
          unselectedLabelColor: Palette.current.primaryWhiteSmoke,
          unselectedLabelStyle: Theme.of(context)
              .textTheme
              .headlineMedium!
              .copyWith(
                  fontFamily: "KnockoutCustom",
                  fontSize: 21,
                  letterSpacing: 1.1,
                  fontWeight: FontWeight.w300),
          labelStyle: Theme.of(context).textTheme.headlineMedium!.copyWith(
              fontFamily: "KnockoutCustom",
              fontSize: 21,
              letterSpacing: 1.0,
              fontWeight: FontWeight.w300),
          onTap: (index) {
            setState(() {});
          },
          tabs: List<Widget>.generate(categoriesData.length, (index) {
            return Tab(
              child: _buildTab(
                text: categoriesData[index].categoryName.toUpperCase(),
              ),
            );
          })),
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
