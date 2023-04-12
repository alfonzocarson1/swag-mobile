import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:swagapp/modules/models/search/catalog_item_model.dart';

import '../../common/utils/handling_errors.dart';
import '../../data/sold/i_sold_service.dart';

part 'sold_bloc.freezed.dart';
part 'sold_event.dart';
part 'sold_state.dart';

class SoldBloc extends Bloc<SoldEvent, SoldState> {
  final ISoldService soldService;

  SoldBloc(this.soldService) : super(SoldState.initial()) {
    add(const SoldEvent.getSoldItem());
  }

  Stream<SoldState> get authStateStream async* {
    yield state;
    yield* stream;
  }

  @override
  Stream<SoldState> mapEventToState(SoldEvent event) async* {
    yield* event.when(
      getSoldItem: _getSoldItem,
    );
  }

  Stream<SoldState> _getSoldItem() async* {
    yield SoldState.initial();
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
      yield SoldState.loadedSoldItems(dataSoldList: response);
    } catch (e) {
      yield SoldState.error(HandlingErrors().getError(e));
    }
  }
}
