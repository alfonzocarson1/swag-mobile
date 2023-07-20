import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:swagapp/modules/data/nft_wallet/i_nft_wallet_service.dart';
import 'package:swagapp/modules/models/nft_wallet/nft_wallet.dart';
import 'package:swagapp/modules/models/ui_models/async_value.dart';

typedef NftWalletState = AsyncValue<List<NftWalletModel>>;

class NftWalletCubit extends Cubit<NftWalletState> {
  final INftWalletService _nftWalletService;
  NftWalletCubit(
    this._nftWalletService,
  ) : super(const NftWalletState.loading());

  Future<void> loadWallets() async {
    emit(const AsyncValue.loading());
    try {
      final wallets = await _nftWalletService.getNftWallets();
      emit(AsyncValue.loaded(wallets));
    } catch (e, stk) {
      debugPrintStack(
        stackTrace: stk,
        label: e.toString(),
      );
      emit(AsyncValue.error(e));
    }
  }
}
