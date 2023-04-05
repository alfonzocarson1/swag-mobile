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
  List<String> getPrice();
  Future<void> setPrice(List<String> list);
  List<String> getReleaseDate();
  Future<void> setReleaseDate(List<String> list);
  List<String> getProduct();
  Future<void> setProduct(List<String> list);
  Future<void> saveLastCategories(dynamic cList);
  Future<List<CategoryModel>> getLastCategories();

  bool hasImportableData();
  Future<void> savehasImportableData(bool value);

  String accountId();
  Future<void> saveAccountId(String value);

  bool returExploreIsNotLogged();
  Future<void> saveReturExploreIsNotLogged(bool value);

  bool loginAfterGuest();
  Future<void> saveloginAfterGuest(bool value);

  Future<String> validCode();
  Future<void> saveValidCode(String value);

  List<String> getRecentSearchesWithFilters();
  Future<void> saveRecentSearchesWithFilters({required String searchPayload});
}
