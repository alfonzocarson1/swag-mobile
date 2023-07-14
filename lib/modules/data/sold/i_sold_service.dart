import 'package:swagapp/modules/models/sold/product_item_sold.dart';

abstract class ISoldService {
  Stream<String?> subscribeToAuthChanges();

  Future<List<ProductItemSold>> getProductItemsSold();

  Future<ProductItemSold> getDetailProductItemsSold(String productItemId);
}
