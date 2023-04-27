part of 'get_profile_cubit.dart';

@freezed
class ProfileCubitState with _$ProfileCubitState {
  const factory ProfileCubitState.initial() = _Initial;
  const factory ProfileCubitState.loading({@Default(false) bool isFirstFetch}) =
      loading_search;

  factory ProfileCubitState.loadedProfileData(ProfileModel profileData) =
      LoadedProfileDataState;

  factory ProfileCubitState.error(final String message) = ErrorProfileState;
}
