import 'package:swagapp/modules/constants/constants.dart';
import 'package:swagapp/modules/models/auth/generic_response_model.dart';
import 'package:swagapp/modules/pages/login/create_account_page.dart';

import '../../api/api.dart';
import '../../api/api_service.dart';
import '../../models/auth/change_password_response_model.dart';
import '../../models/auth/create_account_payload_model.dart';
import '../../models/auth/forgot_password_code_model.dart';
import '../../models/profile/profile_model.dart';
import 'i_auth_service.dart';

class AuthService extends IAuthService {
  AuthService(this.apiService);

  final APIService apiService;

  @override
  Stream<String?> subscribeToAuthChanges() => Stream.value(null);

  @override
  Future<CreateAccountResponseModel> authenticate(
      String email, String password) async {
    final response = await apiService.getEndpointData(
      endpoint: Endpoint.login,
      method: RequestMethod.post,
      body: {"password": password, "email": email, "deviceId": defaultString},
      fromJson: (json) => CreateAccountResponseModel.fromJson(json),
    );
    return response;
  }

  @override
  Future<CreateAccountResponseModel> createAccount(
      CreateAccountPayloadModel model) async {
    final response = await apiService.getEndpointData(
      endpoint: Endpoint.createNewAccount,
      method: RequestMethod.post,
      body: model.toJson(),
      fromJson: (json) => CreateAccountResponseModel.fromJson(json),
    );
    return response;
  }

  @override
  Future<void> logOut() async {}

  @override
  Future<bool> isUsernameAvailable(String username) async {
    String response = await apiService.getEndpointData(
      endpoint: Endpoint.isUsernameAvailable,
      method: RequestMethod.post,
      dynamicParam: username,
      fromJson: (json) => json,
    );
    return response.parseBool();
  }

  @override
  Future<void> requestPasswordResetCode(
    String email,
  ) async {
    final response = await apiService.getEndpointData(
      endpoint: Endpoint.requestPasswordResetCode,
      method: RequestMethod.post,
      dynamicParam: email,
      fromJson: (json) => json,
    );
    return response;
  }

  @override
  Future<ForgotPasswordCodeModel> sendCode(String code) async {
    final response = await apiService.getEndpointData(
      endpoint: Endpoint.requestIsvalidCode,
      method: RequestMethod.get,
      dynamicParam: code,
      fromJson: (json) => ForgotPasswordCodeModel.fromJson(json),
    );
    return response;
  }

  @override
  Future<ForgotPasswordCodeModel> validEmail(String email) async {
    final response = await apiService.getEndpointData(
      endpoint: Endpoint.isEmailInUse,
      method: RequestMethod.get,
      dynamicParam: email,
      fromJson: (json) => ForgotPasswordCodeModel.fromJson(json),
    );
    return response;
  }

  @override
  Future<ChangePasswordResponseModel> changePassword(
      String changeCode, String newPassword, String deviceId) async {
    Map<String, String> params = {
      "changeCode": changeCode,
      "newPassword": newPassword,
      "deviceId": deviceId
    };
    final response = await apiService.getEndpointData(
        endpoint: Endpoint.changePassword,
        method: RequestMethod.post,
        fromJson: (json) => ChangePasswordResponseModel.fromJson(json),
        body: params);
    return response;
  }

  @override
  Future<ProfileModel> privateProfile() async {
    final response = await apiService.getEndpointData(
      endpoint: Endpoint.privateProfile,
      method: RequestMethod.get,
      needBearer: true,
      fromJson: (json) => ProfileModel.fromJson(json),
    );
    return response;
  }
}
