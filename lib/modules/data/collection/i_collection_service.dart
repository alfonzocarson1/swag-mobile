import '../../models/collection/add_collection_model.dart';
import '../../models/collection/get_list_collection_model.dart';

abstract class ICollectionService {
  Stream<String?> subscribeToAuthChanges();

  Future<AddCollectionModel> addCollection(AddCollectionModel model);
  Future<AddCollectionModel> removeCollection(AddCollectionModel model);
  Future<ListCollectionProfileResponseModel> getCollection();
}
