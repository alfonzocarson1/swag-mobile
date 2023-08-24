part of 'username_bloc.dart';

@freezed
class UsernameState with _$UsernameState {
  const factory UsernameState.initial() = Initial;
  const factory UsernameState.isUsernameAvailable(bool isUsernameAvailable) = IsUsernameAvailable;
  const factory UsernameState.error(final String message) = AuthenticationError;
  const factory UsernameState.isInternetAvailable(bool isInternetAvailable) = IsInternetAvailable;
}
