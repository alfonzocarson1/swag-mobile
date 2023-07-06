import 'package:swagapp/modules/models/purchase_history/purchase_history_model.dart';

import '../../models/purchase_history/purchase_history_detail_model.dart';

abstract class IPurchaseHistoryService {
  Future<PurchaseHistoryModel> purchaseHistory();

  Future<PurchaseHistoryDetailModel> purchaseHistoryDetail(String id);
}
