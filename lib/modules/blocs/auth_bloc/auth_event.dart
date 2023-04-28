part of 'auth_bloc.dart';

@freezed
class AuthEvent with _$AuthEvent {
  const factory AuthEvent.init() = Init;
  const factory AuthEvent.createAccount(CreateAccountPayloadModel model) =
      CreateAccount;
  const factory AuthEvent.authenticate(String email, String password) =
      Authenticate;
  const factory AuthEvent.logout() = LogoutAuth;
  const factory AuthEvent.sendEmail(String email) = _SendEmail;
  const factory AuthEvent.validCode(String code) = _ValidCode;

  const factory AuthEvent.changePassword(
      String changeCode, String newPassword, String deviceId) = _ChangePassword;
}
