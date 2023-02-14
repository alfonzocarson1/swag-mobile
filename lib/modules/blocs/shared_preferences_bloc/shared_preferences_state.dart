part of 'shared_preferences_bloc.dart';

@freezed
class SharedPreferencesState with _$SharedPreferencesState {
  const factory SharedPreferencesState.initial(bool value) = _Initial;
  const factory SharedPreferencesState.setIsListView(bool isListView) =
      _SetIsListView;
  const factory SharedPreferencesState.initialSortBy(int sortBy) =
      _InitialSortBy;
  const factory SharedPreferencesState.setSortBy(int sortBy) = _SetSortBy;
}
