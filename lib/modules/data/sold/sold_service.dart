import '../../api/api_service.dart';
import 'i_sold_service.dart';

class SoldService extends ISoldService {
  SoldService(this.apiService);

  final APIService apiService;

  @override
  Stream<String?> subscribeToAuthChanges() => Stream.value(null);
}
