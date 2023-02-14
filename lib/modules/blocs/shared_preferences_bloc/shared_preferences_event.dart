part of 'shared_preferences_bloc.dart';

@freezed
class SharedPreferencesEvent with _$SharedPreferencesEvent {
  const factory SharedPreferencesEvent.setIsListView(bool isListView) =
      SetIsListView;
  const factory SharedPreferencesEvent.setSortBy(int sortBy) = SetSortBy;
}
