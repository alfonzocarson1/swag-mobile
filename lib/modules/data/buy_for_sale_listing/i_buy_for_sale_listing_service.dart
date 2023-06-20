import '../../models/buy_for_sale_listing/buy_a_listing_accept_purchase_response_model.dart';
import '../../models/buy_for_sale_listing/buy_a_listing_model.dart';
import '../../models/buy_for_sale_listing/buy_a_listing_response_model.dart';
import '../../models/buy_for_sale_listing/buy_for_sale_listing_model.dart';
import '../../models/buy_for_sale_listing/buy_for_sale_listing_response_model.dart';

abstract class IBuyForSaleListingService {
  Stream<String?> subscribeToAuthChanges();
  Future<BuyForSaleListingResponseModel> buyForSaleListing(
      String catalogItemId);

  Future<BuyForSaleListingModel> buyAForSaleListing(String productItemId);

  Future<AcceptPurchaseResponseModel> acceptPurchaseRequest(
      String productItemId);

  Future<BuyASaleListingResponseModel> buyAListing(
      BuyASaleListingModel buyAListing);
}
