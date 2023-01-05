abstract class IAuthService {
  Stream<String?> subscribeToAuthChanges();
  Future<void> authenticate();
  Future<void> logOut();
}
