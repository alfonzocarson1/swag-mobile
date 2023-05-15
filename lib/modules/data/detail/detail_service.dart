import '../../api/api.dart';
import '../../api/api_service.dart';
import '../../common/utils/utils.dart';
import '../../di/injector.dart';
import '../../models/buy_for_sale_listing/buy_for_sale_listing_response_model.dart';
import '../../models/detail/detail_item_model.dart';
import '../secure_storage/storage_repository_service.dart';
import '../shared_preferences/shared_preferences_service.dart';
import 'i_detail_service.dart';

class DetailService extends IDetailService {
  DetailService(this.apiService);

  final APIService apiService;

  @override
  Stream<String?> subscribeToAuthChanges() => Stream.value(null);

  @override
  Future<DetailItemModel> itemDetail(String itemId) async {
    bool isLogged = getIt<PreferenceRepositoryService>().isLogged() &&
        isTokenValid(await getIt<StorageRepositoryService>().getToken());

    DetailItemModel response = await apiService.getEndpointData(
        endpoint: isLogged
            ? Endpoint.catalogItemDetail
            : Endpoint.publicCatalogItemDetail,
        method: RequestMethod.get,
        needBearer: isLogged,
        dynamicParam: itemId,
        fromJson: (json) => DetailItemModel.fromJson(json));
    return response;
  }

  @override
  Future<dynamic> notifyAvailability(String catalogoId) async {
    var response = await apiService.getEndpointData(
      endpoint: Endpoint.notifyAvailability,
      method: RequestMethod.post,
      needBearer: true,
      fromJson: (json) => json,
      body: {"catalogItemId": catalogoId},
    );

    return response;
  }

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
