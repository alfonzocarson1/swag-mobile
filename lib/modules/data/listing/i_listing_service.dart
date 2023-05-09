import '../../models/listing_for_sale/listing_for_sale_model.dart';
import '../../models/listing_for_sale/profile_listing_model.dart';
import '../../models/update_profile/update_avatar_model.dart';
import 'dart:typed_data';

abstract class IListingService {
  Stream<String?> subscribeToAuthChanges();
  Future<ListingForSaleModel> createListing(ListingForSaleModel model);
  Future<UpdateAvatarModel> uploadListingImage(Uint8List bytes, String topicId);
  Future<ListingForSaleProfileResponseModel> getListingForSale();
  Future<ListingForSaleModel> updateListing(ListingForSaleModel model);
  Future<ListingForSaleModel> removeListingItem(ListingForSaleModel model);
}
