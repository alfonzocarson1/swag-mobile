part of 'shared_preferences_bloc.dart';

@freezed
class SharedPreferencesState with _$SharedPreferencesState {
  const factory SharedPreferencesState.initial(bool isListView) = _Initial;
  const factory SharedPreferencesState.setIsListView(bool isListView) =
      _SetIsListView;
}
