import '../../models/favorite/favorite_model.dart';

abstract class IFavoriteService {
  Stream<String?> subscribeToAuthChanges();
  Future<FavoriteModel> addFavorite(FavoriteModel model);
  Future<FavoriteModel> removeFavorite(FavoriteModel model);
}
