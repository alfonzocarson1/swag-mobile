import 'dart:typed_data';

import '../../api/api.dart';
import '../../api/api_service.dart';
import '../../di/injector.dart';
import '../../models/listing_for_sale/listing_for_sale_model.dart';
import '../../models/listing_for_sale/profile_listing_model.dart';
import '../../models/profile/profile_model.dart';
import '../../models/update_profile/update_avatar_model.dart';
import '../shared_preferences/shared_preferences_service.dart';
import 'i_listing_service.dart';

class ListingService extends IListingService {
  ListingService(this.apiService);

  final APIService apiService;

  @override
  Stream<String?> subscribeToAuthChanges() => Stream.value(null);

  @override
  Future<ListingForSaleModel> createListing(ListingForSaleModel model) async {
    ListingForSaleModel response = await apiService.getEndpointData(
      endpoint: Endpoint.createListingForSale,
      method: RequestMethod.post,
      body: model.toJson(),
      needBearer: true,
      fromJson: (json) => ListingForSaleModel.fromJson(json),
    );
    return response;
  }

  @override
  Future<UpdateAvatarModel> uploadListingImage(
      Uint8List bytes, String topicId) async {
    try {
  UpdateAvatarModel response = await apiService.getEndpointData(
    endpoint: Endpoint.uploadImageListingForSale,
    method: RequestMethod.multipart,
    dynamicParam: topicId,
    needBearer: true,
    bytes: bytes,
    fromJson: (json) => UpdateAvatarModel.fromJson(json),
  );
  return response;
} on Exception catch (e) {
  throw(e);
}
    
  }

  @override
  Future<ListingForSaleProfileResponseModel> getListingForSale() async {
    ProfileModel profileData =
        getIt<PreferenceRepositoryService>().profileData();

    ListingForSaleProfileResponseModel response =
        await apiService.getEndpointData(
      endpoint: Endpoint.listingsProfile,
      method: RequestMethod.get,
      dynamicParam: profileData.accountId,
      jsonKey: "listForSale",
      needBearer: true,
      fromJson: (json) => ListingForSaleProfileResponseModel.fromJson(json),
    );
    return response;
  }
  
  @override
  Future<ListingForSaleModel> updateListing(ListingForSaleModel model)async{
     ListingForSaleModel response = await apiService.getEndpointData(
      endpoint: Endpoint.createListingForSale,
      method: RequestMethod.put,
      body: model.toJson(),
      needBearer: true,
      fromJson: (json) => ListingForSaleModel.fromJson(json),
    );
    return response;
  }
  
  @override
  Future<ListingForSaleModel> removeListingItem(ListingForSaleModel model) async {
    ListingForSaleModel response = await apiService.getEndpointData(
      endpoint: Endpoint.createListingForSale,
      method: RequestMethod.delete,
      body: model.toJson(),
      needBearer: true,
      fromJson: (json) => ListingForSaleModel.fromJson(json),
    );
     return response;
  }
}
