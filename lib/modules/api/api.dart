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
  publicProfile,
  filtersAvailable,
  listingsProfile,
  explorePage,
  notifyAvailability,
  profileNotifyStatus,
  peerToPeerPayments,
  getListingDetail,
  purchaseListing,
  chat,
  addAdminOnChat,
  refreshChatAuth,
  acceptPurchaseRequest,
  cancelPurchaseRequest,
  updateListingStatus,
  purchaseHistory,
  productItemsSold,
  alerts,
  readAlert,
  paywallSubscription,
  purchaseHistoryDetails,
  completeSale,
  confirmReceivedItem,
  listingsRating,
  soldDetail,
  deleteAccount,
  favoriteProfile,
  userWallets,
  verifyWallet,
  createOrUpdateWallet,
  logout,
  addAlertP2P,
  removeAddress,
}

enum ApiHostScheme {
  http,
  https,
}

extension ApiHostSchemeX on ApiHostScheme {
  Uri encodeUri(
    String authority, [
    String unencodedPath = '',
    Map<String, dynamic /*String?|Iterable<String>*/ >? queryParameters,
  ]) {
    switch (this) {
      case ApiHostScheme.http:
        return Uri.http(authority, unencodedPath, queryParameters);
      case ApiHostScheme.https:
        return Uri.https(authority, unencodedPath, queryParameters);
    }
  }
}

class API {
  final AppConfig appConfig;
  API(this.appConfig);

  String get host => appConfig.apiBaseUrl;
  ApiHostScheme get scheme => appConfig.apiHostScheme;

  Uri endpointUri(Endpoint endpoint, {String? dynamicParam = defaultString}) =>
      scheme.encodeUri(
        //TODO: Update to https when possible
        host,
        dynamicParam != null
            ? sprintf(_paths[endpoint]!, [dynamicParam])
            : _paths[endpoint]!,
      );

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
    Endpoint.publicProfile: 'api/public/v1/profile/%s',
    Endpoint.filtersAvailable: 'api/public/v1/catalog/filtersAvailable/',
    Endpoint.listingsProfile: 'api/public/v1/listing/productItems/profile/%s',
    Endpoint.explorePage: 'api/public/v1/catalog/search/0',
    Endpoint.notifyAvailability: 'api/v1/notification/notifyAvailability',
    Endpoint.profileNotifyStatus:
        'api/v1/notification/notifyAvailability/profile',
    Endpoint.peerToPeerPayments: 'api/v1/profile/settings/peerToPeerPayments',
    Endpoint.getListingDetail: 'api/public/v1/listing/listingDetail/%s',
    Endpoint.purchaseListing: 'api/v1/buyFlow/purchaseRequest',
    Endpoint.chat: 'api/v1/listing/%s/chat',
    Endpoint.addAdminOnChat: 'api/v1/chat/requestadmin/%s',
    Endpoint.refreshChatAuth: 'api/v1/chat/token',
    Endpoint.acceptPurchaseRequest: 'api/v1/buyFlow/acceptPurchaseRequest/%s',
    Endpoint.cancelPurchaseRequest: 'api/v1/buyFlow/cancelPurchaseRequest',
    Endpoint.updateListingStatus: 'api/v1/buyFlow/changeStatusListing/chat',
    Endpoint.purchaseHistory: 'api/v1/profile/settings/purchaseHistory',
    Endpoint.productItemsSold: 'api/v1/listing/productItemsSold',
    Endpoint.alerts: 'api/v1/notification/alerts',
    Endpoint.readAlert: 'api/v1/notification/alerts/alert/%s',
    Endpoint.paywallSubscription: 'api/v1/account/subscription',
    Endpoint.purchaseHistoryDetails:
        'api/v1/profile/settings/purchaseHistory/purchaseHistoryDetail/%s',
    Endpoint.completeSale: 'api/v1/buyFlow/acceptPurchaseRequest',
    Endpoint.confirmReceivedItem: 'api/v1/buyFlow/confirmReceivedItem',
    Endpoint.listingsRating: 'api/v1/profile/listingsRating',
    Endpoint.soldDetail: 'api/v1/listing/listingDetail/soldDetail/%s',
    Endpoint.favoriteProfile: 'api/public/v1/profile/favoriteItems/%s',
    Endpoint.userWallets: 'api/public/v1/account/userWallets',
    Endpoint.logout: 'api/v1/account/logout',
    Endpoint.deleteAccount: 'api/v1/profile',
    Endpoint.addAlertP2P: 'api/v1/notification/alerts/alert',
    Endpoint.verifyWallet: 'api/public/v1/account/verifyWallet',
    Endpoint.createOrUpdateWallet: 'api/public/v1/account/createOrUpdateWalletPair',
    Endpoint.addAlertP2P: 'api/v1/notification/alerts/alert',
    Endpoint.removeAddress: 'api/v1/profile/settings/account/addresses/%s'
  };
}
