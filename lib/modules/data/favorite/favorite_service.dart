import 'package:swagapp/modules/api/api.dart';

import '../../api/api_service.dart';
import '../../models/favorite/favorite_model.dart';
import '../../models/favorite/profile_favorite_list.dart';
import 'i_favorite_service.dart';

class FavoriteService extends IFavoriteService {
  FavoriteService(this.apiService);

  final APIService apiService;

  @override
  Stream<String?> subscribeToAuthChanges() => Stream.value(null);

  @override
  Future<FavoriteModel> addFavorite(FavoriteModel model) async {
    FavoriteModel response = await apiService.getEndpointData(
        endpoint: Endpoint.favoriteFlow,
        method: RequestMethod.put,
        needBearer: true,
        body: model.toJson(),
        fromJson: (json) => FavoriteModel.fromJson(json));
    return response;
  }

  @override
  Future<FavoriteModel> removeFavorite(FavoriteModel model) async {
    FavoriteModel response = await apiService.getEndpointData(
        endpoint: Endpoint.favoriteFlow,
        method: RequestMethod.delete,
        needBearer: true,
        body: model.toJson(),
        fromJson: (json) => FavoriteModel.fromJson(json));
    return response;
  }

  @override
  Future<ListFavoriteProfileResponseModel> getFavorites() async {
    ListFavoriteProfileResponseModel response =
        await apiService.getEndpointData(
      endpoint: Endpoint.favoriteFlow,
      method: RequestMethod.get,
      jsonKey: "favoriteList",
      needBearer: true,
      fromJson: (json) => ListFavoriteProfileResponseModel.fromJson(json),
    );
    return response;
  }
}
