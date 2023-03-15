import '../../models/collection/add_collection_items_payload_model.dart';
import '../../models/collection/add_collection_model.dart';

abstract class ICollectionService {
  Stream<String?> subscribeToAuthChanges();

  Future<AddCollectionModel> addCollection(AddCollectionModel model);
}
