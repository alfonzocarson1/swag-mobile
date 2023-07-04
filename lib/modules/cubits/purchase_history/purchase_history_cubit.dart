import 'package:bloc/bloc.dart';
import 'package:flutter/foundation.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:swagapp/modules/data/purchase_history/i_purchase_history_service.dart';
import 'package:swagapp/modules/models/purchase_history/purchase_history_model.dart';

part 'purchase_history_cubit.freezed.dart';

@freezed
class PurchaseHistoryState with _$PurchaseHistoryState {
  const PurchaseHistoryState._();

  const factory PurchaseHistoryState.loading({
    PurchaseHistoryModel? loadedData,
  }) = _Loading;
  const factory PurchaseHistoryState.loaded(PurchaseHistoryModel model) =
      _Loaded;
  const factory PurchaseHistoryState.error(
    String error, {
    PurchaseHistoryModel? loadedData,
  }) = _Error;

  bool get isLoading => this is _Loading;
  bool get isLoaded => this is _Loaded;
}

class PurchaseHistoryCubit extends Cubit<PurchaseHistoryState> {
  final IPurchaseHistoryService _purchaseHistoryService;

  PurchaseHistoryCubit(this._purchaseHistoryService)
      : super(const PurchaseHistoryState.loading());

  // emit loading while saving already loaded data
  void _emitLoading() {
    PurchaseHistoryModel? loadedData = state.when(
      loading: (loadedData) => loadedData,
      error: (error, loadedData) => loadedData,
      loaded: (model) => model,
    );
    emit(PurchaseHistoryState.loading(
      loadedData: loadedData,
    ));
  }

  // emit error while saving already loaded data
  void _emitError(String error) {
    PurchaseHistoryModel? loadedData = state.when(
      loading: (loadedData) => loadedData,
      error: (error, loadedData) => loadedData,
      loaded: (model) => model,
    );
    emit(PurchaseHistoryState.error(
      error,
      loadedData: loadedData,
    ));
  }

  Future<void> loadPurchaseHistory() async {
    _emitLoading();

    try {
      final model = await _purchaseHistoryService.purchaseHistory();
      emit(PurchaseHistoryState.loaded(model));
    } catch (e) {
      debugPrint(e.toString());
      _emitError(e.toString());
    }
  }
}
