import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

part 'page_from_explore_state.dart';
part 'page_from_explore_cubit.freezed.dart';

class PageFromExploreCubit extends Cubit<PageFromExploreState> {
  PageFromExploreCubit() : super(const PageFromExploreState.initial());

  Future<void> loadResults(int page) async {
    emit(PageFromExploreState.changeTabPage(page));
  }
}
