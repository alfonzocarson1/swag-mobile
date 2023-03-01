part of 'accessories_bloc.dart';

enum SearchTab { all }

@freezed
class SearchAccessoriesState with _$SearchAccessoriesState {
  SearchAccessoriesState._();

  factory SearchAccessoriesState.initial() = _InitialSearchAccessoriesState;
  factory SearchAccessoriesState.error(final String message) =
      _ErrorSearchAccessoriesState;
  factory SearchAccessoriesState.loadedCategories({
    required final List<CategoryModel> categoryList,
  }) = LoadedCategoriesState;

  factory SearchAccessoriesState.recentSearch({
    required final List<String> queries,
  }) = _SearchAccessoriesStateRecentSearch;

  factory SearchAccessoriesState.searching({
    @Default('') final String query,
    @Default(SearchTab.all) final SearchTab tab,
  }) = _SearchAccessoriesStateSearching;

  factory SearchAccessoriesState.result({
    required final Map<SearchTab, List<CatalogItemModel>> result,
    @Default('') final String query,
    @Default(SearchTab.all) final SearchTab tab,
  }) = _SearchAccessoriesStateResult;

  factory SearchAccessoriesState.empty() = _SearchAccessoriesStateEmpty;

  String get query => when(
        loadedCategories: (_) => '',
        error: (_) => '',
        initial: () => '',
        recentSearch: (_) => '',
        searching: (query, _) => query,
        result: (list, query, tab) => query,
        empty: () => '',
      );

  SearchTab? get tab => when(
        loadedCategories: (_) => null,
        error: (_) => null,
        initial: () => null,
        recentSearch: (_) => null,
        searching: (_, tab) => tab,
        result: (_, __, tab) => tab,
        empty: () => null,
      );
}
