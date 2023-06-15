part of 'get_favorites_cubit.dart';

@freezed
class FavoriteCubitState with _$FavoriteCubitState {
  const factory FavoriteCubitState.initial() = _Initial;
  const factory FavoriteCubitState.loading(
      {@Default(false) bool isFirstFetch}) = loading_search;

  factory FavoriteCubitState.loadedProfileFavorites({
    required final ListFavoriteProfileResponseModel profileFavoriteList,
  }) = LoadedFavoritesState;

  factory FavoriteCubitState.loadedFavoriteItem(
      FavoriteModel dataFavoriteItem) = LoadedFavoriteItemState;

  factory FavoriteCubitState.removedFavoriteItem(
      FavoriteModel dataFavoriteItem) = RemovedFavoriteItemState;

  factory FavoriteCubitState.error(final String message) = ErrorFavoriteState;
}
