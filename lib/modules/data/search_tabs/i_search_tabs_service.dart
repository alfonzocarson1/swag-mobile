import '../../models/search_tabs/payload_search_model.dart';
import '../../models/search_tabs/search_tabs_response_model.dart';

abstract class ISearchTabsService {
  Stream<String?> subscribeToAuthChanges();
  Future<SearchTabsResponseModel> catalogSearchList(FiltersPayload param);
}
