import 'package:swagapp/modules/api/api.dart';
import 'package:swagapp/modules/models/sold/list_product_item_sold_response_model.dart';
import 'package:swagapp/modules/models/sold/product_item_sold.dart';

import '../../api/api_service.dart';
import 'i_sold_service.dart';

class SoldService extends ISoldService {
  SoldService(this.apiService);

  final APIService apiService;

  @override
  Stream<String?> subscribeToAuthChanges() => Stream.value(null);

  @override
  Future<List<ProductItemSold>> getProductItemsSold() async {
    final ListProductItemsSoldResponseModel response =
        await apiService.getEndpointData(
      endpoint: Endpoint.productItemsSold,
      method: RequestMethod.get,
      jsonKey: "productItemsSold",
      needBearer: true,
      fromJson: (json) => ListProductItemsSoldResponseModel.fromJson(json),
    );

    return response.productItemsSold;
  }

  @override
  Future<ProductItemSold> getDetailProductItemsSold(
      String productItemId) async {
    final ProductItemSold response = await apiService.getEndpointData(
      endpoint: Endpoint.soldDetail,
      method: RequestMethod.get,
      dynamicParam: productItemId,
      needBearer: true,
      fromJson: (json) => ProductItemSold.fromJson(json),
    );
    return response;
  }
}
