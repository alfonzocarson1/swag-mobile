import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swagapp/modules/pages/add/collection/widgets/item_page_grid_body.dart';

import '../../../../generated/l10n.dart';
import '../../../blocs/search_bloc.dart/search_bloc.dart';
import '../../../common/ui/loading.dart';
import '../../../common/ui/pushed_header.dart';
import '../../../common/ui/search_input.dart';
import '../../../common/ui/simple_loader.dart';
import '../../../common/utils/custom_route_animations.dart';
import '../../../common/utils/palette.dart';
import '../../../common/utils/size_helper.dart';
import '../../../common/utils/tab_wrapper.dart';

import '../../../constants/constants.dart';
import '../../../cubits/paginated_search/paginated_search_cubit.dart';
import '../../../di/injector.dart';
import '../../../models/search/catalog_item_model.dart';
import '../../../models/search/filter_model.dart';
import '../../../models/search/search_request_payload_model.dart';
import '../../search/search_on_tap_page.dart';

class SelectItemPage extends StatefulWidget {
  static const name = '/SelectItemPage';
  const SelectItemPage({super.key, required this.page});

  final int page;

  static Route route(int page) => PageRoutes.material(
        settings: const RouteSettings(name: name),
        builder: (context) => SelectItemPage(page: page),
      );

  @override
  State<SelectItemPage> createState() => _SelectItemPageState();
}

class _SelectItemPageState extends State<SelectItemPage> {
  late ResponsiveDesign _responsiveDesign;
  SearchTab tab = SearchTab.all;
  bool isLoading = false;
  List<CatalogItemModel> resultList = [];
  bool hasReachedMax = false;
  final TextEditingController _searchController = TextEditingController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // context
    //     .read<SearchBloc>()
    //     .add(SearchEvent.selectTab(SearchTab.values[widget.page], true));
    tab = SearchTab.values.elementAt(widget.page);
    getIt<PaginatedSearchCubit>().resetPages(tab);
    callApi(null);
  }

  @override
  Widget build(BuildContext context) {
    _responsiveDesign = ResponsiveDesign(context);
    return Scaffold(
        appBar: PushedHeader(
          showBackButton: true,
          title: Align(
            alignment: Alignment.centerRight,
            child: Text(S.of(context).select_item,
                style: Theme.of(context).textTheme.displayLarge!.copyWith(
                    letterSpacing: 1,
                    fontWeight: FontWeight.w300,
                    fontFamily: "KnockoutCustom",
                    fontSize: 30,
                    color: Palette.current.primaryNeonGreen)),
          ),
          customWidget: Column(
            children: [
              _searchField(context, S.of(context).search_hint),
              Container(
                color: Palette.current.darkGray,
                height: 0.2,
              ),
            ],
          ),
          height: 120,
        ),
        backgroundColor: Palette.current.primaryNero,
        body: BlocBuilder<PaginatedSearchCubit, PaginatedSearchState>(
            builder: (context, state) {
          return state.when(
              initial: () => const SimpleLoader(),
              loading: (isFirstFetch) {
                isLoading = true;
                return ItemPageGridBody(
                  catalogList: resultList,
                  refresh: null,
                );
              },
              loaded: (tabMap, newMap) {
                var newMapList = newMap[tab];
                resultList = tabMap[tab] ?? [];
                if (newMapList != null) {
                  hasReachedMax = newMapList.length >= defaultPageSize;
                }
                return ItemPageGridBody(
                  catalogList: resultList,
                  refresh: () {
                    callApi(null);
                  },
                  scrollListener: () => hasReachedMax
                      ? getIt<PaginatedSearchCubit>().loadMoreResults(tab)
                      : {},
                );
              });
        }));
  }

  callApi(String? param) async {
    if (param == null) {
      _searchController.clear();
    }
    getIt<PaginatedSearchCubit>().loadResults(
        searchModel: SearchRequestPayloadModel(
          searchParams: (param == null || param.isEmpty) ? null : [param],
          categoryId: await SearchTabWrapper(SearchTab.values[widget.page])
              .toStringCustom(),
          whatsHotFlag: null,
          staffPicksFlag: null,
          unicornFlag: null,
          filters: const FilterModel(productType: null),
        ),
        searchTab: tab);
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
            child: Padding(
          padding: const EdgeInsets.only(left: 16, top: 4),
          child: TextField(
            style: Theme.of(context)
                .textTheme
                .bodySmall!
                .copyWith(letterSpacing: 0.2, color: Palette.current.darkGray),
            controller: _searchController,
            onSubmitted: (value) => setState(() {
              callApi(value);
            }),
            onChanged: (value) => setState(() {
              callApi(value);
            }),
            decoration: InputDecoration(
                border: InputBorder.none,
                labelText: title,
                labelStyle: Theme.of(context).textTheme.bodySmall!.copyWith(
                    fontWeight: FontWeight.w300,
                    letterSpacing: 0.2,
                    color: Palette.current.darkGray)),
          ),
        )),
      ],
    );
  }
}
