import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';

import '../../constants/constants.dart';
import '../../models/search/category_model.dart';
import 'i_shared_preferences.dart';

class PreferenceRepositoryService implements PreferenceRepositoryInt {
  static const String _logged = 'logged';
  static const String _register = 'register';
  static const String _recentSearches = 'recentSearches';
  static const String _isListView = 'isListView';
  static const String _isForSale = 'isForSale';
  static const String _sortBy = 'sortBy';
  static const String _condition = 'condition';
  static const String _price = 'price';
  static const String _product = 'product';
  static const String _releaseDate = 'releaseDate';
  static const String _lastCategories = 'lastCategories';
  static const String _hasImportableData = 'hasImportableData';
  static const String _accountId = 'accountId';
  static const String _detailCollectionLen = 'collectionLen';
  static const String _returnPage = 'returnPage';
  static const String _loginAfterGuest = 'loginAfterGuest';
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
  String accountId() {
    final accountId = _prefs.getString(_accountId);
    return accountId ?? '';
  }

  @override
  Future<void> saveAccountId(String value) async {
    await _prefs.setString(_accountId, value);
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
  bool hasImportableData() {
    final hasImportableData = _prefs.getBool(_hasImportableData);
    return hasImportableData ?? false;
  }

  @override
  Future<void> savehasImportableData(bool value) async {
    await _prefs.setBool(_hasImportableData, value);
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

  @override
  List<String> getCondition() {
    final list = _prefs.getStringList(_condition);
    return list ?? [];
  }

  @override
  Future<void> setCondition(List<String> list) async {
    await _prefs.setStringList(_condition, list);
  }

  @override
  List<String> getPrice() {
    final price = _prefs.getStringList(_price);
    return price ?? [];
  }

  @override
  Future<void> setPrice(List<String> list) async {
    await _prefs.setStringList(_price, list);
  }

  @override
  List<String> getReleaseDate() {
    final list = _prefs.getStringList(_releaseDate);
    return list ?? [];
  }

  @override
  Future<void> setReleaseDate(List<String> list) async {
    await _prefs.setStringList(_releaseDate, list);
  }

  @override
  List<String> getProduct() {
    final list = _prefs.getStringList(_product);
    return list ?? [];
  }

  @override
  Future<void> setProduct(List<String> list) async {
    await _prefs.setStringList(_product, list);
  }

  @override
  Future<void> saveLastCategories(dynamic cList) async {
    await _prefs.setString(_lastCategories, jsonEncode(cList));
  }

  @override
  int collectionLen() {
    final collectios = _prefs.getInt(_detailCollectionLen);
    return collectios ?? 0;
  }

  @override
  Future<void> saveCollectionLen(int value) async {
    await _prefs.setInt(_detailCollectionLen, value);
  }

  @override
  Future<List<CategoryModel>> getLastCategories() async {
    try {
      Map<String, dynamic> map =
          json.decode(_prefs.getString(_lastCategories) ?? '[]');
      List<dynamic> jsonData = map["categoryList"];
      return jsonData.map((e) => CategoryModel.fromJson(e)).toList();
    } catch (e) {
      return [];
    }
  }

  @override
  bool returExploreIsNotLogged() {
    final returnPage = _prefs.getBool(_returnPage);
    return returnPage ?? false;
  }

  @override
  Future<void> saveReturExploreIsNotLogged(bool value) async {
    await _prefs.setBool(_returnPage, value);
  }

  @override
  bool loginAfterGuest() {
    final returnPage = _prefs.getBool(_loginAfterGuest);
    return returnPage ?? false;
  }

  @override
  Future<void> saveloginAfterGuest(bool value) async {
    await _prefs.setBool(_loginAfterGuest, value);
  }
}
