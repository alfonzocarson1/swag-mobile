import 'package:shared_preferences/shared_preferences.dart';

import 'i_shared_preferences.dart';

class PreferenceRepositoryService implements PreferenceRepositoryInt {
  static const String _logged = 'logged';
  static const String _register = 'register';
  static const String _recentSearches = 'recentSearches';
  late SharedPreferences _prefs;
  @override
  SharedPreferences get prefs => _prefs;

  @override
  Future<void> initialize() async {
    _prefs = await SharedPreferences.getInstance();
  }

  @override
  bool isLogged() {
    final logged = _prefs.getBool(_logged);
    return logged ?? false;
  }

  @override
  Future<void> saveIsLogged(bool value) async {
    await _prefs.setBool(_logged, value);
  }

  @override
  bool hasJustSignedUp() {
    final logged = _prefs.getBool(_register);
    return logged ?? false;
  }

  @override
  Future<void> saveHasJustSignedUp(bool value) async {
    await _prefs.setBool(_register, value);
  }

  @override
  List<String> getRecentSearches() {
    final list = _prefs.getStringList(_recentSearches);
    return list ?? [];
  }

  @override
  Future<void> saveRecentSearches(List<String> list) async {
    await _prefs.setStringList(_recentSearches, list);
  }
}
