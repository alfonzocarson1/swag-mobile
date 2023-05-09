part of 'get_explore_cubit.dart';

@freezed
class ExploreCubitState with _$ExploreCubitState {
  const factory ExploreCubitState.initial() = _Initial;
  const factory ExploreCubitState.loading({@Default(false) bool isFirstFetch}) =
      loading_search;

  factory ExploreCubitState.loadedWhatsHot(
          {required final List<ListExploreItemModel> exploreWhatsHotList}) =
      LoadedWhatsHotState;

  factory ExploreCubitState.loadedUnicorn(
          {required final List<ListExploreItemModel> exploreUnircornList}) =
      LoadedUnicornState;

  factory ExploreCubitState.loadedStaff(
          {required final List<ListExploreItemModel> exploreStaffList}) =
      LoadedStaffState;

  factory ExploreCubitState.error(final String message) = ErrorExploreState;
}
