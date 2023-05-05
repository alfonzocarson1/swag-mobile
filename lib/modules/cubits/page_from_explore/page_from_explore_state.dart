part of 'page_from_explore_cubit.dart';

@freezed
class PageFromExploreState with _$PageFromExploreState {
  const factory PageFromExploreState.initial() = _Initial;
  const factory PageFromExploreState.changeTabPage(int tabPage) = _TabPage;
}
