import 'package:flutter_secure_storage/flutter_secure_storage.dart';

abstract class StorageRepositoryInt {
  FlutterSecureStorage get storage;
  void initialize();
  Future<void> saveToken(String token);
  Future<String?> getToken();
  Future<void> saveEmail(String email);
  Future<String?> getEmail();
  Future<void> savePassword(String password);
  Future<String?> getPassword();
  Future<void> saveFirstName(String firstName);
  Future<String?> getFirstName();
  Future<void> saveLastName(String lastName);
  Future<String?> getLastName();
  Future<void> saveAddresses(List<String> addresses);
  Future<List<String?>> getAddresses();

}
