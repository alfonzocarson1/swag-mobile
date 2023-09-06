import 'dart:async';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:swagapp/modules/models/listing_for_sale/listing_for_sale_model.dart';
import 'package:swagapp/modules/models/search/catalog_item_model.dart';

import '../../common/ui/loading.dart';
import '../../common/utils/context_service.dart';
import '../../common/utils/handling_errors.dart';
import '../../cubits/collections/get_collections_cubit.dart';
import '../../cubits/profile/get_profile_cubit.dart';
import '../../data/collection/i_collection_service.dart';
import '../../di/injector.dart';
import '../../models/collection/add_collection_model.dart';
import '../../models/listing_for_sale/profile_listing_model.dart';

part 'collection_bloc.freezed.dart';
part 'collection_event.dart';
part 'collection_state.dart';

class CollectionBloc extends Bloc<CollectionEvent, CollectionState> {
  final ICollectionService collectionService;

  CollectionBloc(this.collectionService) : super(CollectionState.initial());

  Stream<CollectionState> get authStateStream async* {
    yield state;
    yield* stream;
  }

  @override
  Stream<CollectionState> mapEventToState(CollectionEvent event) async* {
    yield* event.when(
        getCollectionItem: _getCollectionItem,
        addCollection: _addCollection,
        removeCollection: _removeCollection,
        getCollectionDetails: _getCollectionDetails,
        getCollectionsDetails: _getCollectionsDetails);
  }

  Stream<CollectionState> _addCollection(AddCollectionModel param) async* {
    BuildContext context =
        getIt<ContextService>().rootNavigatorKey.currentContext!;
    try {
      Loading.show(context);
      AddCollectionModel responseBody =
          await collectionService.addCollection(param);

      getIt<CollectionProfileCubit>().loadResults();
      getIt<ProfileCubit>().loadProfileResults();
      yield CollectionState.loadedCollectionSuccess(responseBody);
    } catch (e) {
      yield CollectionState.error(HandlingErrors().getError(e));
    }
  }

  Stream<CollectionState> _removeCollection(AddCollectionModel param) async* {
    yield CollectionState.initial();
    try {
      AddCollectionModel responseBody =
          await collectionService.removeCollection(param);

      getIt<CollectionProfileCubit>().loadResults();
      getIt<ProfileCubit>().loadProfileResults();
      yield CollectionState.removeCollectionSuccess(responseBody);
    } catch (e) {
      yield CollectionState.error(HandlingErrors().getError(e));
    }
  }

  Stream<CollectionState> _getCollectionDetails(String id) async* {
    yield CollectionState.initial();
    try {
      ListingForSaleProfileResponseModel responseBody =
          await collectionService.getCollectionDetail(id);

      yield CollectionState.loadedCollectionDetail(responseBody);
    } catch (e) {
      yield CollectionState.error(HandlingErrors().getError(e));
    }
  }

  Stream<CollectionState> _getCollectionsDetails(List<String> ids) async* {
    yield CollectionState.initial();
    try {
      List<ListingForSaleModel> list = [];
      for (var id in ids) {
        var data = await collectionService.getCollectionDetail(id);
        if (data.listForSale.isNotEmpty) {
          list.add(data.listForSale.first);
        }
      }

      yield CollectionState.loadedCollectionsDetail(list);
    } catch (e) {
      yield CollectionState.error(HandlingErrors().getError(e));
    }
  }

  Stream<CollectionState> _getCollectionItem() async* {
    yield CollectionState.initial();
    try {
      await Future.delayed(const Duration(milliseconds: 2000), () {});
      // await searchService.getCatatogItems();
      final responseBody = [
        {
          "catalogItemId": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
          "image":
              "https://firebasestorage.googleapis.com/v0/b/platzitrips-c4e10.appspot.com/o/Rectangle%2012.png?alt=media&token=47e348c2-35a6-488d-b715-300752b0f52b",
          "catalogItemName": "SUNDAY SKULL BLADE 015",
          "catalogItemDescription": "string",
          "catalogItemCollections": "string",
          "catalogItemCategoryId": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
          "released": "2023-01-11T15:08:07.018Z",
          "totalMade": 0,
          "retail": "string",
          "sale": false,
          "lastSale": "LAST SALE: N/A",
          "numberAvailable": 0,
          "sku": "string"
        },
        {
          "catalogItemId": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
          "image":
              "https://firebasestorage.googleapis.com/v0/b/platzitrips-c4e10.appspot.com/o/Rectangle%2012%20(1).png?alt=media&token=00355e6f-7046-4f5f-9797-cc7610cab9fe",
          "catalogItemName": "HARLEY QUEEN BLADE SPECIAL",
          "catalogItemDescription": "string",
          "catalogItemCollections": "string",
          "catalogItemCategoryId": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
          "released": "2023-01-11T15:08:07.018Z",
          "totalMade": 0,
          "retail": "string",
          "sale": false,
          "lastSale": "LAST SALE: \$305.00",
          "numberAvailable": 0,
          "sku": "string"
        },
        {
          "catalogItemId": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
          "image":
              "https://firebasestorage.googleapis.com/v0/b/platzitrips-c4e10.appspot.com/o/Rectangle%2012%20(2).png?alt=media&token=87cbb86a-1a34-4344-92a4-adf0648b7ecf",
          "catalogItemName": "FIFTEEN MILLION DOLLAR BLADE 3.0",
          "catalogItemDescription": "string",
          "catalogItemCollections": "string",
          "catalogItemCategoryId": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
          "released": "2023-01-11T15:08:07.018Z",
          "totalMade": 0,
          "retail": "string",
          "sale": false,
          "lastSale": "LAST SALE: \$1,170.00",
          "numberAvailable": 0,
          "sku": "string"
        },
        {
          "catalogItemId": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
          "image":
              "https://firebasestorage.googleapis.com/v0/b/platzitrips-c4e10.appspot.com/o/Rectangle%2012%20(3).png?alt=media&token=9b1f35c7-41a9-48dd-8a08-52f58b1751bf",
          "catalogItemName": "ROBOFLIPPER LAVA COVER",
          "catalogItemDescription": "string",
          "catalogItemCollections": "string",
          "catalogItemCategoryId": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
          "released": "2023-01-11T15:08:07.018Z",
          "totalMade": 0,
          "retail": "string",
          "sale": true,
          "lastSale": "FOR SALE: \$832.00",
          "numberAvailable": 3,
          "sku": "string"
        },
        {
          "catalogItemId": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
          "image":
              "https://firebasestorage.googleapis.com/v0/b/platzitrips-c4e10.appspot.com/o/Rectangle%2012%20(4).png?alt=media&token=8e099a54-c286-48d5-8519-45e9a2284a24",
          "catalogItemName": "GOLDEN KING COVER",
          "catalogItemDescription": "string",
          "catalogItemCollections": "string",
          "catalogItemCategoryId": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
          "released": "2023-01-11T15:08:07.018Z",
          "totalMade": 3,
          "retail": "string",
          "sale": true,
          "lastSale": "FOR SALE: \$360.00",
          "numberAvailable": 1,
          "sku": "string"
        },
        {
          "catalogItemId": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
          "image":
              "https://firebasestorage.googleapis.com/v0/b/platzitrips-c4e10.appspot.com/o/Rectangle%2012%20(5).png?alt=media&token=d0b79d55-5b70-499c-84f7-28019337d84a",
          "catalogItemName": "TACOS COVER",
          "catalogItemDescription": "string",
          "catalogItemCollections": "string",
          "catalogItemCategoryId": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
          "released": "2023-01-11T15:08:07.018Z",
          "totalMade": 0,
          "retail": "string",
          "sale": false,
          "lastSale": "LAST SALE: \$199.00",
          "numberAvailable": 0,
          "sku": "string"
        }
      ];
      final response =
          responseBody.map((i) => CatalogItemModel.fromJson(i)).toList();
      yield CollectionState.loadedCollectionItems(
          dataCollectionlList: response);
    } catch (e) {
      yield CollectionState.error(HandlingErrors().getError(e));
    }
  }
}
