import 'dart:async';
import 'dart:convert';

import 'package:swagapp/modules/data/search/i_search_service.dart';
import 'package:swagapp/modules/models/search/catalog_item_model.dart';
import 'package:swagapp/modules/models/search/category_model.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:swagapp/modules/models/search/search_response_model.dart';

import '../../common/utils/handling_errors.dart';
import '../../data/shared_preferences/shared_preferences_service.dart';
import '../../di/injector.dart';

part 'search_bloc.freezed.dart';
part 'search_event.dart';
part 'search_state.dart';

class SearchBloc extends Bloc<SearchEvent, SearchState> {
  final ISearchService searchService;

  SearchBloc(this.searchService) : super(SearchState.initial());

  Stream<SearchState> get authStateStream async* {
    yield state;
    yield* stream;
  }

  @override
  Stream<SearchState> mapEventToState(SearchEvent event) async* {
    yield* event.when(
        getCategories: _getCategories, reset: _reset, search: _search);
  }

  Stream<SearchState> _reset() async* {
    // await _searchStreamSubscription?.cancel();
    // yield SearchState.recentSearch(queries: _getSearchQuerySuggestion());
  }

  Stream<SearchState> _getCategories() async* {
    yield SearchState.initial();
    try {
      await Future.delayed(const Duration(milliseconds: 2000), () {});
      // await searchService.getCategories();
      final responseBody = {
        "categoryList": [
          {
            "catalogCategoryId": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
            "categoryName": "string"
          },
        ]
      };
      final response = (json.decode(responseBody.toString()) as List)
          .map((i) => CategoryModel.fromJson(i))
          .toList();
      yield SearchState.loadedCategories(categoryList: response);
    } catch (e) {
      yield SearchState.error(HandlingErrors().getError(e));
    }
  }

  Stream<SearchState> _search(final String term) async* {
    // if (state.query == term) return;
    yield SearchState.initial();

    // const tab = SearchTab.all;
    // yield SearchState.searching(query: term, tab: tab);
    try {
      await Future.delayed(const Duration(milliseconds: 2000), () {});
      // await searchService.getCatatogItems();
      final responseBody = {
        "recentList": [
          "Skulls",
          "Royals 8-bit",
          "Royals 8-bit",
          "Royals 8-bit",
          "Royals 8-bit",
          "Royals 8-bit",
          "Royals 8-bit",
          "Royals 8-bit",
          "Royals 8-bit",
          "Royals 8-bit"
        ],
        "savedList": ["Skulls", "Royals 8-bit"],
        "catalogList": [
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
            "totalMade": 0,
            "retail": "string",
            "sale": true,
            "lastSale": "FOR SALE: \$360.00 - \$380.00",
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
        ]
      };
      final response = SearchResponseModel.fromJson(responseBody);
      getIt<PreferenceRepositoryService>()
          .saveRecentSearches(response.recentList);
      yield SearchState.result(
          result: {SearchTab.all: response.catalogList}, query: term);
    } catch (e) {
      yield SearchState.error(HandlingErrors().getError(e));
    }
  }
}
