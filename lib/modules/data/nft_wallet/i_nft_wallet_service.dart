import 'package:swagapp/modules/models/nft_wallet/nft_wallet.dart';

abstract class INftWalletService {
  Future<List<NftWalletModel>> getNftWallets();
}
