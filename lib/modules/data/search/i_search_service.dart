import '../../blocs/search_bloc.dart/search_bloc.dart';
import '../../models/search/catalog_item_model.dart';
import '../../models/search/search_request_payload_model.dart';

abstract class ISearchService {
  Stream<String?> subscribeToAuthChanges();
  Future<Map<SearchTab, List<CatalogItemModel>>> search(
      SearchRequestPayloadModel model, SearchTab tab);
  Future<Map<SearchTab, List<CatalogItemModel>>> find(
      String term, SearchTab tab,
      {final bool refresh = false});
}
