import '../../models/detail/detail_item_model.dart';

abstract class IDetailService {
  Stream<String?> subscribeToAuthChanges();
  Future<DetailItemModel> itemDetail(String itemId);
}
