import '../../models/explore/explore_item_model.dart';
import '../../models/explore/explore_payload_model.dart';

abstract class IExploreService {
  Stream<String?> subscribeToAuthChanges();
  Future<ListExploreItemModel> getExplore(ExploreRequestPayloadModel payload);
}
