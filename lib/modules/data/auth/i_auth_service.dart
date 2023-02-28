import 'package:swagapp/modules/models/auth/create_account_payload_model.dart';

import '../../models/auth/generic_response_model.dart';

abstract class IAuthService {
  Stream<String?> subscribeToAuthChanges();
  Future<void> authenticate();
  Future<GenericResponseModel> createAccount(CreateAccountPayloadModel model);
  Future<void> logOut();
  Future<bool> isUsernameAvailable(String username);
}
