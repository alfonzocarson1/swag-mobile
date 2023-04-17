

import '../../common/utils/tab_wrapper.dart';
import '../../models/search/catalog_item_model.dart';
import '../../models/search/search_request_payload_model.dart';

abstract class ISearchService2 {

  Future<Map<SearchTab, List<CatalogItemModel>>> search({
    required SearchRequestPayloadModel model, 
    required SearchTab tab,
    int page = 0,
  });

  Future<Map<SearchTab, List<CatalogItemModel>>> searchTab({
    required SearchTab tab, 
    int page = 0, 
    bool refresh = false,
     });
}