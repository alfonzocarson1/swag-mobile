part of 'search_bloc.dart';

@freezed
class SearchEvent with _$SearchEvent {
  const factory SearchEvent.getCategories() = _GetCategories;
  const factory SearchEvent.search(SearchRequestPayloadModel payload) =
      _SearchEventSearch;
  const factory SearchEvent.reset() = _SearchEventReset;
}
