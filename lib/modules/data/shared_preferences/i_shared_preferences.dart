import 'package:shared_preferences/shared_preferences.dart';

abstract class PreferenceRepositoryInt {
  SharedPreferences get prefs;
  void initialize();

  bool isLogged();
  Future<void> saveIsLogged(bool value);
  bool hasJustSignedUp();
  Future<void> saveHasJustSignedUp(bool value);
  List<String> getRecentSearches();
  Future<void> saveRecentSearches(List<String> list);
  bool isListView();
  Future<void> saveIsListView(bool value);
  bool isForSale();
  Future<void> saveIsForSale(bool value);
  int getSortBy();
  Future<void> setSortBy(int value);
  int getCondition();
  Future<void> setCondition(int value);
}
