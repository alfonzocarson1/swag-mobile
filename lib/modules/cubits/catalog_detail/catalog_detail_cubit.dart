import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../common/utils/handling_errors.dart';
import '../../data/detail/i_detail_service.dart';

part 'catalog_detail_state.dart';
part 'catalog_detail_cubit.freezed.dart';

class CatalogDetailCubit extends Cubit<CatalogDetailState> {
  final IDetailService catalogDetailService;
  CatalogDetailCubit(this.catalogDetailService)
      : super(const CatalogDetailState.initial());

  Future<void> notifyAvailability(String catalogoId) async {
    try {
      var response = await catalogDetailService.notifyAvailability(catalogoId);

      if (response['errorCode'] == '203') {
        emit(ErrorCatalogDetailState(response['errorMessage']));
      }

      // emit(const CatalogDetailState.willBeNotified());
    } catch (error) {
      emit(ErrorCatalogDetailState(HandlingErrors().getError(error)));
    }
  }
}
