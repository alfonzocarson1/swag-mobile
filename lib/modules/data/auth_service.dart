import '../api/api_service.dart';
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
}
