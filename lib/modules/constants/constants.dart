import 'package:swagapp/modules/api/app_config.dart';

import '../data/shared_preferences/shared_preferences_service.dart';
import '../di/injector.dart';
import '../models/overlay_buton/overlay_button_model.dart';
import '../models/search/category_model.dart';

const tokenPath = 'auth/realms/app/protocol/openid-connect/token';
const termsAndConditionsUrl = "https://swag.golf/pages/termsandconditions";
const termsAndConditionsBasePath = "https://swag.golf";
String shareListingUrl = "${getIt<AppConfig>().deepLinkHost}product/";
const String facebookUrl = "https://www.facebook.com/swaggolfco";
const String twitterUrl = "https://twitter.com/swaggolfco";
const String discordUrl = "https://discord.com/invite/OfficialSwag";
const String instagramUrl = "https://www.instagram.com/swaggolfco/";
const String faqsUrl = "https://swag.golf/pages/faq";
//const String sendBirdAppId = "3A0E70A8-4861-44C2-ABC0-B7E13C776BEF";
const String swagBotNickName = "SWAG Listing Bot";
const String swagBotMessageName = "SWAG";
const String defaultAvatarUrl = "http://images.dev.swag.kuldisak.net/avatars/defaults/Dripskull.png";

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
  'South Korea',
  'Singapore',
  'Sweden',
  'United Kingdom',
  'United States',
];

const usStates = [
  {"name": "Alabama", "short": "AL"},
  {"name": "Alaska", "short": "AK"},
  {"name": "Arizona", "short": "AZ"},
  {"name": "Arkansas", "short": "AR"},
  {"name": "California", "short": "CA"},
  {"name": "Colorado", "short": "CO"},
  {"name": "Connecticut", "short": "CT"},
  {"name": "Delaware", "short": "DE"},
  {"name": "Florida", "short": "FL"},
  {"name": "Georgia", "short": "GA"},
  {"name": "Hawaii", "short": "HI"},
  {"name": "Idaho", "short": "ID"},
  {"name": "Illinois", "short": "IL"},
  {"name": "Indiana", "short": "IN"},
  {"name": "Iowa", "short": "IA"},
  {"name": "Kansas", "short": "KS"},
  {"name": "Kentucky", "short": "KY"},
  {"name": "Louisiana", "short": "LA"},
  {"name": "Maine", "short": "ME"},
  {"name": "Maryland", "short": "MD"},
  {"name": "Massachusetts", "short": "MA"},
  {"name": "Michigan", "short": "MI"},
  {"name": "Minnesota", "short": "MN"},
  {"name": "Mississippi", "short": "MS"},
  {"name": "Missouri", "short": "MO"},
  {"name": "Montana", "short": "MT"},
  {"name": "Nebraska", "short": "NE"},
  {"name": "Nevada", "short": "NV"},
  {"name": "New Hampshire", "short": "NH"},
  {"name": "New Jersey", "short": "NJ"},
  {"name": "New Mexico", "short": "NM"},
  {"name": "New York", "short": "NY"},
  {"name": "North Carolina", "short": "NC"},
  {"name": "North Dakota", "short": "ND"},
  {"name": "Ohio", "short": "OH"},
  {"name": "Oklahoma", "short": "OK"},
  {"name": "Oregon", "short": "OR"},
  {"name": "Pennsylvania", "short": "PA"},
  {"name": "Rhode Island", "short": "RI"},
  {"name": "South Carolina", "short": "SC"},
  {"name": "South Dakota", "short": "SD"},
  {"name": "Tennessee", "short": "TN"},
  {"name": "Texas", "short": "TX"},
  {"name": "Utah", "short": "UT"},
  {"name": "Vermont", "short": "VT"},
  {"name": "Virginia", "short": "VA"},
  {"name": "Washington", "short": "WA"},
  {"name": "West Virginia", "short": "WV"},
  {"name": "Wisconsin", "short": "WI"},
  {"name": "Wyoming", "short": "WY"}
];

const caStates = [
  {"name": "Alberta", "short": "AB"},
  {"name": "British Columbia", "short": "BC"},
  {"name": "Manitoba", "short": "MB"},
  {"name": "New Brunswick", "short": "NB"},
  {"name": "Newfoundland and Labrador", "short": "NL"},
  {"name": "Nova Scotia", "short": "NS"},
  {"name": "Ontario", "short": "ON"},
  {"name": "Prince Edward Island", "short": "PE"},
  {"name": "Quebec", "short": "QC"},
  {"name": "Saskatchewan", "short": "SK"},
  {"name": "Northwest Territories", "short": "NT"},
  {"name": "Nunavut", "short": "NU"},
  {"name": "Yukon", "short": "YT"}
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

List<String> canadianProvincesAndTerritories = [
  'AB', // Alberta
  'BC', // British Columbia
  'MB', // Manitoba
  'NB', // New Brunswick
  'NL', // Newfoundland and Labrador
  'NT', // Northwest Territories
  'NS', // Nova Scotia
  'NU', // Nunavut
  'ON', // Ontario
  'PE', // Prince Edward Island
  'QC', // Quebec
  'SK', // Saskatchewan
  'YT', // Yukon
];

List<String> hongKongStates = [
  'Hong Kong Island',
  'Kowloon',
  'New Territories',
  'Lantau Island',
  'Lamma Island',
  'Cheung Chau',
  'Peng Chau',
  'Lantau Island',
  'Mui Wo',
  'Sai Kung',
  'Sha Tin',
  'Tuen Mun',
  'Tsuen Wan',
  'Tung Chung',
  'Yuen Long',
  'Central and Western District',
  'Eastern District',
  'Southern District',
  'Wan Chai District',
  'Kowloon City District',
  'Kwun Tong District',
  'Sham Shui Po District',
  'Wong Tai Sin District',
  'Yau Tsim Mong District',
  'Islands District',
  'Kwai Tsing District',
  'North District',
  'Sai Kung District',
  'Sha Tin District',
  'Tai Po District',
  'Tsuen Wan District',
  'Tuen Mun District',
  'Yuen Long District',
];

List<String> southKoreaStates = [
  "Seoul",
  "Busan",
  "Daegu",
  "Incheon",
  "Gwangju",
  "Daejeon",
  "Ulsan",
  "Sejong",
  "Gyeonggi",
  "Gangwon",
  "Chungbuk",
  "Chungnam",
  "Jeonbuk",
  "Jeonnam",
  "Gyeongbuk",
  "Gyeongnam",
  "Jeju"
];

const singaporeRegions = [
  'Central CDC',
  'North East CDC',
  'North West CDC',
  'South East CDC',
  'South West CDC',
];

const itemConditions = [
  'Condition',
  'Sealed',
  'Displayed',
  'Gamed',
];

/// REFACTORING NOTE: ORDER OF ITEMS IS IMPORTANT
const List<CustomOverlayItemModel> editListingDropDown = [
  CustomOverlayItemModel(
    imagePath: 'assets/icons/editWhite.png',
    label: 'Edit listing',
  ),
  CustomOverlayItemModel(
    imagePath: 'assets/icons/xCircle.png',
    label: 'Remove listing',
  ),
];

/// REFACTORING NOTE: ORDER OF ITEMS IS IMPORTANT
const List<CustomOverlayItemModel> reportListingDropDown = [
  CustomOverlayItemModel(
    imagePath: 'assets/icons/ReportListingWhite.png',
    label: 'Report Listing',
  ),
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
