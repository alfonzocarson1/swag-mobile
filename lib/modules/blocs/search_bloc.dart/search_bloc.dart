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
    // yield state.maybeMap(
    //   orElse: () => state,
    //   result: (state) => state.copyWith(tab: tab, result: results),
    // );
  }

  Stream<SearchState> _performSearch(SearchRequestPayloadModel payload, SearchTab tab) async* {
    // if (state.query == term) return;
    yield SearchState.initial();

    // const tab = SearchTab.whatsHot;
    // yield SearchState.searching(query: term, tab: tab);

    try {
      final response = await searchService.search(payload, tab);

      List<String> recentSearches = getIt<PreferenceRepositoryService>().getRecentSearches();
      recentSearches.removeWhere((search) => payload.searchParams!.first == search);
      recentSearches.add(payload.searchParams!.first);
      await getIt<PreferenceRepositoryService>().saveRecentSearches(recentSearches);

      yield SearchState.result(
        result: response,
        query: payload.searchParams?[0] ?? defaultString,
        tab: tab,
      );
    } catch (e) {
      yield SearchState.error(HandlingErrors().getError(e));
    }
  }
}
