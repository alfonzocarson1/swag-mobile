import 'package:swagapp/modules/data/search/i_search_service.dart';

import '../../api/api.dart';
import '../../api/api_service.dart';
import '../../blocs/search_bloc.dart/search_bloc.dart';
import '../../common/utils/utils.dart';
import '../../di/injector.dart';
import '../../models/search/catalog_item_model.dart';
import '../../models/search/search_request_payload_model.dart';
import '../../models/search_tabs/search_tabs_response_model.dart';
import '../secure_storage/storage_repository_service.dart';
import '../shared_preferences/shared_preferences_service.dart';

class SearchService extends ISearchService {
  SearchService(this.apiService);

  final APIService apiService;
  final Map<SearchTab, List<CatalogItemModel>> _cachedSearch = {};

  @override
  Stream<String?> subscribeToAuthChanges() => Stream.value(null);

  @override
  Future<Map<SearchTab, List<CatalogItemModel>>> search(
      SearchRequestPayloadModel model, SearchTab tab) async {
    final isAuthenticatedUser =
        getIt<PreferenceRepositoryService>().isLogged() &&
            isTokenValid(await getIt<StorageRepositoryService>().getToken());

    final response = await apiService.getEndpointData(
        endpoint: isAuthenticatedUser
            ? Endpoint.catalogSearchListAuthenticated
            : Endpoint.catalogSearchListGuest,
        method: RequestMethod.post,
        jsonKey: "catalogList",
        dynamicParam: "0",
        needBearer: isAuthenticatedUser,
        fromJson: (json) => SearchTabsResponseModel.fromJson(json),
        body: model.toJson());

    _cachedSearch[tab] = response.catalogList;

    return _cachedSearch;
  }

  Future getCashedOrNew(bool refresh, String terms, SearchTab tab) async {
    final cat = _cachedSearch[tab] ?? [];
    if (cat.isNotEmpty && !refresh) {
    } else {
      final response = await search(
          SearchRequestPayloadModel(
              filters: getCurrentFilterModel(),
              categoryId: await SearchTabWrapper(tab).toStringCustom()),
          tab);
      _cachedSearch[tab] = response[tab] ?? [];
    }
  }

  @override
  Future<Map<SearchTab, List<CatalogItemModel>>> find(
      String term, SearchTab tab,
      {bool refresh = false}) async {
    await getCashedOrNew(refresh, term, tab);
    return _cachedSearch;
  }
}
