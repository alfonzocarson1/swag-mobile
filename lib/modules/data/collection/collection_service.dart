import '../../api/api_service.dart';
import 'i_collection_service.dart';

class CollectionService extends ICollectionService {
  CollectionService(this.apiService);

  final APIService apiService;

  @override
  Stream<String?> subscribeToAuthChanges() => Stream.value(null);
}
