import '../../api/api.dart';
import '../../api/api_service.dart';
import '../../models/collection/add_collection_model.dart';
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
}
