import 'package:swagapp/modules/data/search/i_search_service.dart';

import '../../api/api_service.dart';

class SearchService extends ISearchService {
  SearchService(this.apiService);

  final APIService apiService;

  @override
  Stream<String?> subscribeToAuthChanges() => Stream.value(null);
}
