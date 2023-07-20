import 'package:swagapp/modules/api/api_service.dart';
import 'package:swagapp/modules/data/nft_wallet/i_nft_wallet_service.dart';
import 'package:swagapp/modules/models/nft_wallet/nft_wallet.dart';

import '../../api/api.dart';

class NftWalletService extends INftWalletService {
  final APIService _apiService;

  NftWalletService(this._apiService);

  @override
  Future<List<NftWalletModel>> getNftWallets() async {
    List<NftWalletModel> response = await _apiService.getEndpointData(
      endpoint: Endpoint.nftWallet,
      method: RequestMethod.get,
      needBearer: true,
      fromJsonList: NftWalletModel.fromJsonList,
    );

    return response;
  }
}
