import 'package:flutter/material.dart';
import 'package:persistent_bottom_nav_bar/persistent_tab_view.dart';
import 'package:swagapp/generated/l10n.dart';
import 'package:swagapp/modules/blocs/search_bloc.dart/search_bloc.dart';
import 'package:swagapp/modules/common/ui/pushed_header.dart';
import 'package:swagapp/modules/common/ui/search_input.dart';
import 'package:swagapp/modules/common/utils/custom_route_animations.dart';
import 'package:swagapp/modules/common/utils/palette.dart';
import 'package:swagapp/modules/pages/search/recent_searches_page.dart';
import 'package:swagapp/modules/pages/search/saved_searches/saved_searches_page.dart';
import 'package:swagapp/modules/pages/search/search_result/search_result_page.dart';

import '../../common/utils/utils.dart';

class SearchOnTapPage extends StatefulWidget {
  static const name = '/searchOnTap';
  final TextEditingController _textEditingController = TextEditingController();

  static Route route() => PageRoutes.fade(
        settings: const RouteSettings(name: name),
        builder: (_) => SearchOnTapPage(),
      );

  SearchOnTapPage({super.key});

  @override
  State<SearchOnTapPage> createState() => _SearchOnTapPageState();
}

class _SearchOnTapPageState extends State<SearchOnTapPage>
    with
        TickerProviderStateMixin,
        AutomaticKeepAliveClientMixin<SearchOnTapPage> {
  @override
  bool get wantKeepAlive => true;
  final FocusNode _focusNode = FocusNode()..requestFocus();
  late final TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return WillPopScope(
      onWillPop: () async {
        // widget._textEditingController.clear();
        // context.read<CategoryBloc>().add(const CategoryEvent.refresh());
        // context.read<SearchBloc>().add(const SearchEvent.reset());
        return true;
      },
      child: DefaultTabController(
        length: 2,
        child: Scaffold(
          appBar: PushedHeader(
            customWidget: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.only(left: 0, right: 0, top: 0),
                  child: SearchInput(
                    resultViewBuilder: (_, controller) => Container(),
                    hint: S.of(context).search_hint,
                    prefixIcon: _InputPrefixIcon(onTap: () async => await goToResultPage()),
                    onSubmitted: (value) async => await goToResultPage(),
                    suffixIcon: Icon(
                      Icons.close,
                      size: 22,
                      color: Palette.current.primaryWhiteSmoke,
                    ),
                    focusNode: _focusNode,
                    controller: widget._textEditingController,
                    onCancel: () => Navigator.maybePop(context),
                    onChanged: (value) {
                      setState(() {});
                    },
                  ),
                ),
                Container(
                  color: Palette.current.darkGray,
                  height: 0.3,
                ),
              ],
            ),
            height: 62,
          ),
          backgroundColor: Palette.current.primaryNero,
          body: Stack(
            children: [
              Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  _getTabBar(context),
                  Expanded(
                    child:
                        TabBarView(controller: _tabController, children: const [
                      RecentSearchesPage(),
                      SavedSearchesPage(),
                    ]),
                  ),
                ],
              ),
              widget._textEditingController.text.isNotEmpty
                  ? Container(
                      color: Palette.current.blackSmoke,
                      child: Column(
                        children: [
                          _categoryItem(context, S.of(context).whats_hot,
                              SearchTab.whatsHot.index),
                          _categoryItem(context, S.of(context).headcovers,
                              SearchTab.headcovers.index),
                          _categoryItem(context, S.of(context).putters,
                              SearchTab.putters.index),
                          _categoryItem(context, S.of(context).accessories,
                              SearchTab.accessories.index),
                        ],
                      ),
                    )
                  : Container(),
            ],
          ),
        ),
      ),
    );
  }

  Future<void> goToResultPage({int? index}) async {
    initFilterAndSortsWithBloc(context, selectedProductNumber: index);

    await initFiltersAndSorts();
    if (!mounted || widget._textEditingController.text.isEmpty) return;

    PersistentNavBarNavigator.pushNewScreen(
      context,
      screen: SearchResultPage(searchParam: widget._textEditingController.text),
      withNavBar: true,
    );
  }

  Widget _categoryItem(BuildContext context, String category, int index) {
    return Column(
      children: [
        Material(
          color: Palette.current.blackSmoke,
          child: InkWell(
            splashColor: Palette.current.gray2,
            onTap: () async {
              await goToResultPage(index: index);
            },
            child: SizedBox(
              height: 50,
              child: Padding(
                padding: const EdgeInsets.only(left: 36.0, right: 20),
                child: Row(
                  children: [
                    Expanded(
                      child: RichText(
                        maxLines: 1,
                        softWrap: false,
                        overflow: TextOverflow.ellipsis,
                        text: TextSpan(children: [
                          TextSpan(
                              text: '${widget._textEditingController.text} ',
                              style: Theme.of(context)
                                  .textTheme
                                  .headlineLarge!
                                  .copyWith(
                                      color: Palette.current.primaryWhiteSmoke,
                                      fontSize: 16)),
                          TextSpan(
                            text: "in $category",
                            style: Theme.of(context)
                                .textTheme
                                .headlineLarge!
                                .copyWith(
                                    color: Palette.current.darkGray,
                                    fontSize: 16),
                          ),
                        ]),
                      ),
                    ),
                    const Spacer(),
                    Icon(
                      Icons.arrow_forward_ios_sharp,
                      size: 10,
                      color: Palette.current.darkGray,
                    )
                  ],
                ),
              ),
            ),
          ),
        ),
        Container(
          color: Palette.current.darkGray,
          height: 0.3,
        ),
      ],
    );
  }

  Widget _getTabBar(BuildContext context) {
    return PreferredSize(
      preferredSize: const Size.fromHeight(kToolbarHeight),
      child: Padding(
        padding: const EdgeInsets.only(left: 5, right: 20, top: 0),
        child: Align(
          alignment: Alignment.centerLeft,
          child: TabBar(
            isScrollable: true,
            controller: _tabController,
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
            tabs: [
              Tab(
                child: _buildTab(
                  text: S.of(context).recent_searches,
                ),
              ),
              Tab(
                child: _buildTab(
                  text: S.of(context).saved_searches,
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

_buildTab({required String text}) {
  return Text(text);
}

class _InputPrefixIcon extends StatelessWidget {

  final Function() onTap;

  const _InputPrefixIcon({
    super.key, 
    required this.onTap
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(top: 8),
      child: SizedBox.fromSize(
        size: const Size(20, 20),
        child: ClipOval(
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: ()=> this.onTap,
              child: Image.asset(
                "assets/icons/Search.png",
                height: 20,
                width: 20,
              ),
            ),
          ),
        ),
      ),
    );
  }
}