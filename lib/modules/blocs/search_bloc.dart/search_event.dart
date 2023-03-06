part of 'search_bloc.dart';

@freezed
class SearchEvent with _$SearchEvent {
  const factory SearchEvent.performSearch(
      SearchRequestPayloadModel payload, SearchTab tab) = _PerformSearch;
  const factory SearchEvent.reset() = _SearchEventReset;
  const factory SearchEvent.selectTab(SearchTab tab) = _SearchEventSelectTab;
}
