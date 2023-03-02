part of 'whats_hot_bloc.dart';

enum SearchTab { all }

@freezed
class SearchWhatsHotState with _$SearchWhatsHotState {
  SearchWhatsHotState._();

  factory SearchWhatsHotState.initial() = _InitialSearchWhatsHotState;
  factory SearchWhatsHotState.error(final String message) =
      _ErrorSearchWhatsHotState;
  factory SearchWhatsHotState.loadedCategories({
    required final List<CategoryModel> categoryList,
  }) = LoadedCategoriesState;

  factory SearchWhatsHotState.recentSearch({
    required final List<String> queries,
  }) = _SearchWhatsHotStateRecentSearch;

  factory SearchWhatsHotState.searching({
    @Default('') final String query,
    @Default(SearchTab.all) final SearchTab tab,
  }) = _SearchWhatsHotStateSearching;

  factory SearchWhatsHotState.result({
    required final Map<SearchTab, List<CatalogItemModel>> result,
    @Default('') final String query,
    @Default(SearchTab.all) final SearchTab tab,
  }) = _SearchWhatsHotStateResult;

  factory SearchWhatsHotState.empty() = _SearchWhatsHotStateEmpty;

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
