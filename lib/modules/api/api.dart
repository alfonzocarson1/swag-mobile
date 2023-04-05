import 'package:sprintf/sprintf.dart';
import 'package:swagapp/modules/api/app_config.dart';
import 'package:swagapp/modules/constants/constants.dart';

enum Endpoint {
  isUsernameAvailable,
  createNewAccount,
  catalogItemDetail,
  publicCatalogItemDetail,
  login,
  salesHistory,
  catalogCategories,
  catalogSearchListGuest,
  catalogSearchListAuthenticated,
  updateProfile,
  updateAvatar,
  requestPasswordResetCode,
  requestIsvalidCode,
  changePassword,
  addCollection,
  buyForSaleListing,
  createListingForSale,
  uploadImageListingForSale,
  favoriteFlow,
  savedSearches
}

class API {
  static final String? host = AppConfig().baseUrl;
  static const String basePath = '';

  Uri tokenUri() => Uri(scheme: 'https', host: host, path: tokenPath);

  Uri endpointUri(Endpoint endpoint, {String? dynamicParam = defaultString}) =>
      Uri.http(
          //TODO: Update to https when possible
          host ?? hostProd,
          dynamicParam != null
              ? sprintf(_paths[endpoint]!, [dynamicParam])
              : _paths[endpoint]!);

  static final Map<Endpoint, String> _paths = {
    Endpoint.isUsernameAvailable:
        'api/public/v1/account/isUsernameAvailable/%s',
    Endpoint.createNewAccount: 'api/public/v1/account/createNewAccount',
    Endpoint.catalogItemDetail: 'api/v1/catalog/catalogItemDetail/%s',
    Endpoint.publicCatalogItemDetail:
        'api/public/v1/catalog/catalogItemDetail/%s',
    Endpoint.login: "api/public/v1/account/login",
    Endpoint.salesHistory: "api/public/v1/listing/salesHistory/%s",
    Endpoint.catalogCategories: 'api/public/v1/catalog/categories/',
    Endpoint.catalogSearchListGuest: 'api/public/v1/catalog/search/%s',
    Endpoint.catalogSearchListAuthenticated: 'api/v1/catalog/search/%s',
    Endpoint.updateProfile: "api/v1/profile",
    Endpoint.updateAvatar: 'api/v1/image/%s',
    Endpoint.requestPasswordResetCode:
        'api/public/v1/account/requestPasswordResetCode/%s',
    Endpoint.requestIsvalidCode:
        'api/public/v1/account/requestPasswordResetCode/isvalid/%s',
    Endpoint.changePassword: 'api/public/v1/account/passwordChangeRequest',
    Endpoint.addCollection: "api/v1/profile/collectionItems",
    Endpoint.buyForSaleListing: "api/v1/listing/forSale/%s",
    Endpoint.createListingForSale: "api/v1/listing/listingItem",
    Endpoint.uploadImageListingForSale: 'api/v1/image/listing/%s',
    Endpoint.favoriteFlow: 'api/v1/profile/favoriteItems',
    Endpoint.savedSearches: "api/v1/catalog/searches/"
  };
}
