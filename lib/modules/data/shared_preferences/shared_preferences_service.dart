import 'package:shared_preferences/shared_preferences.dart';

import 'i_shared_preferences.dart';

class PreferenceRepositoryService implements PreferenceRepositoryInt {
  static const String _guestLogged = 'guestLogged';
  late SharedPreferences _prefs;
  @override
  SharedPreferences get prefs => _prefs;

  @override
  Future<void> initialize() async {
    _prefs = await SharedPreferences.getInstance();
  }

  @override
  bool isGuestLogged() {
    final guestLogged = _prefs.getBool(_guestLogged);
    return guestLogged ?? false;
  }

  @override
  Future<void> saveIsGuestLogged(bool value) async {
    await _prefs.setBool(_guestLogged, value);
  }
}
