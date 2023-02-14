const String hostProd = "dev.core-api.app.net";
const String hostDev = "dev.core-api.app.net";
const String hostQa = "dev.core-api.app.net";
const tokenPath = 'auth/realms/app/protocol/openid-connect/token';
const termsAndConditionsUrl = "https://swag.golf/pages/termsandconditions";
const termsAndConditionsBasePath = "https://swag.golf";

const defaultString = "";
const defaultInt = 0;
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
