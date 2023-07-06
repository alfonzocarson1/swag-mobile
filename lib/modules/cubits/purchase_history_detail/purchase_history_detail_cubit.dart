import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:swagapp/modules/cubits/purchase_history/purchase_history_cubit.dart';
import 'package:swagapp/modules/data/purchase_history/i_purchase_history_service.dart';
import 'package:swagapp/modules/models/purchase_history/purchase_history_detail_model.dart';

part 'purchase_history_detail_cubit.freezed.dart';

@freezed
class PurchaseHistoryDetailState with _$PurchaseHistoryDetailState {
  const PurchaseHistoryDetailState._();

  const factory PurchaseHistoryDetailState.loading() = _Loading;
  const factory PurchaseHistoryDetailState.loaded(
      PurchaseHistoryDetailModel model) = _Loaded;
  const factory PurchaseHistoryDetailState.error([String? error]) = _Error;

  bool get isLoading => this is _Loading;
}

class PurchaseHistoryDetailCubit extends Cubit<PurchaseHistoryDetailState> {
  final IPurchaseHistoryService _purchaseHistoryService;

  PurchaseHistoryDetailCubit(this._purchaseHistoryService)
      : super(const PurchaseHistoryDetailState.loading());

  Future<void> loadHistoryDetail(String id) async {
    if (state is! _Loaded) {
      emit(const PurchaseHistoryDetailState.loading());
    }
    try {
      final model = await _purchaseHistoryService.purchaseHistoryDetail(id);
      emit(PurchaseHistoryDetailState.loaded(model));
    } catch (e) {
      debugPrint(e.toString());
      emit(PurchaseHistoryDetailState.error(e.toString()));
    }
  }
}
