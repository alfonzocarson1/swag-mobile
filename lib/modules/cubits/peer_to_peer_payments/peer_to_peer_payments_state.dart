part of 'peer_to_peer_payments_cubit.dart';

@freezed
class PeerToPeerPaymentsState with _$PeerToPeerPaymentsState {
  const factory PeerToPeerPaymentsState.initial() = _Initial;

  const factory PeerToPeerPaymentsState.loading(
      {@Default(false) bool isFirstFetch}) = loading_page;

  factory PeerToPeerPaymentsState.updatePaymentList() = UpdatePaymentList;

  factory PeerToPeerPaymentsState.loadedPaymentsSaved({
    required final List<BuyForSaleListingResponseModel> saledItemdList,
  }) = LoadedBuyPeerToPeerPaymentsState;

  factory PeerToPeerPaymentsState.error(final String message) =
      ErrorPeerToPeerPaymentsState;
}
