part of 'explore_bloc.dart';

@freezed
class ExploreState with _$ExploreState {
  ExploreState._();

  factory ExploreState.initial() = _InitialExploreState;
  factory ExploreState.error(final String message) = _ErrorExploreState;
  factory ExploreState.loadedExploreItems({
    required final List<ExploreItemModel> exploreList,
  }) = LoadedExploreItemsState;
}
