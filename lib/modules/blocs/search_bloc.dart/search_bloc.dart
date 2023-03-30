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
    yield this.state;
    yield* stream;
  }

  void init() async {
    add(const SearchEvent.performSearch(
        SearchRequestPayloadModel(categoryId: null, filters: FilterModel()),
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

  Stream<SearchState> _reset() async* {}

  Stream<SearchState> _selectTab(final SearchTab tab, bool refresh) async* {
    if (tab == this.state.tab) return;
    yield SearchState.initial();

    final results =
        await searchService.find(this.state.query, tab, refresh: refresh);
    yield SearchState.result(result: results, tab: tab);
  }

  Stream<SearchState> _performSearch(SearchRequestPayloadModel payload, SearchTab tab) async* {
    
    SearchState previousState = this._getPreviousState(payload);
    if(previousState is _InitialSearchState) yield SearchState.initial();

    try {          

      if(previousState is _InitialSearchState) {
        
        yield await this._throwSearch(
          tab: tab, 
          payload: payload, 
          previousState: previousState, 
          nextPage: 0,
        );
      }
      else if(previousState is _SearchStateResult) {

        int nextPage = this._getPageNumber(this.state);

        yield (nextPage > previousState.page || (nextPage == 0 && previousState.page == 0)) 
        ? await this._throwSearch(
            tab: tab, 
            payload: payload, 
            previousState: previousState, 
            nextPage: nextPage,
          )
        : previousState;
      }
    } 
    catch (e) {
      yield SearchState.error(HandlingErrors().getError(e));
    }
  }

  SearchState _getPreviousState(SearchRequestPayloadModel payload ) {

    if(this.state is _SearchStateResult) {
      return (this.state.query != payload.searchParams?.first)
      ? SearchState.initial()
      : this.state;
    }
    return this.state;
  }

  Future<SearchState> _throwSearch({
    required SearchTab tab,
    required SearchRequestPayloadModel payload,
    required SearchState previousState,
    required int nextPage,
  }) async {

    Map<SearchTab, List<CatalogItemModel>> response = await searchService.search(
      tab: tab,
      model: payload, 
      page: nextPage,
    );

    this._saveSearches(payload, tab);

    return SearchState.result(
      result: this._getStackedResults(
        newSearch: response, 
        previousState: previousState,
      ),
      query: payload.searchParams?[0] ?? defaultString,
      page: nextPage,
      tab: tab,
    );
  }

  int _getPageNumber(SearchState previousState) {

    if(previousState is _SearchStateResult) {

      if(previousState.result.containsKey(SearchTab.all)) {

        int pageLength = previousState.result[SearchTab.all]?.length ?? 0;
        double page =  (pageLength / defaultPageSize);
        return (page % 1 == 0) ? page.round() : 0;
      }  
    }
    return 0;      
  }

  Map<SearchTab, List<CatalogItemModel>> _getStackedResults({
    required SearchState previousState, 
    required Map<SearchTab, List<CatalogItemModel>> newSearch,
  }) {

    Map<SearchTab, List<CatalogItemModel>> newResult = {};

    if(previousState is _SearchStateResult) {

      List<CatalogItemModel> newItems = newSearch[SearchTab.all] ?? [];
      List<CatalogItemModel> previousiItems = previousState.result[SearchTab.all] ?? [];        
      List<CatalogItemModel> concatedItems = [...previousiItems, ...newItems];

      newSearch.forEach((SearchTab key, List<CatalogItemModel> value) {

        (!previousState.result.containsKey(SearchTab.all)) 
        ? newResult.addAll({SearchTab.all: concatedItems})        
        : newResult.addAll({key: value}); 
          newResult[SearchTab.all] = concatedItems.toSet().toList();
      }); 
      
      return newResult;
    }
    return newSearch;
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

