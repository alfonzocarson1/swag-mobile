part of 'head_covers_bloc.dart';

enum SearchTab { all }

@freezed
class SearchHeadcoversState with _$SearchHeadcoversState {
  SearchHeadcoversState._();

  factory SearchHeadcoversState.initial() = _InitialSearchHeadcoversState;
  factory SearchHeadcoversState.error(final String message) =
      _ErrorSearchHeadcoversState;
  factory SearchHeadcoversState.loadedCategories({
    required final List<CategoryModel> categoryList,
  }) = LoadedCategoriesState;

  factory SearchHeadcoversState.recentSearch({
    required final List<String> queries,
  }) = _SearchHeadcoversStateRecentSearch;

  factory SearchHeadcoversState.searching({
    @Default('') final String query,
    @Default(SearchTab.all) final SearchTab tab,
  }) = _SearchHeadcoversStateSearching;

  factory SearchHeadcoversState.result({
    required final Map<SearchTab, List<CatalogItemModel>> result,
    @Default('') final String query,
    @Default(SearchTab.all) final SearchTab tab,
  }) = _SearchHeadcoversStateResult;

  factory SearchHeadcoversState.empty() = _SearchHeadcoversStateEmpty;

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
