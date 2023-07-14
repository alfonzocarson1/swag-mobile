import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../data/shared_preferences/shared_preferences_service.dart';
import '../di/injector.dart';
import '../models/overlay_buton/overlay_button_model.dart';
import '../models/search/category_model.dart';

const String hostProd = "dev.core-api.app.net";
const String hostDev = "orchestration.dev.swag.kuldisak.net:8080";
const String hostQa = "dev.core-api.app.net";
const tokenPath = 'auth/realms/app/protocol/openid-connect/token';
const termsAndConditionsUrl = "https://swag.golf/pages/termsandconditions";
const termsAndConditionsBasePath = "https://swag.golf";
const String sendBirdAppId = "3A0E70A8-4861-44C2-ABC0-B7E13C776BEF";
const String shareListingUrl = "intent://www.swagapp.com/product/";

const String swagBotNickName = "SWAG Listing Bot";

const successResponse = "0";

const defaultString = "";
const defaultInt = 0;
const filterNotApplied = -1;
const maxCharactersForGridViewTitle = 25;
const maxCharactersForGridViewDesc = 22;
const defaultPageSize = 20;
const String defaultCountry = "United States";
const String defaultState = "State";

const countriesCode = [
  'AU',
  'CA',
  'CN',
  'DE',
  'HK',
  'JP',
  'KR',
  'SG',
  'SE',
  'GB',
  'US'
];

const countries = [
  'Australia',
  'Canada',
  'China',
  'Germany',
  'Hong Kong',
  'Japan',
  'Korea',
  'Singapore',
  'Sweden',
  'United Kingdom',
  'United States',
];

const stateCodes = [
  'AA',
  'AE',
  'AK',
  'AL',
  'AP',
  'AR',
  'AS',
  'AZ',
  'CA',
  'CO',
  'CT',
  'DC',
  'DE',
  'FL',
  'GA',
  'GU',
  'HI',
  'IA',
  'ID',
  'IL',
  'IN',
  'KS',
  'KY',
  'LA',
  'MA',
  'MD',
  'ME',
  'MI',
  'MN',
  'MO',
  'MP',
  'MS',
  'MT',
  'NC',
  'ND',
  'NE',
  'NH',
  'NJ',
  'NM',
  'NV',
  'NY',
  'OH',
  'OK',
  'OR',
  'PA',
  'PR',
  'RI',
  'SC',
  'SD',
  'TN',
  'TX',
  'UM',
  'UT',
  'VA',
  'VI',
  'VT',
  'WA',
  'WI',
  'WV',
  'WY'
];

const itemConditions = [
  'Condition',
  'Sealed',
  'Displayed',
  'Gamed',
];

const List<CustomOverlayItemModel> editListingDropDown = [
  CustomOverlayItemModel(
      imagePath: 'assets/icons/editWhite.png', label: 'Edit listing'),
  CustomOverlayItemModel(
      imagePath: 'assets/icons/xCircle.png', label: 'Remove listing'),
];

const List<CustomOverlayItemModel> reportListingDropDown = [
  CustomOverlayItemModel(
      imagePath: 'assets/icons/BlockUserWhite.png', label: 'Block user'),
  CustomOverlayItemModel(
      imagePath: 'assets/icons/ReportUserWhite.png', label: 'Report User'),
];

enum FilterType {
  sortBy,
  condition,
  price,
  releaseDate,
  category,
  collection,
  theme,
  type
}

enum ReleaseDate {
  y2018,
  y2019,
  y2020,
  y2021,
  y2022,
  y2023,
}

enum EditingListingStatus {
  editing,
  listed,
  removed,
}

class ReleaseDateWrapper {
  final ReleaseDate type;

  ReleaseDateWrapper(this.type);

  @override
  String toString() {
    switch (type) {
      case ReleaseDate.y2018:
        return '2018';
      case ReleaseDate.y2019:
        return '2019';
      case ReleaseDate.y2020:
        return '2020';
      case ReleaseDate.y2021:
        return '2021';
      case ReleaseDate.y2022:
        return '2022';
      case ReleaseDate.y2023:
        return '2023';
    }
  }
}

enum Price {
  lessThan$111,
  $111$222,
  $222$555,
  $555AndAbove,
}

class PriceWrapper {
  final Price type;

  PriceWrapper(this.type);

  @override
  String toString() {
    switch (type) {
      case Price.lessThan$111:
        return 'Less than \$111';
      case Price.$111$222:
        return '\$111 - \$222';
      case Price.$222$555:
        return '\$222 - \$555';
      case Price.$555AndAbove:
        return '\$555 - Above';
    }
  }
}

enum Condition {
  sealed,
  displayed,
  gamed,
}

class ConditionWrapper {
  final Condition type;

  ConditionWrapper(this.type);

  @override
  String toString() {
    switch (type) {
      case Condition.sealed:
        return 'Sealed';
      case Condition.displayed:
        return 'Displayed';
      case Condition.gamed:
        return 'Gamed';
    }
  }
}

enum SortBy {
  releaseDateNewest,
  releaseDateOldest,
  priceHighToLow,
  priceLowToHigh,
  atoZ,
  ztoA
}

class SortByWrapper {
  final SortBy type;

  SortByWrapper(this.type);

  @override
  String toString() {
    switch (type) {
      case SortBy.releaseDateNewest:
        return 'Release Date - Newest';
      case SortBy.releaseDateOldest:
        return 'Release Date - Oldest';
      case SortBy.priceHighToLow:
        return 'Price: High to low';
      case SortBy.priceLowToHigh:
        return 'Price: Low to High';
      case SortBy.atoZ:
        return 'A to Z';
      case SortBy.ztoA:
        return 'Z to A';
    }
  }
}

enum Product { headcovers, putters, accessories }

class ProductWrapper {
  final Product type;

  ProductWrapper(this.type);

  Future<String> toStringCustom() async {
    List<CategoryModel> categories =
        await getIt<PreferenceRepositoryService>().getLastCategories();
    switch (type) {
      case Product.headcovers:
        return categories[1].catalogCategoryId;
      case Product.putters:
        return categories[2].catalogCategoryId;
      case Product.accessories:
        return categories[3].catalogCategoryId;
    }
  }

  @override
  String toString() {
    switch (type) {
      case Product.headcovers:
        return 'Headcovers';
      case Product.putters:
        return 'Putters';
      case Product.accessories:
        return 'Accessories';
    }
  }
}

String annualSubscriptionId = "TEST_Swag_App_Premium_Annual";
String monthlySubscriptionId = "TEST_Swag_App_Premium_Monthly";
