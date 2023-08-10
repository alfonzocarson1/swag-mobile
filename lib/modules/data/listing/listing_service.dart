import 'dart:convert';
import 'dart:typed_data';

import '../../api/api.dart';
import '../../api/api_service.dart';
import '../../common/utils/context_service.dart';
import '../../cubits/listing_for_sale/get_listing_for_sale_cubit.dart';
import '../../di/injector.dart';
import '../../models/listing_for_sale/listing_for_sale_model.dart';
import '../../models/listing_for_sale/profile_listing_model.dart';
import '../../models/profile/profile_model.dart';
import '../../models/update_profile/update_avatar_model.dart';
import '../../notifications_providers/local_notifications_providers.dart';
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
  Future<UpdateAvatarModel> uploadListingImage(Uint8List bytes, String topicId,
      ListingForSaleModel model, bool updating) async {
    ListingForSaleModel removeItem = ListingForSaleModel(
      accountId: model.profileId,
      productItemId: model.productItemId,
      productItemName: model.productItemName,
      catalogItemId: model.catalogItemId,
      sold: false,
      forSale: true,
    );
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
      if (!updating) {
        LocalNotificationProvider.showInAppAllert(
            'Listing creation failed due to photo upload failure.  Please try listing item again.');
        await getIt<ListingProfileCubit>().removeListingItem(removeItem);
        getIt<ContextService>().rootNavigatorKey.currentState!.pop();
        getIt<ContextService>().rootNavigatorKey.currentState!.pop();
        getIt<ContextService>().rootNavigatorKey.currentState!.pop();
      }
      throw (e);
    }
  }

  @override
  Future<ListingForSaleProfileResponseModel> getListingForSale() async {
    ProfileModel profileData =
        getIt<PreferenceRepositoryService>().profileData();

    return getListingForSaleForProfile(profileData.accountId);
  }

  @override
  Future<ListingForSaleProfileResponseModel> getListingForSaleForProfile(
      String profileId) async {
    ListingForSaleProfileResponseModel response =
        await apiService.getEndpointData(
      endpoint: Endpoint.listingsProfile,
      method: RequestMethod.get,
      dynamicParam: profileId,
      jsonKey: "listForSale",
      needBearer: true,
      fromJson: (json) => ListingForSaleProfileResponseModel.fromJson(json),
    );
    return response;
  }

  @override
  Future<ListingForSaleModel> updateListing(ListingForSaleModel model) async {
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
  Future<ListingForSaleModel> removeListingItem(
      ListingForSaleModel model) async {
    ListingForSaleModel response = await apiService.getEndpointData(
      endpoint: Endpoint.createListingForSale,
      method: RequestMethod.delete,
      body: model.toJson(),
      needBearer: true,
      fromJson: (json) => ListingForSaleModel.fromJson(json),
    );
    return response;
  }

  @override
  Future<void> updateImages(List<String> imageUrls) async {
    String response = await apiService.updateImageEndpoint(
      endpoint: Endpoint.updateImages,
      method: RequestMethod.post,
      body: imageUrls,
      needBearer: true,
    );
  }
}
