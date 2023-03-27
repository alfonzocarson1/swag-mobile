import '../../models/listing_for_sale/listing_for_sale_model.dart';

abstract class IListingService {
  Stream<String?> subscribeToAuthChanges();
  Future<ListingForSaleModel> createListing(ListingForSaleModel model);
}
