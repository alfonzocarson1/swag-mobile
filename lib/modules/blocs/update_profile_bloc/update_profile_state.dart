part of 'update_profile_bloc.dart';

@freezed
class UpdateProfileState with _$UpdateProfileState {
  UpdateProfileState._();
  factory UpdateProfileState.initial() = _InitialUpdateProfileState;
  factory UpdateProfileState.error(final String message) =
      _ErrorUpdateProfileState;
  factory UpdateProfileState.loadedSuccess(UpdateProfileModel successList) =
      LoadedSuccess;
  factory UpdateProfileState.loadedAvatarSuccess(
      UpdateAvatarModel successAvatarList) = LoadedAvatarSuccess;
  factory UpdateProfileState.updated() = Updated;
  factory UpdateProfileState.verificationEmailSent(bool verificationSent) = VerificationEmailSent;
  factory UpdateProfileState.dataImported(bool emailVerified) = DataImported;
}
