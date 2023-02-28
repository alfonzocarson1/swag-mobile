part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.init() = Init;
  const factory AuthEvent.createAccount(CreateAccountPayloadModel model) =
      CreateAccount;
  const factory AuthEvent.authenticate(String email, String password) =
      Authenticate;
  const factory AuthEvent.logout() = LogoutAuth;
}
