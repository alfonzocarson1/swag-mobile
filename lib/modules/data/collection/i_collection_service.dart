import 'package:swagapp/modules/models/collection/add_collection_items_payload_model.dart';

import '../../models/collection/add_collection_model.dart';
import '../../models/collection/get_list_collection_model.dart';
import '../../models/listing_for_sale/listing_for_sale_model.dart';
import '../../models/listing_for_sale/profile_listing_model.dart';

abstract class ICollectionService {
  Stream<String?> subscribeToAuthChanges();

  Future<AddCollectionModel> addCollection(AddCollectionModel model);
  Future<AddCollectionModel> removeCollection(AddCollectionModel model);
  Future<ListCollectionProfileResponseModel> getCollection();
  Future<ListingForSaleProfileResponseModel> getCollectionDetail(String collectionId);
}
