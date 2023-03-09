import 'package:shared_preferences/shared_preferences.dart';

import '../../models/search/category_model.dart';

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
  List<String> getCondition();
  Future<void> setCondition(List<String> list);
  int getPrice();
  Future<void> setPrice(int value);
  List<String> getReleaseDate();
  Future<void> setReleaseDate(List<String> list);

  Future<void> saveLastCategories(dynamic cList);
  Future<List<CategoryModel>> getLastCategories();
}
