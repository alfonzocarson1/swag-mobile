part of 'shared_preferences_bloc.dart';

@freezed
class SharedPreferencesEvent with _$SharedPreferencesEvent {
  const factory SharedPreferencesEvent.init(bool isListView) = Init;
  const factory SharedPreferencesEvent.setIsListView(bool isListView) =
      SetIsListView;
}
