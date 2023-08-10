import 'package:swagapp/modules/models/nft_wallet/nft_wallet.dart';

abstract class INftWalletService {
  Future<List<NftWalletModel>> getNftWallets(String accountId);
  Future<NftWalletModel> verifyNftWallet(String accountId, String walletNft);
  Future<NftWalletModel> createNftWallet(String accountId, String walletNft);
}
