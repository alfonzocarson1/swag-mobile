part of 'shared_preferences_bloc.dart';

@freezed
class SharedPreferencesState with _$SharedPreferencesState {
  const factory SharedPreferencesState.setPreference(
      SharedPreferenceModel model) = _SetPreference;
}
