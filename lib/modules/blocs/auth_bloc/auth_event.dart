part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.init() = Init;
  const factory AuthEvent.authenticate() = Authenticate;
  const factory AuthEvent.logout() = LogoutAuth;
}
