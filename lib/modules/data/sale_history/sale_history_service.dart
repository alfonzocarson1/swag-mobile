import '../../api/api.dart';
import '../../api/api_service.dart';
import '../../models/detail/sale_list_history_model.dart';
import 'i_sale_history_service.dart';

class SalesHistoryService extends ISalesHistoryService {
  SalesHistoryService(this.apiService);

  final APIService apiService;

  @override
  Stream<String?> subscribeToAuthChanges() => Stream.value(null);

  @override
  Future<SalesHistoryListModel> salesHistory(String itemId) async {
    SalesHistoryListModel response = await apiService.getEndpointData(
        endpoint: Endpoint.catalogItemDetail,
        method: RequestMethod.get,
        dynamicParam: itemId,
        jsonKey: 'saleHistoryList',
        fromJson: (json) => SalesHistoryListModel.fromJson(json));
    return response;
  }
}
