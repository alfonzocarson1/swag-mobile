import 'package:flutter_secure_storage/flutter_secure_storage.dart';
import 'package:swagapp/modules/data/secure_storage/storage_repository_int.dart';

class StorageRepositoryService implements StorageRepositoryInt {
  static const String _token = 'token';
  static const String _email = 'email';
  static const String _password = 'password';
  late FlutterSecureStorage _storage;

  @override
  FlutterSecureStorage get storage => _storage;

  @override
  void initialize() {
    _storage = const FlutterSecureStorage();
  }

  @override
  Future<void> saveToken(
    String token,
  ) async {
    await _storage.write(key: _token, value: token);
  }

  @override
  Future<String?> getToken() async {
    try {
      final token = await storage.read(key: _token);
      return token;
    } catch (e) {
      return null;
    }
  }

  @override
  Future<void> saveEmail(
    String email,
  ) async {
    await _storage.write(key: _email, value: email);
  }

  @override
  Future<String?> getEmail() async {
    try {
      final email = await storage.read(key: _email);
      return email;
    } catch (e) {
      return null;
    }
  }

  @override
  Future<void> savePassword(
    String password,
  ) async {
    await _storage.write(key: _password, value: password);
  }

  @override
  Future<String?> getPassword() async {
    try {
      final password = await storage.read(key: _password);
      return password;
    } catch (e) {
      return null;
    }
  }
}
