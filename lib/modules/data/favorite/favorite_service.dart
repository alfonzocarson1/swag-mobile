import '../../api/api_service.dart';
import 'i_favorite_service.dart';

class FavoriteService extends IFavoriteService {
  FavoriteService(this.apiService);

  final APIService apiService;

  @override
  Stream<String?> subscribeToAuthChanges() => Stream.value(null);
}
