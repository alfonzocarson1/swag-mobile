import 'dart:convert';

import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../common/utils/tab_wrapper.dart';
import '../../common/utils/utils.dart';
import '../../data/search_service/i_search_service.dart';
import '../../models/search/catalog_item_model.dart';
import '../../models/search/filter_model.dart';
import '../../models/search/search_request_payload_model.dart';

part 'paginated_search_state.dart';
part 'paginated_search_cubit.freezed.dart';

class PaginatedSearchCubit extends Cubit<PaginatedSearchState> {
  final ISearchService2 tabSearchService;
  PaginatedSearchCubit(this.tabSearchService)
      : super(const PaginatedSearchState.initial());

  Map<SearchTab, List<CatalogItemModel>> resultMap = {};
  Map<SearchTab, List<CatalogItemModel>> oldResultMap = {};

  Map<SearchTab, int> pageCountMap = {
    SearchTab.all: 0,
    SearchTab.whatsHot: 0,
    SearchTab.headcovers: 0,
    SearchTab.putters: 0,
    SearchTab.accessories: 0,
  };
  SearchTab? currentTab;
  SearchRequestPayloadModel? _model;
  bool isLoadingMore = false;

  resetPages(SearchTab tab) => pageCountMap.update(tab, (value) => 0);

  Future<void> loadResults({
    required SearchTab searchTab,
    required SearchRequestPayloadModel searchModel,
  }) async {
    var currentState = state;
    _model = searchModel;
    currentTab = searchTab;

    if (state is loading_search) return;

    if (currentState is loaded_search) {
      oldResultMap = mergeMaps(currentState.tabResultMap, {});
    }

    if (oldResultMap.containsKey(currentTab)) {
      if (!isLoadingMore) {
        oldResultMap.update(currentTab!, (value) => []);
      }
    }

    emit(loading_search(isFirstFetch: pageCountMap[currentTab] == 0));

    tabSearchService
        .search(
            model: searchModel,
            tab: currentTab!,
            page: pageCountMap[currentTab] ?? 0)
        .then((newMap) {
      if (isLoadingMore) {
        isLoadingMore = false;
      }
      resultMap = mergeMaps(oldResultMap, newMap);
      var newState = loaded_search(tabResultMap: resultMap, newMap: newMap);
      emit(newState);
    });
  }

  Map<SearchTab, List<CatalogItemModel>> mergeMaps(
      Map<SearchTab, List<CatalogItemModel>> map1,
      Map<SearchTab, List<CatalogItemModel>> map2) {
    Map<SearchTab, List<CatalogItemModel>> mergedMap = Map.from(map1);

    map2.forEach((key, value) {
      if (mergedMap.containsKey(key)) {
        value.forEach((element) {
          if (!mergedMap[key]!.contains(element)) {
            mergedMap[key]!.add(element);
          }
        });
      } else {
        mergedMap[key] = List.from(value);
      }
    });

    return mergedMap;
  }

  Future<SearchRequestPayloadModel> _defaultSearchRequestPayloadModel() async {
    final filters = await getCurrentFilterModel();
    return SearchRequestPayloadModel(
      filters: FilterModel(
        sortBy: filters.sortBy,
        theme: filters.theme,
        type: filters.type,
        conditions: filters.conditions,
        collection: filters.collection,
        forSale: filters.forSale,
        productType: filters.productType,
        priceRanges: filters.priceRanges,
        releaseYears: filters.releaseYears,
      ),
    );
  }

  Future<void> refreshResults(
      {String? params, required SearchTab searchTab}) async {
    _model ??= await _defaultSearchRequestPayloadModel();
    var currentfilters = await getCurrentFilterModel();
    var tabId = _model!.categoryId;
    pageCountMap.update(searchTab, (value) => 0);
    _model = SearchRequestPayloadModel(
      searchParams: (params != null) ? [params] : null,
      whatsHotFlag: (searchTab == SearchTab.whatsHot) ? true : null,
      staffPicksFlag: null,
      unicornFlag: null,
      categoryId: (searchTab == SearchTab.whatsHot) ? null : tabId,
      filters: currentfilters,
    );
    await loadResults(searchModel: _model!, searchTab: searchTab);
  }

  Future<void> loadMoreResults(SearchTab tab) async {
    pageCountMap.update(tab, (value) => value + 1);
    isLoadingMore = true;
    await loadResults(searchModel: _model!, searchTab: tab);
  }
}
