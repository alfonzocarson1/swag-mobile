part of 'favorite_item_bloc.dart';

@freezed
class FavoriteItemEvent with _$FavoriteItemEvent {
  const factory FavoriteItemEvent.addFavoriteItem(FavoriteModel model) =
      _AddFavoriteItem;

  const factory FavoriteItemEvent.removeFavoriteItem(FavoriteModel model) =
      _RemoveFavoriteItem;
}
