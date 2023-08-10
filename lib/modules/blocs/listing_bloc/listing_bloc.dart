import 'dart:async';
import 'dart:io';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:image_picker/image_picker.dart';
import 'package:swagapp/modules/models/search/catalog_item_model.dart';

import '../../common/utils/handling_errors.dart';
import '../../cubits/listing_for_sale/get_listing_for_sale_cubit.dart';
import '../../data/listing/i_listing_service.dart';
import '../../di/injector.dart';
import '../../models/listing_for_sale/listing_for_sale_model.dart';

part 'listing_bloc.freezed.dart';
part 'listing_event.dart';
part 'listing_state.dart';

class ListingBloc extends Bloc<ListingEvent, ListingState> {
  final IListingService listingService;

  ListingBloc(this.listingService) : super(ListingState.initial());
  Stream<ListingState> get authStateStream async* {
    yield state;
    yield* stream;
  }

  @override
  Stream<ListingState> mapEventToState(ListingEvent event) async* {
    yield* event.when(
        getListingItem: _getListingItem, createListing: _createListing);
  }

  Stream<ListingState> _createListing(
      ListingForSaleModel param, List<File> imgList) async* {
    yield ListingState.initial();
    try {
      ListingForSaleModel responseBody =
          await listingService.createListing(param);

      for (var i = 0; i < imgList.length; i++) {
        await listingService.uploadListingImage(
            await File(imgList[i].path).readAsBytes(),
            responseBody.productItemId ?? '',
            responseBody,
            false);
      }

      getIt<ListingProfileCubit>().loadResults();
      yield ListingState.loadedListingSuccess(responseBody);
    } catch (e) {
      yield ListingState.error(HandlingErrors().getError(e));
    }
  }

  Stream<ListingState> _getListingItem() async* {
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
      yield ListingState.loadedListingItems(dataListingList: response);
    } catch (e) {
      yield ListingState.error(HandlingErrors().getError(e));
    }
  }
}
