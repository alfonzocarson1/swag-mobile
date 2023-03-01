import 'dart:async';

import 'package:swagapp/modules/constants/constants.dart';
import 'package:swagapp/modules/models/search/catalog_item_model.dart';
import 'package:swagapp/modules/models/search/category_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../../common/utils/handling_errors.dart';
import '../../../data/search_tabs/i_search_tabs_service.dart';
import '../../../data/shared_preferences/shared_preferences_service.dart';
import '../../../di/injector.dart';
import '../../../models/search/search_request_payload_model.dart';
import '../../../models/search_tabs/payload_search_model.dart';
import '../../../models/search_tabs/search_tabs_response_model.dart';

part 'head_covers_bloc.freezed.dart';
part 'head_covers_event.dart';
part 'head_covers_state.dart';

class HeadcoversBloc
    extends Bloc<SearchHeadcoversEvent, SearchHeadcoversState> {
  final ISearchTabsService searchService;

  HeadcoversBloc(this.searchService) : super(SearchHeadcoversState.initial()) {
    add(SearchHeadcoversEvent.search(
        const SearchRequestPayloadModel(categoryId: defaultString),
        FiltersPayload(currentPage: '1')));
  }

  Stream<SearchHeadcoversState> get authStateStream async* {
    yield state;
    yield* stream;
  }

  @override
  Stream<SearchHeadcoversState> mapEventToState(
      SearchHeadcoversEvent event) async* {
    yield* event.when(search: _search);
  }

  Stream<SearchHeadcoversState> _search(
      final SearchRequestPayloadModel payload, FiltersPayload param) async* {
    yield SearchHeadcoversState.initial();

    try {
      SearchTabsResponseModel responseBody =
          await searchService.catalogSearchList(param);

      getIt<PreferenceRepositoryService>().saveRecentSearches([
        "Skulls",
        "Royals 8-bit",
        "Royals 8-bit",
        "Royals 8-bit",
        "Royals 8-bit",
        "Royals 8-bit",
        "Royals 8-bit",
        "Royals 8-bit",
        "Royals 8-bit",
        "Royals 8-bit"
      ]);
      yield SearchHeadcoversState.result(
          result: {SearchTab.all: responseBody.catalogList},
          query: payload.searchParams);
    } catch (e) {
      yield SearchHeadcoversState.error(HandlingErrors().getError(e));
    }
  }
}
