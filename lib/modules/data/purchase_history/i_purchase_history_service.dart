import 'package:swagapp/modules/models/purchase_history/purchase_history_model.dart';

abstract class IPurchaseHistoryService {
  Future<PurchaseHistoryModel> purchaseHistory();
}
