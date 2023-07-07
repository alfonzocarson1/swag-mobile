import 'package:swagapp/modules/api/api.dart';
import 'package:swagapp/modules/models/purchase_history/purchase_history_detail_model.dart';

import 'i_purchase_history_service.dart';
import '../../models/purchase_history/purchase_history_model.dart';

import '../../api/api_service.dart';

class PurchaseHistoryService extends IPurchaseHistoryService {
  PurchaseHistoryService(this.apiService);

  final APIService apiService;

  @override
  Future<PurchaseHistoryModel> purchaseHistory() async {
    PurchaseHistoryModel response = await apiService.getEndpointData(
      endpoint: Endpoint.purchaseHistory,
      method: RequestMethod.get,
      fromJson: PurchaseHistoryModel.fromJson,
    );

    return response;
  }

  @override
  Future<PurchaseHistoryDetailModel> purchaseHistoryDetail(String id) async {
    PurchaseHistoryDetailModel response = await apiService.getEndpointData(
      endpoint: Endpoint.purchaseHistoryDetails,
      dynamicParam: id,
      method: RequestMethod.get,
      fromJson: PurchaseHistoryDetailModel.fromJson,
    );

    return response;
  }
}
