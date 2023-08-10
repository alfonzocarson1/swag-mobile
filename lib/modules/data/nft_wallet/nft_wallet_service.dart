import 'package:swagapp/modules/api/api_service.dart';
import 'package:swagapp/modules/data/nft_wallet/i_nft_wallet_service.dart';
import 'package:swagapp/modules/models/nft_wallet/nft_wallet.dart';

import '../../api/api.dart';

class NftWalletService extends INftWalletService {
  final APIService _apiService;

  NftWalletService(this._apiService);

  @override
  Future<List<NftWalletModel>> getNftWallets(String accountId) async {
    List<NftWalletModel> response = await _apiService.getEndpointData(
      endpoint: Endpoint.userWallets,
      method: RequestMethod.post,
      body: {
        "accountId": accountId,
      },
      needBearer: true,
      extractFromJsonKey: "wallets",
      fromJsonList: NftWalletModel.fromJsonList,
    );

    return response;
  }

  @override
  Future<NftWalletModel> verifyNftWallet(String accountId, String walletNft) async {
    NftWalletModel response = await _apiService.getEndpointData(
      endpoint: Endpoint.verifyWallet,
      method: RequestMethod.post,
      body: {
        "accountId": accountId,
        "walletAddress": walletNft,
      },
      needBearer: true,
      fromJson: NftWalletModel.fromJson,
    );

    return response;
  }

  @override
  Future<NftWalletModel> createNftWallet(String accountId, String walletNft) async {
    NftWalletModel response = await _apiService.getEndpointData(
      endpoint: Endpoint.createOrUpdateWallet,
      method: RequestMethod.post,
      body: {
        "accountId": accountId,
        "walletAddress": walletNft,
      },
      needBearer: true,
      fromJson: NftWalletModel.fromJson,
    );

    return response;
  }
}
