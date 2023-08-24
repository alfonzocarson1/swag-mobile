import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swagapp/modules/data/kyc/kyc_service.dart';
import 'package:swagapp/modules/models/kyc/kyc_session.dart';
import 'package:swagapp/modules/models/ui_models/async_operation.dart';

typedef KycCubitState = AsyncOperation<KycSession>;

class KycCubit extends Cubit<AsyncOperation<KycSession>> {
  final KycService _kycService;

  KycCubit(this._kycService) : super(const AsyncOperation.idle());

  Future<void> createKycSession() async {
    emit(AsyncOperation.loading());
    try {
      final session = await _kycService.createKycSession();
      emit(AsyncOperation.loaded(session));
    } catch (e, stk) {
      debugPrintStack(
        label: e.toString(),
        stackTrace: stk,
      );
      emit(AsyncOperation.error(e));
    }
  }
}
