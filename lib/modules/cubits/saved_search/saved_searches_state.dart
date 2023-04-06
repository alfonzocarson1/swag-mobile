import 'package:freezed_annotation/freezed_annotation.dart';
import '../../models/saved_searches/saved_search.dart';

part 'saved_searches_state.freezed.dart';

@freezed
class SavedSearchesState with _$SavedSearchesState {
  const factory SavedSearchesState.loading() = _Loading;
  const factory SavedSearchesState.loaded(List<SavedSearch> savedSearchList) = _Loaded;
  const factory SavedSearchesState.error(String errorMessage) = _Error;
}
