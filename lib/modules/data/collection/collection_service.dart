import 'package:swagapp/modules/models/listing_for_sale/listing_for_sale_model.dart';

import '../../api/api.dart';
import '../../api/api_service.dart';
import '../../models/collection/add_collection_model.dart';
import '../../models/collection/get_list_collection_model.dart';
import '../../models/listing_for_sale/profile_listing_model.dart';
import 'i_collection_service.dart';

class CollectionService extends ICollectionService {
  CollectionService(this.apiService);

  final APIService apiService;

  @override
  Stream<String?> subscribeToAuthChanges() => Stream.value(null);

  @override
  Future<AddCollectionModel> addCollection(AddCollectionModel model) async {
    AddCollectionModel response = await apiService.getEndpointData(
      endpoint: Endpoint.addCollection,
      method: RequestMethod.put,
      body: model.toJson(),
      needBearer: true,
      fromJson: (json) => AddCollectionModel.fromJson(json),
    );
    return response;
  }

  @override
  Future<AddCollectionModel> removeCollection(AddCollectionModel model) async {
    AddCollectionModel response = await apiService.getEndpointData(
      endpoint: Endpoint.addCollection,
      method: RequestMethod.delete,
      body: model.toJson(),
      needBearer: true,
      fromJson: (json) => AddCollectionModel.fromJson(json),
    );
    return response;
  }

  @override
  Future<ListCollectionProfileResponseModel> getCollection() async {
    ListCollectionProfileResponseModel response =
        await apiService.getEndpointData(
      endpoint: Endpoint.addCollection,
      method: RequestMethod.get,
      jsonKey: "collectionList",
      needBearer: true,
      fromJson: (json) => ListCollectionProfileResponseModel.fromJson(json),
    );
    return response;
  }

  @override
  Future<ListingForSaleProfileResponseModel> getCollectionDetail(String collectionId) async {
    ListingForSaleProfileResponseModel response =
        await apiService.getEndpointData(
      endpoint: Endpoint.getProfileCollectionDetail,
      method: RequestMethod.get,
      dynamicParam: collectionId,
      jsonKey: "listForSale",
      needBearer: true,
      fromJson: (json) => ListingForSaleProfileResponseModel.fromJson(json),
    );
    return response;
  }
}
