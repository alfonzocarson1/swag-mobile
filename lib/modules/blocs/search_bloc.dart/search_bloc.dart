import 'dart:async';

import 'package:swagapp/modules/constants/constants.dart';
import 'package:swagapp/modules/data/search/i_search_service.dart';
import 'package:swagapp/modules/models/search/catalog_item_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../common/utils/handling_errors.dart';
import '../../data/shared_preferences/shared_preferences_service.dart';
import '../../di/injector.dart';
import '../../models/search/category_model.dart';
import '../../models/search/filter_model.dart';
import '../../models/search/search_request_payload_model.dart';

part 'search_bloc.freezed.dart';
part 'search_event.dart';
part 'search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final ISearchService searchService;

  SearchBloc(this.searchService) : super(SearchState.initial()) {
    init();
  }

  Stream<SearchState> get authStateStream async* {
    yield state;
    yield* stream;
  }

  void init() async {
    add(SearchEvent.performSearch(
        SearchRequestPayloadModel(
            categoryId:
                await SearchTabWrapper(SearchTab.whatsHot).toStringCustom(),
            filters: const FilterModel()),
        SearchTab.whatsHot));
  }

  @override
  Stream<SearchState> mapEventToState(SearchEvent event) async* {
    yield* event.when(
      reset: _reset,
      performSearch: _performSearch,
      selectTab: _selectTab,
    );
  }

  Stream<SearchState> _reset() async* {
    // await _searchStreamSubscription?.cancel();
    // yield SearchState.recentSearch(queries: _getSearchQuerySuggestion());
  }

  Stream<SearchState> _selectTab(final SearchTab tab, bool refresh) async* {
    if (tab == state.tab) return;
    yield SearchState.initial();

    final results =
        await searchService.find(state.query, tab, refresh: refresh);
    yield SearchState.result(result: results, tab: tab);
  }

  Stream<SearchState> _performSearch(SearchRequestPayloadModel payload, SearchTab tab) async* {
    
    SearchState previousState = state;
    int nextPage = this._getPageNumber(state);
    yield SearchState.initial();

    try {

      Map<SearchTab, List<CatalogItemModel>> response = await searchService.search(
        tab: tab,
        model: payload, 
        page: nextPage,
      );

      this._saveSearches(payload, tab);

      yield SearchState.result(
        result: this._getStackedResults(
          newSearch: response, 
          previousState: previousState,
        ),
        query: payload.searchParams?[0] ?? defaultString,
        page: 0,
        tab: tab,
      );
    } catch (e) {
      yield SearchState.error(HandlingErrors().getError(e));
    }
  }

  int _getPageNumber(SearchState previousState) {
  
    return state.maybeWhen(
      result: (Map<SearchTab, List<CatalogItemModel>> result, String query, int page, SearchTab tab) {
        
        if(result.containsKey(SearchTab.all)) {

          int pageLength = result[SearchTab.all]!.length;
          double page = defaultPageSize / pageLength;
          return (page % 1 == 0) ? page.round() : 0;
        }
        return 0;
      }, 
      orElse: ()=> 0,
    );
  }

  Map<SearchTab, List<CatalogItemModel>> _getStackedResults({
    required SearchState previousState, 
    required Map<SearchTab, List<CatalogItemModel>> newSearch,
  }) {
    return previousState.maybeWhen(
      result: (Map<SearchTab, List<CatalogItemModel>> result, String query, int page, SearchTab tab){

        Map<SearchTab, List<CatalogItemModel>> newResult = {};
        List<CatalogItemModel> newItems = newSearch[SearchTab.all]!;
        List<CatalogItemModel> previousiItems = result[SearchTab.all]!;        
        List<CatalogItemModel> concatedItems = [...newItems, ...previousiItems];

        result.forEach((SearchTab key, List<CatalogItemModel> value) {
          (key == SearchTab.all) 
          ? newResult.addAll({key: concatedItems})
          : newResult.addAll({key: value});
        }); 

        return newResult;
      },
      orElse: ()=> newSearch,
    );
  }

  Future<void> _saveSearches(SearchRequestPayloadModel payload, SearchTab tab) async {
    
    if(payload.searchParams?.isNotEmpty ?? false) {

      List<String> recentSearches = getIt<PreferenceRepositoryService>().getRecentSearches();
      recentSearches.removeWhere((search) => payload.searchParams!.first == search);
      recentSearches.add(payload.searchParams!.first);
      await getIt<PreferenceRepositoryService>().saveRecentSearches(recentSearches);
    }
  }
}

