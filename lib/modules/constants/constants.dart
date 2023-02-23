const String hostProd = "dev.core-api.app.net";
const String hostDev = "orchestrationservice.dev.swag.kuldisak.net:8080";
const String hostQa = "dev.core-api.app.net";
const tokenPath = 'auth/realms/app/protocol/openid-connect/token';
const termsAndConditionsUrl = "https://swag.golf/pages/termsandconditions";
const termsAndConditionsBasePath = "https://swag.golf";

const defaultString = "";
const defaultInt = 0;
const filterNotApplied = -1;
const maxCharactersForGridViewTitle = 25;
const maxCharactersForGridViewDesc = 22;
const defaultPageSize = 20;

const countries = [
  "US",
  "CA",
  "GB",
  "AU",
  "SG",
  "SE",
  "DE",
  "JP",
  "HK",
  "CN",
  "KR",
];

enum FilterType { sortBy, condition, price, releaseDate }

enum ReleaseDate {
  y2018,
  y2019,
  y2020,
  y2021,
  y2022,
  y2023,
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
