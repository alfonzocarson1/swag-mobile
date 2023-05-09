import 'package:swagapp/modules/data/explore/i_explore_service.dart';

import '../../api/api.dart';
import '../../api/api_service.dart';
import '../../models/explore/explore_item_model.dart';
import '../../models/explore/explore_payload_model.dart';

class ExploreService extends IExploreService {
  ExploreService(this.apiService);

  final APIService apiService;

  @override
  Stream<String?> subscribeToAuthChanges() => Stream.value(null);
  @override
  Future<ListExploreItemModel> getExplore(
      ExploreRequestPayloadModel payload) async {
    ListExploreItemModel response = await apiService.getEndpointData(
      endpoint: Endpoint.explorePage,
      method: RequestMethod.post,
      jsonKey: "exploreList",
      fromJson: (json) => ListExploreItemModel.fromJson(json),
      body: payload.toJson(),
    );

    return response;
  }
}
