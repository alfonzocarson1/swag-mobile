part of 'search_bloc.dart';

// enum SearchTab { whatsHot, headcovers, putters, accessories, all }

// class SearchTabWrapper {
//   final SearchTab type;

//   SearchTabWrapper(this.type);

//   Future<String?> toStringCustom() async {
    
//     List<CategoryModel> categories =  await getIt<PreferenceRepositoryService>().getLastCategories();

//     switch (type) {
//       case SearchTab.whatsHot: return categories[0].catalogCategoryId;
//       case SearchTab.headcovers: return categories[1].catalogCategoryId;
//       case SearchTab.putters: return categories[2].catalogCategoryId;
//       case SearchTab.accessories: return categories[3].catalogCategoryId;
//       case SearchTab.all: return null;
//     }
//   }
// }

@freezed
class SearchState with _$SearchState {
  SearchState._();

  factory SearchState.initial() = _InitialSearchState;
  factory SearchState.error(final String message) = _ErrorSearchState;

  factory SearchState.recentSearch({
    required final List<String> queries,
  }) = _SearchStateRecentSearch;

  factory SearchState.searching({
    @Default('') final String query,
    @Default(SearchTab.whatsHot) final SearchTab tab,
  }) = _SearchStateSearching;

  factory SearchState.result({
    required final Map<SearchTab, List<CatalogItemModel>> result,
    @Default('') final String query,
    @Default(0) final int page,
    @Default(SearchTab.whatsHot) final SearchTab tab,
  }) = _SearchStateResult;

  factory SearchState.empty() = _SearchStateEmpty;

  String get query => when(
        error: (_) => '',
        initial: () => '',
        recentSearch: (_) => '',
        searching: (query, _) => query,
        result: (list, query, page, tab) => query,
        empty: () => '',
      );

  SearchTab? get tab => when(
        error: (_) => null,
        initial: () => null,
        recentSearch: (_) => null,
        searching: (_, tab) => tab,
        result: (_, __, ___ , tab) => tab,
        empty: () => null,
      );
}
