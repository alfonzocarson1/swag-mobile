part of 'search_bloc.dart';

enum SearchTab { all }

@freezed
class SearchState with _$SearchState {
  SearchState._();

  factory SearchState.initial() = _InitialSearchState;
  factory SearchState.error(final String message) = _ErrorSearchState;
  factory SearchState.loadedCategories({
    required final List<CategoryModel> categoryList,
  }) = LoadedCategoriesState;

  factory SearchState.recentSearch({
    required final List<String> queries,
  }) = _SearchStateRecentSearch;

  factory SearchState.searching({
    @Default('') final String query,
    @Default(SearchTab.all) final SearchTab tab,
  }) = _SearchStateSearching;

  factory SearchState.result({
    required final Map<SearchTab, List<CatalogItemModel>> result,
    @Default('') final String query,
    @Default(SearchTab.all) final SearchTab tab,
  }) = _SearchStateResult;

  factory SearchState.empty() = _SearchStateEmpty;

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
