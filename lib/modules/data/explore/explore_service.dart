import 'package:swagapp/modules/data/explore/i_explore_service.dart';

import '../../api/api_service.dart';

class ExploreService extends IExploreService {
  ExploreService(this.apiService);

  final APIService apiService;

  @override
  Stream<String?> subscribeToAuthChanges() => Stream.value(null);
}
