import 'package:sprintf/sprintf.dart';
import 'package:swagapp/modules/api/app_config.dart';
import 'package:swagapp/modules/constants/constants.dart';

enum Endpoint {
  isUsernameAvailable,
  isPhoneAvailable,
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
  requestEmailVerification,
  requestIsvalidCode,
  changePassword,
  addCollection,
  buyForSaleListing,
  createListingForSale,
  uploadImageListingForSale,
  updateImages,
  favoriteFlow,
  savedSearches,
  deleteSearch,
  isEmailInUse,
  privateProfile,
  filtersAvailable,
  listingsProfile,
  explorePage,
  notifyAvailability,
  profileNotifyStatus,
  peerToPeerPayments,
  getListingDetail,
  purchaseListing,
  chat,
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
    Endpoint.isPhoneAvailable: 'api/public/v1/account/isPhoneAllowed/%s',
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
    Endpoint.requestEmailVerification:
        'api/v1/account/requestEmailVerification',
    Endpoint.requestIsvalidCode:
        'api/public/v1/account/requestPasswordResetCode/isvalid/%s',
    Endpoint.changePassword: 'api/public/v1/account/passwordChangeRequest',
    Endpoint.addCollection: "api/v1/profile/collectionItems",
    Endpoint.buyForSaleListing: "api/v1/listing/forSale/%s",
    Endpoint.createListingForSale: "api/v1/listing/listingItem",
    Endpoint.uploadImageListingForSale: 'api/v1/image/listing/%s',
    Endpoint.updateImages: 'api/v1/image/updateImages',
    Endpoint.favoriteFlow: 'api/v1/profile/favoriteItems',
    Endpoint.savedSearches: "api/v1/catalog/searches/",
    Endpoint.deleteSearch: "api/v1/catalog/searches/%s",
    Endpoint.isEmailInUse: 'api/public/v1/account/isEmailInUse/%s',
    Endpoint.privateProfile: 'api/v1/profile',
    Endpoint.filtersAvailable: 'api/public/v1/catalog/filtersAvailable/',
    Endpoint.listingsProfile: 'api/public/v1/listing/productItems/profile/%s',
    Endpoint.explorePage: 'api/public/v1/catalog/search/0',
    Endpoint.notifyAvailability: 'api/v1/notification/notifyAvailability',
    Endpoint.profileNotifyStatus:
        'api/v1/notification/notifyAvailability/profile',
    Endpoint.peerToPeerPayments: 'api/v1/profile/settings/peerToPeerPayments',
    Endpoint.getListingDetail: 'api/public/v1/listing/listingDetail/%s',
    Endpoint.purchaseListing: 'api/v1/buyFlow/submitPurchase',
    Endpoint.chat: 'api/v1/listing/%s/chat',
  };
}
