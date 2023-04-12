part of 'paginated_search_cubit.dart';

@freezed
class PaginatedSearchState with _$PaginatedSearchState {
  const factory PaginatedSearchState.initial() = _Initial;
  const factory PaginatedSearchState.loading() = loading_search;
  const factory PaginatedSearchState.loaded(List<CatalogItemModel> tabSearchList, bool hasReachMax) = loaded_search;
}
