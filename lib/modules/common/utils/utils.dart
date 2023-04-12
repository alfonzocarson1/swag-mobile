import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:swagapp/modules/common/utils/tab_wrapper.dart';
import 'package:swagapp/modules/models/shared_preferences/shared_preference_model.dart';

import '../../blocs/search_bloc.dart/search_bloc.dart';
import '../../blocs/shared_preferences_bloc/shared_preferences_bloc.dart';
import '../../constants/constants.dart';
import '../../data/shared_preferences/shared_preferences_service.dart';
import '../../di/injector.dart';
import '../../models/search/filter_model.dart';
import '../../models/search/search_request_payload_model.dart';

bool isValidEmail(String email) {
  return RegExp(
          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
      .hasMatch(email);
}

bool isValidPassword(String password) {
  return RegExp(r"^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[^\w\s]).{8,}$")
      .hasMatch(password);
}

bool isValidUsername(String username) {
  return RegExp(r"^.{4,20}$").hasMatch(username);
}

bool isValidNumberDot(String number) {
  return RegExp(r"^[0-9]+\.[0-9][0-9]$").hasMatch(number);
}

bool isValidNumberComa(String number) {
  return RegExp(r"^[0-9]+\,[0-9][0-9]$").hasMatch(number);
}

String formatDate(String dateTime) {
  final DateFormat displayFormater = DateFormat('yyyy-MM-dd HH:mm:ss.SSS');
  final DateFormat serverFormater = DateFormat('MM/dd/yyyy');
  final DateTime displayDate = displayFormater.parse(dateTime);
  final String formatted = serverFormater.format(displayDate);
  return formatted;
}

bool isTokenValid(String? token) {
  return token != null && token != defaultString;
}

Future<void> performSearch({ 
  required BuildContext context, 
  SearchTab? tab,
  String? searchParam, 
  SearchRequestPayloadModel? searchWithFilters,
}) async {

  final sharedPref = getIt<PreferenceRepositoryService>();
  final conditionList = sharedPref.getCondition().map(int.parse).toList();
  final releaseList = sharedPref.getReleaseDate().map(int.parse).toList();
  final priceList = sharedPref.getPrice().map(int.parse).toList();
  final productList = sharedPref.getProduct().map(int.parse).toList();

  updateSelectedFiltersAndSortsNumber(context, [
    sharedPref.isForSale(),
    conditionList.isNotEmpty,
    releaseList.isNotEmpty,
    priceList.isNotEmpty,
    productList.isNotEmpty
  ]);

  SearchRequestPayloadModel payload = (searchWithFilters != null) 
  ? searchWithFilters
  : SearchRequestPayloadModel(
      searchParams: searchParam != null ? [searchParam] : null,
      categoryId: tab == null || tab == SearchTab.whatsHot
        ? null
        : await SearchTabWrapper(tab).toStringCustom(),
      filters: await getCurrentFilterModel(),
    );

  context.read<SearchBloc>().add(SearchEvent.performSearch(payload,tab ?? SearchTab.all));
}

Future<FilterModel> getCurrentFilterModel() async {

  PreferenceRepositoryService sharedPref = getIt<PreferenceRepositoryService>();
  List<int> conditionList = sharedPref.getCondition().map(int.parse).toList();
  List<int> releaseList = sharedPref.getReleaseDate().map(int.parse).toList();
  List<int> priceList = sharedPref.getPrice().map(int.parse).toList();
  List<int> productList = sharedPref.getProduct().map(int.parse).toList();
  bool isForSale = sharedPref.isForSale();

  return FilterModel(
    forSale: isForSale,
    sortBy: sharedPref.getSortBy(),
    priceRanges: sharedPref.getPrice().isEmpty || sharedPref.getPrice().length == Price.values.length
      ? null
      : getPriceRangeList(priceList),
    releaseYears: sharedPref.getReleaseDate().isEmpty || sharedPref.getReleaseDate().length == ReleaseDate.values.length
      ? null
      : getReleaseYearsList(releaseList),
    conditions: sharedPref.getCondition().isEmpty || sharedPref.getCondition().length == Condition.values.length
      ? null
      : getConditionStringList(conditionList),
    productType: sharedPref.getProduct().isEmpty || sharedPref.getProduct().length == Product.values.length
      ? null
      : await getProductStringList(productList),
  );
}

void updateSelectedFiltersAndSortsNumber(
    BuildContext context, List<bool> list) {
  final preference = context.read<SharedPreferencesBloc>().state.model;

  context.read<SharedPreferencesBloc>().add(
      SharedPreferencesEvent.setPreference(preference.copyWith(
          isForSale: list[0],
          filtersAndSortsSelected: list.where((c) => c).length)));
}

List<int> getPriceRangeList(List<int> priceList) {
  List<int> list = [];
  for (var element in priceList) {
    List<String> range = PriceWrapper(Price.values.elementAt(element))
        .toString()
        .replaceAll('\$', '')
        .split('-');
    range.removeWhere((element) => element.contains('Above'));
    if (range.contains("Less than 111")) {
      range.removeWhere((element) => element.contains("Less than 111"));
      range.addAll(['0', '111']);
    }
    list.addAll(range.map(int.parse).toList());
  }

  var maximumNumber =
      list.reduce((value, element) => value > element ? value : element);
  var minimumNumber =
      list.reduce((value, element) => value < element ? value : element);
  return [minimumNumber, maximumNumber];
}

List<int> getReleaseYearsList(List<int> releaseList) {
  List<int> list = [];
  for (var element in releaseList) {
    list.add(int.parse(
        ReleaseDateWrapper(ReleaseDate.values.elementAt(element)).toString()));
  }
  return list;
}

Future<List<String>> getProductStringList(List<int> productList) async {
  List<String> list = [];
  for (var element in productList) {
    list.add(await ProductWrapper(Product.values.elementAt(element))
        .toStringCustom());
  }
  return list;
}

List<String> getConditionStringList(List<int> conditionList) {
  List<String> list = [];
  for (var element in conditionList) {
    if (list.isEmpty) {
      list.add(ConditionWrapper(Condition.values.elementAt(element))
          .toString()
          .toUpperCase());
    } else {
      list[0] =
          "${list[0]},${ConditionWrapper(Condition.values.elementAt(element)).toString().toUpperCase()}";
    }
  }
  return list;
}

Future<void> initFiltersAndSorts({int selectedProductNumber = 0}) async {

  List<String> selectedProduct = (selectedProductNumber != 0) 
    ? [(selectedProductNumber - 1).toString()] 
    : [];

  await getIt<PreferenceRepositoryService>().saveIsListView(true);
  await getIt<PreferenceRepositoryService>().saveIsForSale(false);
  await getIt<PreferenceRepositoryService>().setSortBy(defaultInt);
  await getIt<PreferenceRepositoryService>().setCondition([]);
  await getIt<PreferenceRepositoryService>().setPrice([]);
  await getIt<PreferenceRepositoryService>().setReleaseDate([]);
  await getIt<PreferenceRepositoryService>().setProduct(selectedProduct);
}

void initUtilsPreference()=> getIt<PreferenceRepositoryService>().saveValidCode('');

void initFilterAndSortsWithBloc(BuildContext context, {int? selectedProductNumber = 0}) {

  context.read<SharedPreferencesBloc>().add(
    SharedPreferencesEvent.setPreference(
      SharedPreferenceModel(
        isListView: true,
        isForSale: false,
        sortBy: defaultInt,
        condition: [],
        price: [],
        product: (selectedProductNumber != null && selectedProductNumber != 0)
          ? [selectedProductNumber - 1]
          : [],
        releaseDate: [],
      ),
    ),
  );
}
