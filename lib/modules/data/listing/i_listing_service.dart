import '../../models/listing_for_sale/listing_for_sale_model.dart';
import '../../models/listing_for_sale/profile_listing_model.dart';
import '../../models/update_profile/update_avatar_model.dart';
import 'dart:typed_data';

abstract class IListingService {
  Stream<String?> subscribeToAuthChanges();
  Future<ListingForSaleModel> createListing(ListingForSaleModel model);
  Future<UpdateAvatarModel> uploadListingImage(Uint8List bytes, String topicId,
      ListingForSaleModel model, bool updating);
  Future<ListingForSaleProfileResponseModel> getListingForSale();
  Future<ListingForSaleProfileResponseModel> getListingForSaleForProfile(
      String profileId);
  Future<ListingForSaleModel> updateListing(ListingForSaleModel model);
  Future<void> updateImages(List<String> imageUrls);
  Future<ListingForSaleModel> removeListingItem(ListingForSaleModel model);
}
