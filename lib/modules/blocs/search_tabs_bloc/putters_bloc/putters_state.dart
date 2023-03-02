part of 'putters_bloc.dart';

enum SearchTab { all }

@freezed
class SearchPuttersState with _$SearchPuttersState {
  SearchPuttersState._();

  factory SearchPuttersState.initial() = _InitialSearchPuttersState;
  factory SearchPuttersState.error(final String message) =
      _ErrorSearchPuttersState;
  factory SearchPuttersState.loadedCategories({
    required final List<CategoryModel> categoryList,
  }) = LoadedCategoriesState;

  factory SearchPuttersState.recentSearch({
    required final List<String> queries,
  }) = _SearchPuttersStateRecentSearch;

  factory SearchPuttersState.searching({
    @Default('') final String query,
    @Default(SearchTab.all) final SearchTab tab,
  }) = _SearchPuttersStateSearching;

  factory SearchPuttersState.result({
    required final Map<SearchTab, List<CatalogItemModel>> result,
    @Default('') final String query,
    @Default(SearchTab.all) final SearchTab tab,
  }) = _SearchPuttersStateResult;

  factory SearchPuttersState.empty() = _SearchPuttersStateEmpty;

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
