import 'package:shared_preferences/shared_preferences.dart';

abstract class PreferenceRepositoryInt {
  SharedPreferences get prefs;
  void initialize();

  bool isLogged();
  Future<void> saveIsLogged(bool value);
  bool hasJustSignedUp();
  Future<void> saveHasJustSignedUp(bool value);
}
