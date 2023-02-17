part of 'shared_preferences_bloc.dart';

@freezed
class SharedPreferencesEvent with _$SharedPreferencesEvent {
  const factory SharedPreferencesEvent.setPreference(
      SharedPreferenceModel model) = SetPreference;
}
