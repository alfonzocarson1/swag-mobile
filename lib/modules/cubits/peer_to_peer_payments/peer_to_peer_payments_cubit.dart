import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../common/utils/handling_errors.dart';
import '../../data/peer_to_peer_payments/i_peer_to_peer_payments_service.dart';
import '../../data/shared_preferences/shared_preferences_service.dart';
import '../../di/injector.dart';
import '../../models/buy_for_sale_listing/buy_for_sale_listing_response_model.dart';
import '../../models/settings/peer_to_peer_payments_model.dart';

part 'peer_to_peer_payments_state.dart';
part 'peer_to_peer_payments_cubit.freezed.dart';

class PeerToPeerPaymentsCubit extends Cubit<PeerToPeerPaymentsState> {
  final IPeerToPeerPaymentsService peerToPeerPaymentsService;
  PeerToPeerPaymentsCubit(this.peerToPeerPaymentsService)
      : super(const PeerToPeerPaymentsState.initial());

  Future<void> getPyments() async {
    emit(
      const _Initial(),
    );
    try {
      var response = await peerToPeerPaymentsService.getPyments();
      getIt<PreferenceRepositoryService>().savePaymentData(response);
    } catch (error) {
      emit(ErrorPeerToPeerPaymentsState(HandlingErrors().getError(error)));
    }
  }

  Future<void> postPyments(PeerToPeerPaymentsModel model, context) async {
    emit(
      const _Initial(),
    );
    emit(const loading_page(isFirstFetch: true));
    try {
      await peerToPeerPaymentsService.postPyments(model);
      var getResponse = await peerToPeerPaymentsService.getPyments();
      getIt<PreferenceRepositoryService>().savePaymentData(getResponse);
      emit(UpdatePaymentList());
      emit(const loading_page(isFirstFetch: false));
      Navigator.of(context).pop();
    } catch (error) {
      emit(ErrorPeerToPeerPaymentsState(HandlingErrors().getError(error)));
    }
  }
}
