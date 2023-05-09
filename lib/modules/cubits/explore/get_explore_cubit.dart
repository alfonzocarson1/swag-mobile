import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../common/utils/handling_errors.dart';

import '../../data/explore/i_explore_service.dart';
import '../../models/explore/explore_item_model.dart';
import '../../models/explore/explore_payload_model.dart';
import '../../models/search/catalog_item_model.dart';

part 'get_explore_state.dart';
part 'get_explore_cubit.freezed.dart';

class ExploreCubit extends Cubit<ExploreCubitState> {
  final IExploreService exploreService;
  ExploreCubit(this.exploreService) : super(const ExploreCubitState.initial());

  Future<void> getWhatsHot(ExploreRequestPayloadModel payload) async {
    try {
      ListExploreItemModel response = await exploreService.getExplore(payload);

      emit(LoadedWhatsHotState(exploreWhatsHotList: [response]));
    } catch (error) {
      emit(
        ErrorExploreState(HandlingErrors().getError(error)),
      );
    }
  }

  Future<void> getUnicorn(ExploreRequestPayloadModel payload) async {
    try {
      ListExploreItemModel response = await exploreService.getExplore(payload);

      emit(LoadedUnicornState(exploreUnircornList: [response]));
    } catch (error) {
      emit(
        ErrorExploreState(HandlingErrors().getError(error)),
      );
    }
  }

  Future<void> getStaff(ExploreRequestPayloadModel payload) async {
    try {
      ListExploreItemModel response = await exploreService.getExplore(payload);

      emit(LoadedStaffState(exploreStaffList: [response]));
    } catch (error) {
      emit(
        ErrorExploreState(HandlingErrors().getError(error)),
      );
    }
  }
}
