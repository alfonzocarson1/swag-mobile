part of 'paginated_search_cubit.dart';

@freezed
class PaginatedSearchState with _$PaginatedSearchState {
  const factory PaginatedSearchState.initial() = _Initial;
  const factory PaginatedSearchState.loading({ @Default(false) bool isFirstFetch}) = loading_search;
  const factory PaginatedSearchState.loaded({required Map<SearchTab, List<CatalogItemModel>> tabResultMap, required Map<SearchTab, List<CatalogItemModel>> newMap}) = loaded_search;
}
