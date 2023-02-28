import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../common/utils/handling_errors.dart';
import '../../data/detail/i_detail_service.dart';
import '../../models/detail/detail_item_model.dart';

part 'detail_bloc.freezed.dart';
part 'detail_event.dart';
part 'detail_state.dart';

class DetailBloc extends Bloc<DetailEvent, DetailState> {
  final IDetailService detailService;

  DetailBloc(this.detailService) : super(DetailState.initial()) {
    add(const DetailEvent.getDetailItem(
        '525fc291-cc22-4adb-a9b3-53cb6c621881'));
  }

  Stream<DetailState> get authStateStream async* {
    yield state;
    yield* stream;
  }

  @override
  Stream<DetailState> mapEventToState(DetailEvent event) async* {
    yield* event.when(
      getDetailItem: _getDetailItem,
    );
  }

  Stream<DetailState> _getDetailItem(String itemId) async* {
    yield DetailState.initial();
    try {
      DetailItemModel responseBody = await detailService.itemDetail(itemId);

      yield DetailState.loadedDetailItems(detaItemlList: [responseBody]);
    } catch (e) {
      yield DetailState.error(HandlingErrors().getError(e));
    }
  }
}
