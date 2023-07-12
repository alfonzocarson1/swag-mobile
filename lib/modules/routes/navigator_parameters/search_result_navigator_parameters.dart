
import 'package:swagapp/modules/models/search/search_request_payload_model.dart';

class SearchResultNavigatorParameters {
  
  final String searchParam;
  final SearchRequestPayloadModel? searchWithFilters;
  final bool? staffPicksFlag;
  final bool? unicornFlag;

  SearchResultNavigatorParameters({
    required this.searchParam, 
    this.searchWithFilters, 
    this.staffPicksFlag, 
    this.unicornFlag,
  });
}

