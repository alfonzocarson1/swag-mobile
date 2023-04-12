import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:swagapp/modules/models/search/catalog_item_model.dart';

import '../../common/utils/handling_errors.dart';
import '../../data/favorite_profile/i_favorite_profile_service.dart';

part 'profile_favorite_bloc.freezed.dart';
part 'profile_favorite_event.dart';
part 'profile_favorite_state.dart';

class ProfileFavoriteBloc extends Bloc<FavoriteEvent, FavoriteState> {
  final IFavoriteProfileService favoriteService;

  ProfileFavoriteBloc(this.favoriteService) : super(FavoriteState.initial()) {
    add(const FavoriteEvent.getFavoriteItem());
  }

  Stream<FavoriteState> get authStateStream async* {
    yield state;
    yield* stream;
  }

  @override
  Stream<FavoriteState> mapEventToState(FavoriteEvent event) async* {
    yield* event.when(
      getFavoriteItem: _getFavoriteItem,
    );
  }

  Stream<FavoriteState> _getFavoriteItem() async* {
    yield FavoriteState.initial();
    try {
      await Future.delayed(const Duration(milliseconds: 2000), () {});
      // await searchService.getCatatogItems();
      final responseBody = [
        {
          "catalogItemId": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
          "catalogItemName": "SUNDAY SKULL BLADE 015",
          "catalogItemImage":
              "https://firebasestorage.googleapis.com/v0/b/platzitrips-c4e10.appspot.com/o/Rectangle%2012.png?alt=media&token=47e348c2-35a6-488d-b715-300752b0f52b",
          "numberAvailable": 2,
          "saleInfo": {
            "minPrice": "25.88",
            "maxPrice": "25.88",
            "lastSale": "25.88",
            "percentageLastSale": null
          },
          "forSale": false,
          "inFavorites": false,
          "inCollection": false,
          "collectionItems": []
        },
        {
          "catalogItemId": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
          "catalogItemName": "SUNDAY SKULL BLADE 015",
          "catalogItemImage":
              "https://firebasestorage.googleapis.com/v0/b/platzitrips-c4e10.appspot.com/o/Rectangle%2012.png?alt=media&token=47e348c2-35a6-488d-b715-300752b0f52b",
          "numberAvailable": 2,
          "saleInfo": {
            "minPrice": "25.88",
            "maxPrice": "25.88",
            "lastSale": "25.88",
            "percentageLastSale": null
          },
          "forSale": false,
          "inFavorites": false,
          "inCollection": false,
          "collectionItems": []
        },
        {
          "catalogItemId": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
          "catalogItemName": "SUNDAY SKULL BLADE 015",
          "catalogItemImage":
              "https://firebasestorage.googleapis.com/v0/b/platzitrips-c4e10.appspot.com/o/Rectangle%2012.png?alt=media&token=47e348c2-35a6-488d-b715-300752b0f52b",
          "numberAvailable": 2,
          "saleInfo": {
            "minPrice": "25.88",
            "maxPrice": "25.88",
            "lastSale": "25.88",
            "percentageLastSale": null
          },
          "forSale": false,
          "inFavorites": false,
          "inCollection": false,
          "collectionItems": []
        },
        {
          "catalogItemId": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
          "catalogItemName": "SUNDAY SKULL BLADE 015",
          "catalogItemImage":
              "https://firebasestorage.googleapis.com/v0/b/platzitrips-c4e10.appspot.com/o/Rectangle%2012.png?alt=media&token=47e348c2-35a6-488d-b715-300752b0f52b",
          "numberAvailable": 2,
          "saleInfo": {
            "minPrice": "25.88",
            "maxPrice": "25.88",
            "lastSale": "25.88",
            "percentageLastSale": null
          },
          "forSale": false,
          "inFavorites": false,
          "inCollection": false,
          "collectionItems": []
        },
        {
          "catalogItemId": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
          "catalogItemName": "SUNDAY SKULL BLADE 015",
          "catalogItemImage":
              "https://firebasestorage.googleapis.com/v0/b/platzitrips-c4e10.appspot.com/o/Rectangle%2012.png?alt=media&token=47e348c2-35a6-488d-b715-300752b0f52b",
          "numberAvailable": 2,
          "saleInfo": {
            "minPrice": "25.88",
            "maxPrice": "25.88",
            "lastSale": "25.88",
            "percentageLastSale": null
          },
          "forSale": false,
          "inFavorites": false,
          "inCollection": false,
          "collectionItems": []
        },
        {
          "catalogItemId": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
          "catalogItemName": "SUNDAY SKULL BLADE 015",
          "catalogItemImage":
              "https://firebasestorage.googleapis.com/v0/b/platzitrips-c4e10.appspot.com/o/Rectangle%2012.png?alt=media&token=47e348c2-35a6-488d-b715-300752b0f52b",
          "numberAvailable": 2,
          "saleInfo": {
            "minPrice": "25.88",
            "maxPrice": "25.88",
            "lastSale": "25.88",
            "percentageLastSale": null
          },
          "forSale": false,
          "inFavorites": false,
          "inCollection": false,
          "collectionItems": []
        }
      ];
      final response =
          responseBody.map((i) => CatalogItemModel.fromJson(i)).toList();
      yield FavoriteState.loadedFavoriteItems(dataFavoriteList: response);
    } catch (e) {
      yield FavoriteState.error(HandlingErrors().getError(e));
    }
  }
}
