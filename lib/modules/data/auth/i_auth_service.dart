import 'package:swagapp/modules/models/auth/create_account_payload_model.dart';

import '../../models/auth/change_password_response_model.dart';
import '../../models/auth/forgot_password_code_model.dart';
import '../../models/auth/generic_response_model.dart';
import '../../models/profile/profile_model.dart';

abstract class IAuthService {
  Stream<String?> subscribeToAuthChanges();
  Future<CreateAccountResponseModel> authenticate(String email, String password);
  Future<CreateAccountResponseModel> createAccount(CreateAccountPayloadModel model);
  Future<void> logOut();
  Future<bool> isUsernameAvailable(String username);
  Future<void> requestPasswordResetCode(String email);
  Future<ForgotPasswordCodeModel> sendCode(String code);
  Future<ForgotPasswordCodeModel> validEmail(String email);
  Future<ProfileModel> privateProfile();
  Future<ChangePasswordResponseModel> changePassword(
      String changeCode, String newPassword, String deviceId);
}
