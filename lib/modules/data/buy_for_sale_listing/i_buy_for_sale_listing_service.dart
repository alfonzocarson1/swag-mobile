import '../../models/buy_for_sale_listing/buy_a_listing_accept_purchase_response_model.dart';
import '../../models/buy_for_sale_listing/buy_a_listing_model.dart';
import '../../models/buy_for_sale_listing/buy_a_listing_response_model.dart';
import '../../models/buy_for_sale_listing/buy_for_sale_listing_model.dart';
import '../../models/buy_for_sale_listing/buy_for_sale_listing_response_model.dart';
import '../../models/buy_for_sale_listing/cancel_purchase_request_model.dart';
import '../../models/buy_for_sale_listing/cancel_purchase_response_model.dart';
import '../../models/buy_for_sale_listing/update_purchase_status_request.dart';

abstract class IBuyForSaleListingService {
  Stream<String?> subscribeToAuthChanges();
  Future<BuyForSaleListingResponseModel> buyForSaleListing(
      String catalogItemId);

  Future<BuyForSaleListingModel> buyAForSaleListing(String productItemId);

  Future<CancelPurchaseResponseModel> acceptPurchaseRequest(
      UpdatePurchaseStatusRequestModel model);

  Future<CancelPurchaseResponseModel> cancelPurchaseRequest(
      CancelPurchaseRequestModel model);

  Future<CancelPurchaseResponseModel> updateListingStatus(
      UpdatePurchaseStatusRequestModel model);

  Future<BuyASaleListingResponseModel> buyAListing(
      BuyASaleListingModel buyAListing);
}
