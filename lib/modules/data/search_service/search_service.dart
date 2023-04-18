import 'package:swagapp/modules/models/search/search_request_payload_model.dart';
import 'package:swagapp/modules/models/search/catalog_item_model.dart';


import '../../api/api.dart';
import '../../api/api_service.dart';
import '../../common/utils/tab_wrapper.dart';
import '../../common/utils/utils.dart';
import '../../di/injector.dart';
import '../../models/search/filter_model.dart';
import '../../models/search_tabs/search_tabs_response_model.dart';
import '../search_service/i_search_service.dart';
import '../secure_storage/storage_repository_service.dart';
import '../shared_preferences/shared_preferences_service.dart';

class SearchService extends ISearchService2 {

  SearchService(this.apiService);
  final APIService apiService;
  final Map<SearchTab, List<CatalogItemModel>> _cachedSearch = {};
  
  @override
  Future<Map<SearchTab, List<CatalogItemModel>>> search({
    required SearchRequestPayloadModel model, 
    required SearchTab tab,
    int page = 0,    
  }) async {

    bool isLogged = getIt<PreferenceRepositoryService>().isLogged();
    String? token = await getIt<StorageRepositoryService>().getToken();
    bool isAuthenticatedUser = isLogged && isTokenValid(token!);


    final response = await apiService.getEndpointData(
      endpoint: isAuthenticatedUser
        ? Endpoint.catalogSearchListAuthenticated
        : Endpoint.catalogSearchListGuest,
      method: RequestMethod.post,
      jsonKey: "catalogList",
      dynamicParam: page.toString(),
      needBearer: isAuthenticatedUser,
      fromJson: (json) => SearchTabsResponseModel.fromJson(json),
      body: model.toJson(),
    );
    

    _cachedSearch[tab] = response.catalogList;

    return _cachedSearch;
  }

  Future getCachedOrNew(bool refresh, SearchTab tab, int page) async {

    final cat = _cachedSearch[tab] ?? [];
    if (cat.isNotEmpty && !refresh) {
    } else {
      final categoryId = await SearchTabWrapper(tab).toStringCustom();
      final response = await search(
        page: page,
          model: SearchRequestPayloadModel(
            filters: FilterModel(
              productType: tab != SearchTab.whatsHot && categoryId != null
                ? [categoryId]
                : null,
            ),
            categoryId: tab != SearchTab.whatsHot ? categoryId : null,
          ),
          tab: tab,
        );
      _cachedSearch[tab] = response[tab] ?? [];
    }
  }
  
  @override
  Future<Map<SearchTab, List<CatalogItemModel>>> searchTab({required SearchTab tab, int page = 0, bool refresh = false}) async {
     await getCachedOrNew(refresh, tab, page);
    return _cachedSearch;
  }


}