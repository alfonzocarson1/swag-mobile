part of 'favorite_item_bloc.dart';

@freezed
class FavoriteItemState with _$FavoriteItemState {
  FavoriteItemState._();

  factory FavoriteItemState.initial() = _InitialFavoriteItemState;
  factory FavoriteItemState.error(final String message) =
      _ErrorFavoriteItemState;
  factory FavoriteItemState.loadedFavoriteItem(FavoriteModel dataFavoriteItem) =
      LoadedFavoriteItemState;
}
