part of 'saved_searches_cubit.dart';

@freezed
class SavedSearchesState with _$SavedSearchesState {
  const factory SavedSearchesState.loading() = _Loading;
  const factory SavedSearchesState.loaded(List<SavedSearch> savedSearchList) = _Loaded;
  const factory SavedSearchesState.error(String errorMessage) = _Error;
}
