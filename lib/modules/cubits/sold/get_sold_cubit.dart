import 'package:bloc/bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../common/utils/handling_errors.dart';

import '../../data/sold/i_sold_service.dart';
import '../../models/sold/product_item_sold.dart';

part 'get_sold_state.dart';
part 'get_sold_cubit.freezed.dart';

class SoldProfileCubit extends Cubit<SoldCubitState> {
  final ISoldService soldService;
  SoldProfileCubit(this.soldService) : super(const SoldCubitState.initial());

  Future<void> loadSoldList() async {
    emit(
      const _Initial(),
    );
    try {
      final response = await soldService.getProductItemsSold();
      emit(LoadedSoldItemState(dataSoldList: response));
    } catch (error) {
      emit(
        ErrorSoldState(HandlingErrors().getError(error)),
      );
    }
  }
}
