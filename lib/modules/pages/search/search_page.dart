import 'package:flutter/material.dart';
import 'package:swagapp/generated/l10n.dart';
import 'package:swagapp/modules/common/ui/pushed_header.dart';
import 'package:swagapp/modules/common/ui/search_input.dart';
import 'package:swagapp/modules/common/utils/palette.dart';
import 'package:swagapp/modules/pages/search/accessories_page.dart';
import 'package:swagapp/modules/pages/search/headcovers_page.dart';
import 'package:swagapp/modules/pages/search/putters_page.dart';
import 'package:swagapp/modules/pages/search/search_on_tap_page.dart';
import 'package:swagapp/modules/pages/search/whats_hot_page.dart';

import '../../common/utils/custom_route_animations.dart';

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

  bool _isLogged = false;
  @override
  void initState() {
    super.initState();
    _controller = TabController(length: 4, vsync: this);
    // _isLogged = getIt<PreferenceRepositoryService>().isLogged();
    // if (_isLogged) {
    //   Future.delayed(const Duration(milliseconds: 2000), () {
    //     Navigator.of(context, rootNavigator: true)
    //         .push(AccountInfoPage.route());
    //   });
    // }
  }

  @override
  void dispose() {
    _controller.dispose();
    super.dispose();
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
                  height: 0.5,
                ),
                _getTabBar(context),
              ],
            ),
            height: 120,
          ),
          backgroundColor: Palette.current.primaryNero,
          body: TabBarView(controller: _controller, children: const [
            WhatsHotPage(),
            HeadcoversPage(),
            PuttersPage(),
            AccessoriesPage()
          ])),
    );
  }

  Widget _searchField(BuildContext context, String title) {
    return Row(
      children: [
        Expanded(
          child: InkWell(
            onTap: () {
              Navigator.of(context, rootNavigator: true)
                  .push(SearchOnTapPage.route(_textEditingController));
            },
            child: SearchInput(
                showIconAlways: true,
                prefixIcon: Image.asset(
                  "assets/icons/Search.png",
                  height: 24,
                  width: 24,
                ),
                suffixIcon: null,
                enabled: false,
                controller: _textEditingController,
                hint: title,
                resultViewBuilder: (_, controller) => Container(),
                onCancel: () {
                  _textEditingController.text = '';
                  // context
                  //     .read<CategoryBloc>()
                  //     .add(const CategoryEvent.refresh());
                  // context.read<SearchBloc>().add(const SearchEvent.reset());
                }),
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Image.asset(
            "assets/icons/ForSale.png",
            height: 24,
            width: 24,
          ),
        ),
        IconButton(
          onPressed: () {},
          icon: Image.asset(
            "assets/icons/Filter.png",
            height: 24,
            width: 24,
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
        unselectedLabelColor: Palette.current.primaryWhiteSmoke,
        unselectedLabelStyle: Theme.of(context)
            .textTheme
            .headlineMedium!
            .copyWith(
                fontFamily: "Knockout",
                letterSpacing: 1.1,
                fontWeight: FontWeight.w300),
        labelStyle: Theme.of(context).textTheme.headlineMedium!.copyWith(
            fontFamily: "Knockout",
            letterSpacing: 1.0,
            fontWeight: FontWeight.w300),
        onTap: (index) {
          setState(() {});
        },
        tabs: [
          Tab(
            child: _buildTab(
              text: S.of(context).whats_hot,
            ),
          ),
          Tab(
            child: _buildTab(
              text: S.of(context).headcovers,
            ),
          ),
          Tab(
            child: _buildTab(
              text: S.of(context).putters,
            ),
          ),
          Tab(
            child: _buildTab(
              text: S.of(context).accessories,
            ),
          ),
        ],
      ),
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
