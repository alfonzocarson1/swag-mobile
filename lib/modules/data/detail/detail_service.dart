import '../../api/api.dart';
import '../../api/api_service.dart';
import '../../common/utils/utils.dart';
import '../../di/injector.dart';
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
}
