import 'dart:convert';
import 'dart:math';

import 'package:csc_picker/model/select_status_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:swagapp/modules/common/utils/palette.dart';
import 'package:swagapp/modules/common/utils/tab_wrapper.dart';
import 'package:swagapp/modules/models/buy_for_sale_listing/buy_for_sale_listing_model.dart';
import 'package:swagapp/modules/models/shared_preferences/shared_preference_model.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../blocs/buy_sale_listing_bloc/buy_sale_listing_bloc.dart';
import '../../blocs/search_bloc.dart/search_bloc.dart';
import '../../blocs/shared_preferences_bloc/shared_preferences_bloc.dart';
import '../../constants/constants.dart';
import '../../cubits/route_history/route_history_cubit.dart';
import '../../data/shared_preferences/shared_preferences_service.dart';
import '../../di/injector.dart';
import '../../models/search/filter_model.dart';
import '../../models/search/search_request_payload_model.dart';
import '../../notifications_providers/local_notifications_providers.dart';
import '../ui/paywall_splash_screen.dart';
import '../ui/dynamic_toast_messages.dart';
import 'context_service.dart';

String dateFormat(String dateStr) {
  final DateFormat displayFormater = DateFormat('dd/MM/yyyy');
  final DateFormat serverFormater = DateFormat('MM/dd/yyyy');
  final DateTime displayDate = displayFormater.parse(dateStr);
  final String formatted = serverFormater.format(displayDate);
  return formatted;
}

extension DateExtension on String {
  DateTime toDateTime() => DateFormat('dd/MM/yyyy').parse(this);
}

bool isValidEmail(String email) {
  return RegExp(
          r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
      .hasMatch(email);
}

bool isValidPassword(String password) {
  return RegExp(r"^(?=.*?[A-Z])(?=.*?[a-z])(?=.*?[0-9])(?=.*?[^\w\s]).{8,}$")
      .hasMatch(password);
}

bool isValidName(String name) {
  return RegExp(r"^[a-zA-Z]+$").hasMatch(name);
}

bool isValidUsername(String username) {
  return RegExp(r"^.{4,20}$").hasMatch(username);
}

bool isValidCashAppTag(String cashAppTag) {
  return RegExp(r"^(?=.*[a-zA-Z])[^\s]{1,20}$").hasMatch(cashAppTag);
}

bool isValidVenmoUser(String venmoUser) {
  return RegExp(r"^[-_a-zA-Z0-9]{5,30}$").hasMatch(venmoUser);
}

bool isValidNumberDot(String number) {
  return RegExp(r"^[0-9]+\.[0-9][0-9]$").hasMatch(number);
}

bool isValidNumberComa(String number) {
  return RegExp(r"^[0-9]+\,[0-9][0-9]$").hasMatch(number);
}

Future<void> launchBrowserAppFromLink(String urlStr) async {
  if (!await launchUrl(Uri.parse(urlStr),
      mode: LaunchMode.externalApplication)) {
    throw Exception('Could not launch $urlStr');
  }
}

Future<void> launchUrlInWebView(String urlStr) async {
  if (!await launchUrl(Uri.parse(urlStr), mode: LaunchMode.platformDefault)) {
    throw Exception('Could not launch $urlStr');
  }
}

String formatDate(String dateTime) {
  final DateFormat displayFormater = DateFormat('yyyy-MM-dd HH:mm:ss.SSS');
  final DateFormat serverFormater = DateFormat('MM/dd/yyyy');
  final DateTime displayDate = displayFormater.parse(dateTime);
  final String formatted = serverFormater.format(displayDate);
  return formatted;
}

String formatDateWithMonthAndYear(String dateTime) {
  final DateFormat displayFormater = DateFormat('yyyy-MM-dd HH:mm:ss.SSS');
  final DateFormat serverFormater = DateFormat('MM/yyyy');
  final DateTime displayDate = displayFormater.parse(dateTime);
  final String formatted = serverFormater.format(displayDate);
  return formatted.replaceAll('/20', '/');
}

extension StringExtension on String {
  String capitalize() {
    return "${this[0].toUpperCase()}${this.substring(1).toLowerCase()}";
  }
}

String decimalDigitsLastSalePrice(String lastSale) {
  if (lastSale != "N/A") {
    var decimalDigitsLastSalePrice = lastSale.split('.');

    // The number doesn't have any decimal part, so we add 0 as the decimal part.
    if (decimalDigitsLastSalePrice.length == 1) {
      decimalDigitsLastSalePrice.add("0");
    }
    var oCcy = NumberFormat.currency(
        locale: 'en_US', customPattern: '#,###', decimalDigits: 3);

    if (decimalDigitsLastSalePrice[0][0] == "\$") {
      decimalDigitsLastSalePrice[0] =
          decimalDigitsLastSalePrice[0].toString().split('\$').join('');
    }

    if (decimalDigitsLastSalePrice[0].length > 3) {
      var thousandDigits =
          oCcy.format(int.parse(decimalDigitsLastSalePrice[0].toString()));

      var splitThousandDigits = thousandDigits.split('.');

      var lastPrice =
          '\$${splitThousandDigits[0]}.${decimalDigitsLastSalePrice[1].length == 1 ? '${decimalDigitsLastSalePrice[1]}0' : decimalDigitsLastSalePrice[1]}';

      return lastPrice;
    } else {
      var addDecimalLastSalePrice =
          decimalDigitsLastSalePrice[1].length == 1 ? '${lastSale}0' : lastSale;

      if (addDecimalLastSalePrice[0] != '\$') {
        addDecimalLastSalePrice = '\$$addDecimalLastSalePrice';
      }

      return addDecimalLastSalePrice;
    }
  } else {
    return lastSale;
  }
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
  SearchRequestPayloadModel payload = (searchWithFilters != null)
      ? searchWithFilters
      : SearchRequestPayloadModel(
          searchParams: searchParam != null ? [searchParam] : null,
          categoryId: tab == null || tab == SearchTab.whatsHot
              ? null
              : await SearchTabWrapper(tab).toStringCustom(),
          filters: await getCurrentFilterModel(),
          whatsHotFlag: null,
          unicornFlag: null,
          staffPicksFlag: null,
        );

  updateSelectedFiltersAndSortsNumber(context, tab: tab);

  context
      .read<SearchBloc>()
      .add(SearchEvent.performSearch(payload, tab ?? SearchTab.all));
}

List<BuyForSaleListingModel> filteredCondition(
    List<BuyForSaleListingModel> model, FilterModel filters) {
  if (filters.conditions != null) {
    List<BuyForSaleListingModel> filteredArr = model.where((model) {
      return filters.conditions!
          .any((filterItem) => model.condition == filterItem);
    }).toList();

    return filteredArr;
  }
  return model;
}

Future<FilterModel> getCurrentFilterModel() async {
  PreferenceRepositoryService sharedPref = getIt<PreferenceRepositoryService>();
  List<int> conditionList = sharedPref.getCondition().map(int.parse).toList();
  List<int> releaseList = sharedPref.getReleaseDate().map(int.parse).toList();
  List<int> priceList = sharedPref.getPrice().map(int.parse).toList();
  List<int> productList = sharedPref.getProduct().map(int.parse).toList();
  List<String> collection = sharedPref.getCollection();
  List<String> theme = sharedPref.getThemes();
  List<String> type = sharedPref.getTypes();
  bool isForSale = sharedPref.isForSale();
  int sortBy = sharedPref.getSortBy();

  return FilterModel(
    forSale: isForSale,
    sortBy: sortBy,
    priceRanges: sharedPref.getPrice().isEmpty ||
            sharedPref.getPrice().length == Price.values.length
        ? null
        : getPriceRangeList(priceList),
    releaseYears: sharedPref.getReleaseDate().isEmpty ||
            sharedPref.getReleaseDate().length == ReleaseDate.values.length
        ? null
        : getReleaseYearsList(releaseList),
    conditions: sharedPref.getCondition().isEmpty ||
            sharedPref.getCondition().length == Condition.values.length
        ? null
        : getConditionStringList(conditionList),
    productType: sharedPref.getProduct().isEmpty ||
            sharedPref.getProduct().length == Product.values.length
        ? null
        : await getProductStringList(productList),
    collection: collection.isEmpty ? null : collection,
    theme: theme.isEmpty ? null : theme,
    type: type.isEmpty ? null : type,
  );
}

clearFilters(BuildContext context) {
  final preference = context.read<SharedPreferencesBloc>().state.model;

  context.read<SharedPreferencesBloc>().add(
      SharedPreferencesEvent.setPreference(preference.copyWith(
          isForSale: false,
          collection: [],
          condition: [],
          isListView: true,
          price: [],
          product: [],
          releaseDate: [],
          theme: [],
          sortBy: 0,
          type: [],
          filtersAndSortsSelected: 0)));
}

void updateSelectedFiltersAndSortsNumber(BuildContext context,
    {SearchTab? tab}) {
  final sharedPref = getIt<PreferenceRepositoryService>();
  final sortBy = sharedPref.getSortBy();
  final preference = context.read<SharedPreferencesBloc>().state.model;
  final conditionList = sharedPref.getCondition().map(int.parse).toList();
  final releaseList = sharedPref.getReleaseDate().map(int.parse).toList();
  final priceList = sharedPref.getPrice().map(int.parse).toList();
  final categorylist = sharedPref.getProduct().map(int.parse).toList();
  final typeList = sharedPref.getTypes();
  final collectionList = sharedPref.getCollection();
  final themeList = sharedPref.getThemes();

  List<bool> list = [
    sharedPref.isForSale(),
    sortBy != 0,
    conditionList.isNotEmpty,
    releaseList.isNotEmpty,
    priceList.isNotEmpty,
    categorylist.isNotEmpty,
    typeList.isNotEmpty,
    collectionList.isNotEmpty,
    themeList.isNotEmpty,
  ];

  context.read<SharedPreferencesBloc>().add(
      SharedPreferencesEvent.setPreference(preference.copyWith(
          isForSale: list[0],
          filtersAndSortsSelected:
              (tab == null || tab == SearchTab.whatsHot || tab == SearchTab.all)
                  ? list.where((c) => c).length
                  : list.where((c) => c).length - 1)));
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

  if (list.length != 1) {
    var maximumNumber =
        list.reduce((value, element) => value > element ? value : element);
    var minimumNumber =
        list.reduce((value, element) => value < element ? value : element);
    return [minimumNumber, maximumNumber];
  } else {
    return [list.reduce((value, element) => value > element ? value : element)];
  }
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
  await getIt<PreferenceRepositoryService>().saveCollection([]);
  await getIt<PreferenceRepositoryService>().saveThemes([]);
  await getIt<PreferenceRepositoryService>().saveTypes([]);
}

void initUtilsPreference() =>
    getIt<PreferenceRepositoryService>().saveValidCode('');

void initFilterAndSortsWithBloc(BuildContext context,
    {int? selectedProductNumber = 0}) {
  context.read<SharedPreferencesBloc>().add(
        SharedPreferencesEvent.setPreference(
          SharedPreferenceModel(
              isListView: true,
              isForSale: false,
              sortBy: 0,
              condition: [],
              price: [],
              product:
                  (selectedProductNumber != null && selectedProductNumber != 0)
                      ? [selectedProductNumber - 1]
                      : [],
              releaseDate: [],
              collection: [],
              theme: [],
              type: []),
        ),
      );
}

Widget selectSettings(BuildContext context, String iconUrl, String title,
    String subTitle, Function()? onTap, Widget trailing, Widget? customSubTitle,
    {double scale = 3.0}) {
  return InkWell(
    onTap: onTap,
    splashColor: Palette.current.primaryNero,
    child: ListTile(
      leading: Image.asset(
        iconUrl,
        scale: scale,
      ),
      title: Text(title,
          style: Theme.of(context).textTheme.bodySmall!.copyWith(
              fontWeight: FontWeight.w400,
              color: Palette.current.primaryWhiteSmoke,
              fontSize: 16)),
      subtitle: (subTitle.isEmpty && customSubTitle == null)
          ? null
          : customSubTitle ??
              Text(subTitle,
                  style: Theme.of(context)
                      .textTheme
                      .bodySmall!
                      .copyWith(color: Palette.current.grey, fontSize: 14)),
      trailing: trailing,
    ),
  );
}

String toCamelCase(String input) {
  if (input.isEmpty) {
    return input;
  }

  List<String> words = input.split(RegExp(r'\s+|-|_'));

  for (int i = 1; i < words.length; i++) {
    String word = words[i];
    if (word.isNotEmpty) {
      words[i] = word[0].toUpperCase() + word.substring(1);
    }
  }

  return words.join();
}

final _states = ['State'];

Future<dynamic> getCountryJson() async {
  var res = await rootBundle
      .loadString('packages/csc_picker/lib/assets/country.json');
  return jsonDecode(res);
}

///get states from json response
Future<List<String?>> getStates(String country) async {
  _states.clear();
  var response = await getCountryJson();

  var takeState = response
      .map((map) => Country.fromJson(map))
      .where((item) => item.name == country)
      .map((item) => item.state)
      .toList();
  var states = takeState as List;

  for (var f in states) {
    var name = f.map((item) => item.name).toList();
    for (var stateName in name) {
      _states.add(stateName.toString());
    }
  }
  _states.sort((a, b) => a.compareTo(b));
  return _states;
}

String alertDays(String dateAlert) {
  String providedDateString = dateAlert;

  DateTime providedDate = DateTime.parse(providedDateString);
  DateTime currentDate = DateTime.now();

  // Remove the time zone to have only the date
  providedDate =
      DateTime(providedDate.year, providedDate.month, providedDate.day);
  currentDate = DateTime(currentDate.year, currentDate.month, currentDate.day);

  // Calculate the difference in days
  int differenceInDays = currentDate.difference(providedDate).inDays;

  // Calculate the difference in weeks
  double differenceInWeeks = differenceInDays / 7;

  // Calculate the difference in months
  int differenceInMonths = (currentDate.year - providedDate.year) * 12 +
      (currentDate.month - providedDate.month);

  if (differenceInDays > 0 && differenceInDays <= 7) {
    if (differenceInDays == 1) {
      return '$differenceInDays day ago';
    } else {
      return '$differenceInDays days ago';
    }
  } else if (differenceInWeeks.round() > 0 && differenceInWeeks.round() <= 4) {
    if (differenceInWeeks.round() == 1) {
      return '${differenceInWeeks.round()} week ago';
    } else {
      return '${differenceInWeeks.round()} weeks ago';
    }
  } else if (differenceInMonths.round() > 0) {
    if (differenceInMonths.round() == 1) {
      return '${differenceInMonths.round()} month ago';
    } else {
      return '${differenceInMonths.round()} months ago';
    }
  } else {
    return 'today';
  }
}

String alertAvatar(String avatarType, String? listingImageUrl) {
  if (listingImageUrl!.isNotEmpty) {
    return listingImageUrl;
  } else if (avatarType != 'CUSTOM') {
    var data =
        imagesList.where((avatar) => (avatar["id"].contains(avatarType)));

    String defaultImage = data.first['url'];

    return defaultImage;
  } else {
    return listingImageUrl ??
        'https://firebasestorage.googleapis.com/v0/b/platzitrips-c4e10.appspot.com/o/Franklin.png?alt=media&token=c1073f88-74c2-44c8-a287-fbe0caebf878';
  }
}

List<dynamic> imagesList = [
  {
    'id': 'AVATAR1',
    'url':
        'https://firebasestorage.googleapis.com/v0/b/platzitrips-c4e10.appspot.com/o/Dripskull.png?alt=media&token=3e50bd26-fe59-4008-ae3d-049d8a35ff17'
  },
  {
    'id': 'AVATAR2',
    'url':
        'https://firebasestorage.googleapis.com/v0/b/platzitrips-c4e10.appspot.com/o/Flipper.png?alt=media&token=fa4b02fb-992e-4bc2-8532-80fdfd7071de'
  },
  {
    'id': 'AVATAR3',
    'url':
        'https://firebasestorage.googleapis.com/v0/b/platzitrips-c4e10.appspot.com/o/Franklin.png?alt=media&token=c1073f88-74c2-44c8-a287-fbe0caebf878'
  },
  {
    'id': 'AVATAR4',
    'url':
        'https://firebasestorage.googleapis.com/v0/b/platzitrips-c4e10.appspot.com/o/Hamilton.png?alt=media&token=2cc6fe55-598d-4e6c-b260-cd837d1a5424'
  },
  {
    'id': 'AVATAR5',
    'url':
        'https://firebasestorage.googleapis.com/v0/b/platzitrips-c4e10.appspot.com/o/HotDog.png?alt=media&token=ca2732fc-e230-4e85-b892-1bcc018ccc6d'
  },
  {
    'id': 'AVATAR6',
    'url':
        'https://firebasestorage.googleapis.com/v0/b/platzitrips-c4e10.appspot.com/o/King.png?alt=media&token=2ff68eab-1ad6-4eb2-8c6f-78bf731d3248'
  },
  {
    'id': 'AVATAR7',
    'url':
        'https://firebasestorage.googleapis.com/v0/b/platzitrips-c4e10.appspot.com/o/Lincoln.png?alt=media&token=8cc89dc2-6910-451c-bf2e-32578215d5ca'
  },
  {
    'id': 'AVATAR8',
    'url':
        'https://firebasestorage.googleapis.com/v0/b/platzitrips-c4e10.appspot.com/o/queen.png?alt=media&token=fd838f3d-8b30-4785-974c-a5bbfaff113b'
  },
  {
    'id': 'AVATAR9',
    'url':
        'https://firebasestorage.googleapis.com/v0/b/platzitrips-c4e10.appspot.com/o/Skull1.png?alt=media&token=a5efe842-e17b-409a-985a-b7f4a7967a7f'
  },
];

T getRandomElement<T>(List<T> list) {
  final random = Random();
  final randomIndex = random.nextInt(list.length);
  return list[randomIndex];
}

extension Separated<E> on List<E> {
  Iterable<E> separatedBy(E Function() builder) sync* {
    int i = 0;
    while (i < this.length) {
      yield this[i];
      if (i + 1 < this.length) {
        yield builder();
      }
      i++;
    }
  }
}

extension FirstOrNull<T> on List<T>? {
  T? get firstOrNull {
    if (this == null) return null;
    if (this!.isEmpty) return null;
    return this!.first;
  }
}

showPaywallSplashScreen(
    {required Function removePaywall,
    required bool hasUsedFreeTrial,
    required BuildContext context}) {
  Navigator.of(context).push(MaterialPageRoute(
      builder: (context) => PaywallSplashScreen(
            hasUsedFreeTrial: hasUsedFreeTrial,
            removePaywall: () {
              removePaywall();
            },
          )));
}

Future<void> showSnackBar(BuildContext context, String message) async {
  Future.delayed(const Duration(milliseconds: 2000), () {
    ScaffoldMessenger.of(context).showSnackBar(SnackBar(
        duration: const Duration(seconds: 3),
        behavior: SnackBarBehavior.floating,
        margin: EdgeInsets.only(
          bottom: MediaQuery.of(context).size.height / 1.3,
        ),
        backgroundColor: Colors.transparent,
        content: ToastMessage(message: message),
        dismissDirection: DismissDirection.none));
  });
}

extension StringNotEmptyOrNull on String? {
  bool get isNotEmptyOrNull => this?.isNotEmpty ?? false;
}

void handleListingStatusUnavailable(String catalogId) {
  RouteHistoryCubit routeHistoryCubit = getIt<RouteHistoryCubit>();

  if (routeHistoryCubit.routes[1] == 'Purchase') {
    routeHistoryCubit.toggleRoute(routeHistoryCubit.routes[0]);
  }

  if (routeHistoryCubit.routes[1] == 'ItemDetail') {
    LocalNotificationProvider.showInAppAllert('Listing unavailable');
    getIt<ContextService>().rootNavigatorKey.currentState!.pop();
    getIt<BuySaleListingBloc>()
        .add(BuySaleListingEvent.getBuyListingItem(catalogId));
  } else {
    LocalNotificationProvider.showInAppAllert('Listing unavailable');
    getIt<ContextService>().rootNavigatorKey.currentState!.pop();
  }
}

void handleListingStatusUnavailableAsGuest(String catalogId) {
  LocalNotificationProvider.showInAppAllert('Listing unavailable');
  getIt<ContextService>().rootNavigatorKey.currentState!.pop();
  getIt<BuySaleListingBloc>()
      .add(BuySaleListingEvent.getBuyListingItem(catalogId));
}
