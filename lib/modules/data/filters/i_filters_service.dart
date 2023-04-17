
import 'package:swagapp/modules/models/filters/dynamic_filters.dart';

abstract class IFiltersService {

  Future<DynamicFilters> getDynamicFilters();
}
