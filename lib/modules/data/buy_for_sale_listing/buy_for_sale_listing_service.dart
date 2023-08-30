import '../../api/api.dart';
import '../../api/api_service.dart';
import '../../models/buy_for_sale_listing/buy_a_listing_accept_purchase_response_model.dart';
import '../../models/buy_for_sale_listing/buy_a_listing_model.dart';
import '../../models/buy_for_sale_listing/buy_a_listing_response_model.dart';
import '../../models/buy_for_sale_listing/buy_for_sale_listing_model.dart';
import '../../models/buy_for_sale_listing/buy_for_sale_listing_response_model.dart';
import '../../models/buy_for_sale_listing/cancel_purchase_request_model.dart';
import '../../models/buy_for_sale_listing/cancel_purchase_response_model.dart';
import '../../models/buy_for_sale_listing/rating_buy_request_model.dart';
import '../../models/buy_for_sale_listing/update_purchase_status_request.dart';
import 'i_buy_for_sale_listing_service.dart';

class BuyForSaleListingService extends IBuyForSaleListingService {
  BuyForSaleListingService(this.apiService);

  final APIService apiService;

  @override
  Stream<String?> subscribeToAuthChanges() => Stream.value(null);

  @override
  Future<BuyForSaleListingResponseModel> buyForSaleListing(
      String catalogItemId) async {
    BuyForSaleListingResponseModel response = await apiService.getEndpointData(
        endpoint: Endpoint.buyForSaleListing,
        method: RequestMethod.get,
        needBearer: false,
        dynamicParam: catalogItemId,
        jsonKey: "saledItemdList",
        fromJson: (json) => BuyForSaleListingResponseModel.fromJson(json));
    return response;
  }

  @override
  Future<BuyForSaleListingModel> buyAForSaleListing(
      String productItemId) async {
    BuyForSaleListingModel response = await apiService.getEndpointData(
        endpoint: Endpoint.getListingDetail,
        method: RequestMethod.get,
        needBearer: false,
        dynamicParam: productItemId,
        fromJson: (json) => BuyForSaleListingModel.fromJson(json));
    return response;
  }

  @override
  Future<BuyASaleListingResponseModel> buyAListing(
      BuyASaleListingModel buyAListing) async {
    BuyASaleListingResponseModel response = await apiService.getEndpointData(
      endpoint: Endpoint.purchaseListing,
      method: RequestMethod.post,
      needBearer: true,
      fromJson: (json) => BuyASaleListingResponseModel.fromJson(json),
      body: buyAListing.toJson(),
    );
    return response;
  }

  @override
  Future<CancelPurchaseResponseModel> acceptPurchaseRequest(
      UpdatePurchaseStatusRequestModel model) async {
    CancelPurchaseResponseModel response = await apiService.getEndpointData(
      endpoint: Endpoint.completeSale,
      method: RequestMethod.post,
      needBearer: true,
      fromJson: (json) => CancelPurchaseResponseModel.fromJson(json),
      body: model.toJson(),
    );
    return response;
  }

  @override
  Future<CancelPurchaseResponseModel> cancelPurchaseRequest(
      CancelPurchaseRequestModel model) async {
    CancelPurchaseResponseModel response = await apiService.getEndpointData(
      endpoint: Endpoint.cancelPurchaseRequest,
      method: RequestMethod.post,
      needBearer: true,
      fromJson: (json) => CancelPurchaseResponseModel.fromJson(json),
      body: model.toJson(),
    );
    return response;
  }

  @override
  Future<CancelPurchaseResponseModel> updateListingStatus(
      UpdatePurchaseStatusRequestModel model) async {
    CancelPurchaseResponseModel response = await apiService.getEndpointData(
      endpoint: Endpoint.updateListingStatus,
      method: RequestMethod.post,
      needBearer: true,
      fromJson: (json) => CancelPurchaseResponseModel.fromJson(json),
      body: model.toJson(),
    );
    return response;
  }

  @override
  Future<CancelPurchaseResponseModel> confirmReceivedItem(
      CancelPurchaseRequestModel model) async {
    CancelPurchaseResponseModel response = await apiService.getEndpointData(
      endpoint: Endpoint.confirmReceivedItem,
      method: RequestMethod.post,
      needBearer: true,
      fromJson: (json) => CancelPurchaseResponseModel.fromJson(json),
      body: model.toJson(),
    );
    return response;
  }

  @override
  Future<CancelPurchaseResponseModel> listingsRating(
      RatingBuyModelRequest model) async {
    CancelPurchaseResponseModel response = await apiService.getEndpointData(
      endpoint: Endpoint.listingsRating,
      method: RequestMethod.post,
      needBearer: true,
      fromJson: (json) => CancelPurchaseResponseModel.fromJson(json),
      body: model.toJson(),
    );
    return response;
  }
}
