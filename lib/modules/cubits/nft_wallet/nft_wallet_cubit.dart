import 'package:bloc/bloc.dart';
import 'package:flutter/cupertino.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:swagapp/modules/data/nft_wallet/i_nft_wallet_service.dart';
import 'package:swagapp/modules/models/nft_wallet/nft_wallet.dart';
import 'package:swagapp/modules/models/ui_models/async_operation.dart';
import 'package:swagapp/modules/models/ui_models/async_value.dart';

import '../../data/shared_preferences/shared_preferences_service.dart';

part 'nft_wallet_cubit.freezed.dart';

typedef NftWalletsAsyncValue = AsyncValue<List<NftWalletModel>>;

@freezed
class NftWalletState with _$NftWalletState {
  const factory NftWalletState({
    @Default(NftWalletsAsyncValue.loading())
    final NftWalletsAsyncValue wallets,
    @Default(AsyncOperation.idle())
    final AsyncOperation<NftWalletModel> creatingWallet,
    @Default(AsyncOperation.idle())
    final AsyncOperation<NftWalletModel> verifyingWallet,
  }) = _NftWalletState;
}

class NftWalletCubit extends Cubit<NftWalletState> {
  final INftWalletService _nftWalletService;
  final PreferenceRepositoryService _preferenceRepositoryService;

  NftWalletCubit(
    this._nftWalletService,
    this._preferenceRepositoryService,
  ) : super(const NftWalletState());

  Future<void> loadWallets() async {
    emit(state.copyWith(
      wallets: AsyncValue.loading(state.wallets.dataOrPreviousData),
    ));
    try {
      final accountId = _preferenceRepositoryService.profileData().accountId;
      final wallets = await _nftWalletService.getNftWallets(accountId);
      emit(state.copyWith(
        wallets: AsyncValue.loaded(wallets),
      ));
    } catch (e, stk) {
      debugPrintStack(
        stackTrace: stk,
        label: e.toString(),
      );
      emit(state.copyWith(
        wallets: AsyncValue.error(e),
      ));
    }
  }

  Future<void> clearCreateNftWalletState() async {
    emit(state.copyWith(
      creatingWallet: const AsyncOperation.idle(),
    ));
  }

  Future<void> createNftWallet(String walletAddress) async {
    emit(state.copyWith(
      creatingWallet: AsyncOperation.loading(),
    ));
    try {
      final accountId = _preferenceRepositoryService.profileData().accountId;
      final wallet =
      await _nftWalletService.createNftWallet(accountId, walletAddress);
      loadWallets();
      emit(state.copyWith(
        creatingWallet: AsyncOperation.loaded(wallet),
      ));
    } catch (e, stk) {
      debugPrintStack(
        stackTrace: stk,
        label: e.toString(),
      );
      emit(state.copyWith(
        creatingWallet: AsyncOperation.error(e),
      ));
    }
  }

  Future<void> clearVerifyNftWalletState() async {
    emit(state.copyWith(
      creatingWallet: const AsyncOperation.idle(),
    ));
  }

  Future<void> verifyNftWallet(String walletAddress) async {
    emit(state.copyWith(
      verifyingWallet: AsyncOperation.loading(),
    ));
    try {
      final accountId = _preferenceRepositoryService.profileData().accountId;
      final wallet =
      await _nftWalletService.verifyNftWallet(accountId, walletAddress);
      loadWallets();
      emit(state.copyWith(
        verifyingWallet: AsyncOperation.loaded(wallet),
      ));
    } catch (e, stk) {
      debugPrintStack(
        stackTrace: stk,
        label: e.toString(),
      );
      emit(state.copyWith(
        verifyingWallet: AsyncOperation.error(e),
      ));
    }
  }
}
