import '../../api/api.dart';
import '../../api/api_service.dart';
import '../../models/buy_for_sale_listing/buy_for_sale_listing_response_model.dart';
import 'i_buy_for_sale_listing_service.dart';

class BuyForSaleListingService extends IBuyForSaleListingService {
  BuyForSaleListingService(this.apiService);

  final APIService apiService;

  @override
  Stream<String?> subscribeToAuthChanges() => Stream.value(null);

  @override
  Future<BuyForSaleListingResponseModel> buyForSaleListing(
      String catalogItemId) async {
    BuyForSaleListingResponseModel response = await apiService.getEndpointData(
        endpoint: Endpoint.buyForSaleListing,
        method: RequestMethod.get,
        needBearer: true,
        dynamicParam: catalogItemId,
        jsonKey: "saledItemdList",
        fromJson: (json) => BuyForSaleListingResponseModel.fromJson(json));
    return response;
  }
}
