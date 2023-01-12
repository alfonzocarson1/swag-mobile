part of 'search_bloc.dart';

@freezed
class SearchState with _$SearchState {
  SearchState._();

  factory SearchState.initial() = _InitialSearchState;
  factory SearchState.error(final String message) = _ErrorSearchState;
  factory SearchState.loadedCategories({
    required final List<CategoryModel> categoryList,
  }) = LoadedCategoriesState;
  factory SearchState.loadedCatalogItems({
    required final List<CatalogItemModel> catalogList,
  }) = LoadedCatalogItemsState;
}
