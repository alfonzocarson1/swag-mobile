import 'package:swagapp/modules/api/api.dart';
import 'package:swagapp/modules/api/api_service.dart';

import 'i_filters_service.dart';
import 'package:swagapp/modules/models/filters/dynamic_filters.dart';

class FiltersService extends IFiltersService {
  FiltersService(this.apiService);

  final APIService apiService;

  @override
  Future<DynamicFilters> getDynamicFilters() async {
    DynamicFilters response = await apiService.getEndpointData(
      endpoint: Endpoint.filtersAvailable,
      method: RequestMethod.get,
      fromJson: (json) => DynamicFilters.fromJson(json),
    );

    return response;
  }
}
