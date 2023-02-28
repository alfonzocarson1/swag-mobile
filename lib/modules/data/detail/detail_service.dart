import '../../api/api.dart';
import '../../api/api_service.dart';
import '../../models/detail/detail_item_model.dart';
import 'i_detail_service.dart';

class DetailService extends IDetailService {
  DetailService(this.apiService);

  final APIService apiService;

  @override
  Stream<String?> subscribeToAuthChanges() => Stream.value(null);

  @override
  Future<DetailItemModel> itemDetail(String itemId) async {
    DetailItemModel response = await apiService.getEndpointData(
        endpoint: Endpoint.catalogItemDetail,
        method: RequestMethod.get,
        dynamicParam: itemId,
        fromJson: (json) => DetailItemModel.fromJson(json));

    return response;
  }
}
