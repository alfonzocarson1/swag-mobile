import 'package:shared_preferences/shared_preferences.dart';

abstract class PreferenceRepositoryInt {
  SharedPreferences get prefs;
  void initialize();

  bool isGuestLogged();
  Future<void> saveIsGuestLogged(bool value);
}
