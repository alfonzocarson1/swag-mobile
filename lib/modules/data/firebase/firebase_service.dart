import '../../api/api.dart';
import '../../api/api_service.dart';

class FirebaseService {
  final APIService _apiService;

  FirebaseService(this._apiService);

  Future<void> storeFirebaseToken(String token, String accountId) async {
    final response = await _apiService.getEndpointData(
      endpoint: Endpoint.userWallets,
      method: RequestMethod.post,
      body: {
        "fireBaseToken": token,
        "accountId": accountId,
      },
      fromJson: (json) => json,
      needBearer: true,
    ) as Map<String, dynamic>;
  }
}
