import '../../api/api.dart';
import '../../api/api_service.dart';
import '../../models/search_tabs/payload_search_model.dart';
import '../../models/search_tabs/search_tabs_response_model.dart';
import 'i_search_tabs_service.dart';

class SearchTabsService extends ISearchTabsService {
  SearchTabsService(this.apiService);

  final APIService apiService;

  @override
  Stream<String?> subscribeToAuthChanges() => Stream.value(null);

  @override
  Future<SearchTabsResponseModel> catalogSearchList(
      FiltersPayload param) async {
    SearchTabsResponseModel response = await apiService.getEndpointData(
        endpoint: Endpoint.catalogSearchList,
        method: RequestMethod.post,
        jsonKey: 'catalogList',
        dynamicParam: param.currentPage,
        fromJson: (json) => SearchTabsResponseModel.fromJson(json),
        body: {
          "filters": {
            "forSale": param.forSale,
            "sortBy": param.sortBy,
            "collection": param.collection,
            "conditions": param.conditions,
            "theme": param.theme,
            "productType": param.productType,
            "releaseYears": param.releaseYears
          },
          "searchParams": param.searchParams,
          "pageSize": param.pageSize,
          "categoryId": param.categoryId
        });

    return response;
  }
}
