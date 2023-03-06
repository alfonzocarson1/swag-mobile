import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../common/utils/handling_errors.dart';
import '../../data/sale_history/i_sale_history_service.dart';
import '../../models/detail/sale_list_history_model.dart';

part 'sale_history_bloc.freezed.dart';
part 'sale_history_event.dart';
part 'sale_history_state.dart';

class SalesHistoryBloc extends Bloc<SalesHistoryEvent, SalesHistoryState> {
  final ISalesHistoryService salesHistoryService;

  SalesHistoryBloc(this.salesHistoryService)
      : super(SalesHistoryState.initial());

  Stream<SalesHistoryState> get authStateStream async* {
    yield state;
    yield* stream;
  }

  @override
  Stream<SalesHistoryState> mapEventToState(SalesHistoryEvent event) async* {
    yield* event.when(
      getSalesHistory: _getSalesHistory,
    );
  }

  Stream<SalesHistoryState> _getSalesHistory(String itemId) async* {
    yield SalesHistoryState.initial();
    try {
      SalesHistoryListModel responseBody =
          await salesHistoryService.salesHistory(itemId);

      yield SalesHistoryState.loadedSalesHistory(
          detaSalesHistoryList: [responseBody]);
    } catch (e) {
      yield SalesHistoryState.error(HandlingErrors().getError(e));
    }
  }
}
