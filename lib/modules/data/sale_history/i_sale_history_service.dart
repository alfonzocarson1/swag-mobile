import '../../models/detail/sale_list_history_model.dart';

abstract class ISalesHistoryService {
  Stream<String?> subscribeToAuthChanges();
  Future<SalesHistoryListModel> salesHistory(String itemId);
}
