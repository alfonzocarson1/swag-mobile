import '../../models/favorite/favorite_model.dart';
import '../../models/favorite/profile_favorite_list.dart';

abstract class IFavoriteService {
  Stream<String?> subscribeToAuthChanges();
  Future<FavoriteModel> addFavorite(FavoriteModel model);
  Future<FavoriteModel> removeFavorite(FavoriteModel model);
  Future<ListFavoriteProfileResponseModel> getFavorites();
}
