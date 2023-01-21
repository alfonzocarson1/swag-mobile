import '../../api/api_service.dart';
import 'i_detail_service.dart';

class DetailService extends IDetailService {
  DetailService(this.apiService);

  final APIService apiService;

  @override
  Stream<String?> subscribeToAuthChanges() => Stream.value(null);
}
