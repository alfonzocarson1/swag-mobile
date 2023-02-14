import 'package:shared_preferences/shared_preferences.dart';

import '../../constants/constants.dart';
import 'i_shared_preferences.dart';

class PreferenceRepositoryService implements PreferenceRepositoryInt {
  static const String _logged = 'logged';
  static const String _register = 'register';
  static const String _recentSearches = 'recentSearches';
  static const String _isListView = 'isListView';
  static const String _isForSale = 'isForSale';
  static const String _sortBy = 'sortBy';
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

  @override
  bool isListView() {
    final isListView = _prefs.getBool(_isListView);
    return isListView ?? true;
  }

  @override
  Future<void> saveIsListView(bool value) async {
    await _prefs.setBool(_isListView, value);
  }

  @override
  bool isForSale() {
    final isForSale = _prefs.getBool(_isForSale);
    return isForSale ?? false;
  }

  @override
  Future<void> saveIsForSale(bool value) async {
    await _prefs.setBool(_isForSale, value);
  }

  @override
  int getSortBy() {
    final sortBy = _prefs.getInt(_sortBy);
    return sortBy ?? defaultInt;
  }

  @override
  Future<void> setSortBy(int value) async {
    await _prefs.setInt(_sortBy, value);
  }
}
