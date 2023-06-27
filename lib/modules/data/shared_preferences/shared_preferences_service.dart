import 'dart:convert';

import 'package:shared_preferences/shared_preferences.dart';
import 'package:swagapp/modules/models/filters/dynamic_filters.dart';

import '../../constants/constants.dart';
import '../../models/profile/profile_model.dart';
import '../../models/search/category_model.dart';
import '../../models/settings/peer_to_peer_payments_get_model.dart';
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
  static const String _returnPage = 'returnPage';
  static const String _loginAfterGuest = 'loginAfterGuest';
  static const String _validCode = 'validCode';
  static const String _searchesWithFilters = 'searchesWithFilters';
  static const String _forgotPasswordFlow = 'forgotPasswordFlow';
  static const String _profileData = 'profileData';
  static const String _paymentData = 'paymentData';

  static const String _dynamicFilters = 'dynamicFilters';
  static const String _collection = 'collection';
  static const String _themes = 'themes';
  static const String _types = 'types';
  static const String _pageFromExplore = 'pageFromExplore';
  static const String _userSendBirdId = 'userSendBirdId';
  static const String _userSendBirdToken = 'userSendBirdToken';
  static const String _firebaseDeviceToken = 'firebaseDeviceToken';

  static const String _backProfileCollection = 'backProfileCollection';

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
  bool backProfileCollection() {
    final backProfileCollection = _prefs.getBool(_backProfileCollection);
    return backProfileCollection ?? false;
  }

  @override
  Future<void> saveBackProfileCollection(bool value) async {
    await _prefs.setBool(_backProfileCollection, value);
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
  List<String> getRecentSearches() =>
      _prefs.getStringList(_recentSearches) ?? [];

  @override
  Future<void> saveRecentSearches(List<String> elements) async {
    if (elements.length >= 10) elements.removeAt(0);
    await _prefs.setStringList(_recentSearches, elements);
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

  @override
  Future<String> validCode() async {
    final statusCode = _prefs.getString(_validCode);
    return statusCode ?? '';
  }

  @override
  Future<void> saveValidCode(String value) async {
    await _prefs.setString(_validCode, value);
  }

  @override
  List<String> getRecentSearchesWithFilters() {
    List<String> searchesWithFilters =
        this._prefs.getStringList(_searchesWithFilters) ?? [];
    return searchesWithFilters;
  }

  @override
  Future<void> saveRecentSearchesWithFilters({
    required String searchPayload,
  }) async {
    List<String> searchesWithFilters =
        this._prefs.getStringList(_searchesWithFilters) ?? [];
    searchesWithFilters.add(searchPayload);
    await this._prefs.setStringList(_searchesWithFilters, searchesWithFilters);
  }

  @override
  removeRecentSearches(int searchesQuantity) async {
    List<String> list = getRecentSearchesWithFilters();
    list.removeRange(0, searchesQuantity + 1);
    await this._prefs.setStringList(_searchesWithFilters, list);
  }

  @override
  bool forgotPasswordFlow() {
    final returnPage = _prefs.getBool(_forgotPasswordFlow);
    return returnPage ?? false;
  }

  @override
  Future<void> saveForgotPasswordFlow(bool value) async {
    await _prefs.setBool(_forgotPasswordFlow, value);
  }

  @override
  Future<void> saveProfileData(ProfileModel profileData) async {
    await _prefs.setString(_profileData, jsonEncode(profileData));
  }

  @override
  ProfileModel profileData() {
    final profileData = _prefs.getString(_profileData);
    return ProfileModel.fromJson(json.decode(profileData ?? ''));
  }

  @override
  Future<void> savePaymentData(PeerToPeerPaymentsGetModel paymentData) async {
    await _prefs.setString(_paymentData, jsonEncode(paymentData));
  }

  @override
  PeerToPeerPaymentsGetModel paymanetData() {
    final paymentData = _prefs.getString(_paymentData);

    return PeerToPeerPaymentsGetModel.fromJson(json.decode(paymentData ?? ''));
  }

  @override
  DynamicFilters? getDynamicFilters() {
    String dynamicFiltersString = this._prefs.getString(_dynamicFilters) ?? '';
    Map<String, dynamic>? dynamicFiltersJson = (dynamicFiltersString.isNotEmpty)
        ? json.decode(dynamicFiltersString)
        : null;

    return (dynamicFiltersJson != null)
        ? DynamicFilters.fromJson(dynamicFiltersJson)
        : null;
  }

  @override
  Future<void> saveDynamicFilters(DynamicFilters dynamicFilters) async {
    await this
        ._prefs
        .setString(_dynamicFilters, json.encode(dynamicFilters.toJson()));
  }

  @override
  List<String> getCollection() => this._prefs.getStringList(_collection) ?? [];

  @override
  Future<void> saveCollection(List<String> collections) async {
    await this._prefs.setStringList(_collection, collections);
  }

  @override
  List<String> getThemes() => this._prefs.getStringList(_themes) ?? [];

  @override
  Future<void> saveThemes(List<String> themes) async {
    await this._prefs.setStringList(_themes, themes);
  }

  @override
  List<String> getTypes() => this._prefs.getStringList(_types) ?? [];

  @override
  Future<void> saveTypes(List<String> types) async {
    await this._prefs.setStringList(_types, types);
  }

  @override
  int getPageFromExplore() {
    final pageFromExplore = _prefs.getInt(_pageFromExplore);
    return pageFromExplore ?? defaultInt;
  }

  @override
  Future<void> setPageFromExplore(int value) async {
    await _prefs.setInt(_pageFromExplore, value);
  }

  @override
  String getUserSendBirdId() => this._prefs.getString(_userSendBirdId) ?? '';

  @override
  Future<void> saveUserSendBirdId(String userId) async {
    await this._prefs.setString(_userSendBirdId, userId);
  }

  @override
  String getUserSendBirdToken() =>
      this._prefs.getString(_userSendBirdToken) ?? '';

  @override
  Future<void> saveUserSendBirdToken(String token) async {
    await this._prefs.setString(_userSendBirdToken, token);
  }

  @override
  String getFirebaseDeviceToken() =>
      this._prefs.getString(_firebaseDeviceToken) ?? '';

  @override
  Future<void> saveFirebaseDeviceToken(String token) async {
    await this._prefs.setString(_firebaseDeviceToken, token);
  }
}
