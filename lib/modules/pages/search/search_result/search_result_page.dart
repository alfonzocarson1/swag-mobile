import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swagapp/modules/common/ui/pushed_header.dart';
import 'package:swagapp/modules/common/utils/palette.dart';
import 'package:swagapp/modules/models/search/catalog_item_model.dart';
import 'package:swagapp/modules/models/search/search_request_payload_model.dart';

import 'package:swagapp/modules/pages/search/search_result/widgets/search_result_field.dart';

import '../../../blocs/search_bloc.dart/search_bloc.dart';
import '../../../common/ui/simple_loader.dart';
import '../../../common/utils/custom_route_animations.dart';
import '../../../common/utils/tab_wrapper.dart';
import '../../../common/utils/utils.dart';
import '../../../constants/constants.dart';
import '../../../cubits/paginated_search/paginated_search_cubit.dart';
import '../../../di/injector.dart';
import '../../../models/search/filter_model.dart';
import 'widgets/search_result_body.dart';

class SearchResultPage extends StatefulWidget {
  static const name = '/SearchResult';
  final String searchParam;
  final SearchRequestPayloadModel? searchWithFilters;
  bool? staffPicksFlag;
  bool? unicornFlag;

  SearchResultPage(
      {Key? key,
      required this.searchParam,
      this.searchWithFilters,
      this.staffPicksFlag,
      this.unicornFlag})
      : super(key: key);

  static Route route(
          {required String searchParam,
          bool? staffPicksFlag,
          bool? unicornFlag}) =>
      PageRoutes.material(
        settings: const RouteSettings(name: name),
        builder: (context) => SearchResultPage(
            searchParam: searchParam,
            staffPicksFlag: staffPicksFlag,
            unicornFlag: unicornFlag),
      );

  @override
  State<SearchResultPage> createState() => _SearchResultPageState();
}

class _SearchResultPageState extends State<SearchResultPage>
    with AutomaticKeepAliveClientMixin<SearchResultPage> {
  late SearchState? previousState;

  @override
  bool get wantKeepAlive => true;
  SearchTab tab = SearchTab.all;
  int selectedIndex = 0;
  bool isLoading = false;
  final TextEditingController textEditingController = TextEditingController();
  Map<SearchTab, List<CatalogItemModel>> resultMap = {};
  List<CatalogItemModel> resultList = [];
  bool hasReachedMax = false;

  @override
  void initState() {
    super.initState();
    clearFilters(context);
    this.previousState = null;
    this.textEditingController.text = widget.searchParam;
  }

  callApi() async {
    getIt<PaginatedSearchCubit>().loadResults(
        searchModel: SearchRequestPayloadModel(
          searchParams:
              (widget.staffPicksFlag == true || widget.unicornFlag == true)
                  ? null
                  : [widget.searchParam],
          categoryId: null,
          whatsHotFlag: widget.staffPicksFlag,
          staffPicksFlag: widget.staffPicksFlag,
          unicornFlag: widget.unicornFlag,
          filters: const FilterModel(productType: null),
        ),
        searchTab: tab);
  }

  @override
  Widget build(BuildContext context) {
    super.build(context);

    callApi();
    return Scaffold(
        appBar: PushedHeader(
          customWidget: Column(
            children: [
              SearchResultField(
                textEditingController: this.textEditingController,
                searchParam: this.widget.searchParam,
              ),
              Container(
                color: Palette.current.darkGray,
                height: 0.2,
              ),
            ],
          ),
          height: 62,
        ),
        backgroundColor: Palette.current.primaryNero,
        body: BlocBuilder<PaginatedSearchCubit, PaginatedSearchState>(
            builder: (context, state) {
          return state.when(
              initial: () => const SimpleLoader(),
              loading: (isFirstFetch) {
                isLoading = true;
                return (resultList.isEmpty)
                    ? const SimpleLoader()
                    : Result_body(
                        widget: widget,
                        resultList: resultList,
                        tab: tab,
                        hasReachedMax: hasReachedMax);
              },
              loaded: (tabMap, newMap) {
                var newMapList = newMap[tab];
                resultList = tabMap[tab] ?? [];
                if (newMapList != null) {
                  hasReachedMax = newMapList.length >= defaultPageSize;
                }
                return Result_body(
                    widget: widget,
                    resultList: resultList,
                    tab: tab,
                    hasReachedMax: hasReachedMax);
              });
        }));
  }

  void setPreviousState(SearchState state) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      setState(() => this.previousState = state);
    });
  }

  Future<void> onRefresh() async {
    performSearch(context: context, searchParam: widget.searchParam, tab: null);
    return Future.delayed(const Duration(milliseconds: 1500));
  }
}

class _RefreshIndicator extends StatelessWidget {
  final Function onRefresh;

  const _RefreshIndicator({
    super.key,
    required this.onRefresh,
  });

  @override
  Widget build(BuildContext context) {
    return RefreshIndicator(
      onRefresh: () => this.onRefresh(),
      child: ListView.builder(
        itemBuilder: (_, index) => Container(),
        itemCount: 0,
      ),
    );
  }
}
