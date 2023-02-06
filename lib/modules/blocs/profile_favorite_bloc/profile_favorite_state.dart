part of 'profile_favorite_bloc.dart';

@freezed
class FavoriteState with _$FavoriteState {
  FavoriteState._();

  factory FavoriteState.initial() = _InitialFavoriteState;
  factory FavoriteState.error(final String message) = _ErrorFavoriteState;
  factory FavoriteState.loadedFavoriteItems({
    required final List<FavoriteItemModel> dataFavoriteList,
  }) = LoadedFavoriteItemState;
}
