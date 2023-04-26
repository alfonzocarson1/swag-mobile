import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../common/utils/handling_errors.dart';
import '../../data/collection/i_collection_service.dart';

import '../../models/collection/get_list_collection_model.dart';

part 'get_collections_state.dart';
part 'get_collections_cubit.freezed.dart';

class CollectionProfileCubit extends Cubit<CollectionCubitState> {
  final ICollectionService collectionService;
  CollectionProfileCubit(this.collectionService)
      : super(const CollectionCubitState.initial());

  Future<void> loadResults() async {
    emit(
      const _Initial(),
    );
    try {
      ListCollectionProfileResponseModel responseBody =
          await collectionService.getCollection();

      emit(LoadedCollectionsState(profileCollectionList: [responseBody]));
    } catch (error) {
      emit(
        ErrorCollectionState(HandlingErrors().getError(error)),
      );
    }
  }
}
