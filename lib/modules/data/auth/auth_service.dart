import 'dart:convert';
import 'dart:ffi';

import 'package:swagapp/modules/pages/login/create_account_page.dart';

import '../../api/api.dart';
import '../../api/api_service.dart';
import 'i_auth_service.dart';

class AuthService extends IAuthService {
  AuthService(this.apiService);

  final APIService apiService;

  @override
  Stream<String?> subscribeToAuthChanges() => Stream.value(null);

  @override
  Future<void> authenticate() async {}

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
}
