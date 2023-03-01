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

part 'whats_hot_bloc.freezed.dart';
part 'whats_hot_event.dart';
part 'whats_hot_state.dart';

class WhatsHotBloc extends Bloc<SearchWhatsHotEvent, SearchWhatsHotState> {
  final ISearchTabsService searchService;

  WhatsHotBloc(this.searchService) : super(SearchWhatsHotState.initial()) {
    add(SearchWhatsHotEvent.search(
        const SearchRequestPayloadModel(categoryId: defaultString),
        FiltersPayload(currentPage: '0')));
  }

  Stream<SearchWhatsHotState> get authStateStream async* {
    yield state;
    yield* stream;
  }

  @override
  Stream<SearchWhatsHotState> mapEventToState(
      SearchWhatsHotEvent event) async* {
    yield* event.when(search: _search);
  }

  Stream<SearchWhatsHotState> _search(
      final SearchRequestPayloadModel payload, FiltersPayload param) async* {
    yield SearchWhatsHotState.initial();

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
      yield SearchWhatsHotState.result(
          result: {SearchTab.all: responseBody.catalogList},
          query: payload.searchParams);
    } catch (e) {
      yield SearchWhatsHotState.error(HandlingErrors().getError(e));
    }
  }
}
