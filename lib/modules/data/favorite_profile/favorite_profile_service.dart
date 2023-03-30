import '../../api/api_service.dart';
import 'i_favorite_profile_service.dart';

class FavoriteProfileService extends IFavoriteProfileService {
  FavoriteProfileService(this.apiService);

  final APIService apiService;

  @override
  Stream<String?> subscribeToAuthChanges() => Stream.value(null);
}
