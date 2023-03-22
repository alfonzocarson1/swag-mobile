import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swagapp/generated/l10n.dart';
import 'package:swagapp/modules/common/ui/body_widget_with_view.dart';
import 'package:swagapp/modules/common/ui/pushed_header.dart';
import 'package:swagapp/modules/common/ui/search_input.dart';
import 'package:swagapp/modules/common/utils/palette.dart';

import 'package:swagapp/modules/pages/search/filter/filters_bottom_sheet.dart';
import 'package:swagapp/modules/pages/search/search_on_tap_page.dart';

import '../../blocs/search_bloc.dart/search_bloc.dart';
import '../../blocs/shared_preferences_bloc/shared_preferences_bloc.dart';
import '../../common/ui/catalog_ui.dart';
import '../../common/ui/loading.dart';
import '../../common/utils/custom_route_animations.dart';
import '../../common/utils/utils.dart';
import '../../data/shared_preferences/shared_preferences_service.dart';
import '../../di/injector.dart';
import '../../models/search/catalog_item_model.dart';
import 'package:badges/badges.dart' as badges;

class SearchResultPage extends StatefulWidget {
  static const name = '/SearchResult';
  final String searchParam;

  const SearchResultPage(this.searchParam, {Key? key}) : super(key: key);

  static Route route(String searchParam) => PageRoutes.material(
        settings: const RouteSettings(name: name),
        builder: (context) => SearchResultPage(searchParam),
      );

  @override
  State<SearchResultPage> createState() => _SearchResultPageState();
}

class _SearchResultPageState extends State<SearchResultPage>
    with
        TickerProviderStateMixin,
        AutomaticKeepAliveClientMixin<SearchResultPage> {
  @override
  bool get wantKeepAlive => true;
  int selectedIndex = 0;
  late final ScrollController? _scrollController =
      PrimaryScrollController.of(context);
  final TextEditingController _textEditingController = TextEditingController();

  @override
  void initState() {
    super.initState();
    // initFilterAndSortsWithBloc(context);
    _textEditingController.text = widget.searchParam;
    performSearch(context, searchParam: widget.searchParam, tab: null);
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);
    return Scaffold(
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
        body: BlocConsumer<SearchBloc, SearchState>(
          listener: (context, state) => state.maybeWhen(
            orElse: () => Loading.isVisible() ? Loading.hide(context) : (){},
            error: (String message) => Loading.isVisible() ? Loading.hide(context) : (){},
            initial: ()=> !Loading.isVisible() ? Loading.show(context) : null,
          ),
          builder: (context, state) {
            return state.maybeMap(
              orElse: () => const Center(),
              error: (_) {
                return RefreshIndicator(
                    onRefresh: () async {
                      performSearch(context,
                          searchParam: widget.searchParam, tab: null);
                      return Future.delayed(const Duration(milliseconds: 1500));
                    },
                    child: ListView.builder(
                      itemBuilder: (_, index) => Container(),
                      itemCount: 0,
                    ));
              },
              result: (state) {
                return Column(
                  children: [
                    _getActionHeader(),
                    Expanded(
                      child: BodyWidgetWithView(
                        state.result[SearchTab.all] ?? [], 
                        SearchTab.all,
                        searchParams: widget.searchParam,
                      ),
                    ),
                  ],
                );
              },
            );
          },
        ));
  }

  Widget getBody(List<CatalogItemModel> catalogList) {
    return Column(
      children: [
        _getActionHeader(),
        Expanded(child: _getCatalogList(catalogList)),
      ],
    );
  }

  SizedBox _getActionHeader() {
    return SizedBox(
      height: 50,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 12.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            TextButton.icon(
              icon: Image.asset(
                "assets/icons/heart.png",
                height: 22,
                width: 22,
              ),
              label: Text(S.of(context).save_search),
              style: TextButton.styleFrom(
                backgroundColor: Colors.transparent,
                foregroundColor: Palette.current.primaryWhiteSmoke,
                textStyle: Theme.of(context).textTheme.bodySmall!.copyWith(
                    // fontWeight: FontWeight.bold,
                    fontSize: 15,
                    color: Palette.current.primaryWhiteSmoke),
              ),
              onPressed: () {},
            ),
            Text(
              "${S.of(context).sort} Release Date",
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  // fontWeight: FontWeight.bold,
                  fontSize: 14,
                  color: Palette.current.primaryWhiteSmoke),
            )
          ],
        ),
      ),
    );
  }

  Widget _getCatalogList(List<CatalogItemModel> catalogList) {
    return RefreshIndicator(
      onRefresh: () async {
        performSearch(context, searchParam: widget.searchParam, tab: null);
        return Future.delayed(const Duration(milliseconds: 1500));
      },
      child: catalogList.isNotEmpty
          ? CatalogPage(
              catalogItems: catalogList, scrollController: _scrollController!)
          : ListView.builder(
              itemBuilder: (_, index) => SizedBox(
                height: MediaQuery.of(context).size.height * 0.7,
                child: Center(
                  child: Text(
                    S.of(context).empty_text,
                    style: TextStyle(
                        fontSize: 24, color: Colors.black.withOpacity(0.50)),
                  ),
                ),
              ),
              itemCount: 1,
            ),
    );
  }

  Widget _searchField(BuildContext context, String title) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16.0, top: 4),
          child: InkWell(
            onTap: () async {
              _textEditingController.text = '';
              Navigator.pop(context);
              Navigator.pop(context);
            },
            child: Icon(
              Icons.arrow_back,
              color: Palette.current.primaryWhiteSmoke,
              size: 24,
            ),
          ),
        ),
        Expanded(
          child: InkWell(
            onTap: () {
              Navigator.of(context, rootNavigator: true)
                  .push(SearchOnTapPage.route());
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
              BlocBuilder<SharedPreferencesBloc, SharedPreferencesState>(
                  builder: (context, stateSharedPreferences) {
                return stateSharedPreferences.map(
                  setPreference: (state) => IconButton(
                    onPressed: () async {
                      await setIsForSale(!state.model.isForSale);
                      if (!mounted) return;
                      performSearch(context,
                          // isForsale: !state.model.isForSale,
                          tab: SearchTab.all);
                    },
                    icon: Image.asset(
                      "assets/icons/ForSale.png",
                      color: state.model.isForSale
                          ? Palette.current.primaryNeonGreen
                          : Palette.current.primaryWhiteSmoke,
                      height: 20,
                      width: 20,
                    ),
                  ),
                );
              }),
              BlocBuilder<SharedPreferencesBloc, SharedPreferencesState>(
                  builder: (context, stateSharedPreferences) {
                return stateSharedPreferences.map(
                  setPreference: (state) => IconButton(
                    onPressed: () {
                      Navigator.of(context, rootNavigator: true).push(
                          FiltersBottomSheet.route(context,
                              searchParam: widget.searchParam));
                    },
                    icon: badges.Badge(
                      showBadge: state.model.filtersAndSortsSelected > 0,
                      badgeContent: Stack(
                        alignment: Alignment.center,
                        children: [
                          const Icon(Icons.check, color: Colors.white, size: 6),
                          Text(
                            '${state.model.filtersAndSortsSelected}',
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall!
                                .copyWith(
                                    fontFamily: "Ringside",
                                    fontSize: 12,
                                    fontWeight: FontWeight.bold),
                          )
                        ],
                      ),
                      position: badges.BadgePosition.topEnd(top: -16, end: -8),
                      badgeStyle: badges.BadgeStyle(
                          badgeColor: Palette.current.primaryNeonGreen),
                      child: Image.asset(
                        "assets/icons/Filter.png",
                        color: state.model.filtersAndSortsSelected > 0
                            ? Palette.current.primaryNeonGreen
                            : Palette.current.primaryWhiteSmoke,
                        height: 20,
                        width: 20,
                      ),
                    ),
                  ),
                );
              })
            ],
          ),
        ),
      ],
    );
  }

  Future<void> setIsForSale(bool isForSale) async {
    final preference = context.read<SharedPreferencesBloc>().state.model;
    context.read<SharedPreferencesBloc>().add(
        SharedPreferencesEvent.setPreference(
            preference.copyWith(isForSale: isForSale)));
    await getIt<PreferenceRepositoryService>().saveIsForSale(isForSale);
  }
}
