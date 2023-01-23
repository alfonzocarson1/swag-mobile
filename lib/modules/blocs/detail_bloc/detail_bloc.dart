import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../common/utils/handling_errors.dart';
import '../../data/detail/i_detail_service.dart';
import '../../models/detail/detail_item_model.dart';

part 'detail_bloc.freezed.dart';
part 'detail_event.dart';
part 'detail_state.dart';

class DetailBloc extends Bloc<DetailEvent, DetailState> {
  final IDetailService detailService;

  DetailBloc(this.detailService) : super(DetailState.initial()) {
    add(const DetailEvent.getDetailItem());
  }

  Stream<DetailState> get authStateStream async* {
    yield state;
    yield* stream;
  }

  @override
  Stream<DetailState> mapEventToState(DetailEvent event) async* {
    yield* event.when(
      getDetailItem: _getDetailItem,
    );
  }

  Stream<DetailState> _getDetailItem() async* {
    yield DetailState.initial();
    try {
      await Future.delayed(const Duration(milliseconds: 2000), () {});
      // await searchService.getCatatogItems();
      final responseBody = [
        {
          "catalogItemId": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
          "catalogItemImage":
              "https://firebasestorage.googleapis.com/v0/b/platzitrips-c4e10.appspot.com/o/Rectangle%2012%20(1).png?alt=media&token=00355e6f-7046-4f5f-9797-cc7610cab9fe",
          "catalogItemName": "FIFTEEN MILLION DOLLAR BLADE 3.0",
          "catalogItemDescription":
              "The winner of this week's final playoff event will receive an insane 15 Million payday...you also have a chance for a payday if you are one of the 36 randomly chosen to have an opportunity to buy this year's 15M Bill Cover! View more details",
          "catalogItemCategoryId": "3fa85f64-5717-4562-b3fc-2c963f66afa6",
          "released": "08/04/2022",
          "totalMade": 36,
          "retail": "\$425.00",
          "releasedType": "Tour",
          "lastSale": "\$455.00",
          "numberAvailable": 3,
          "rarityScore": ["RARE"],
          "attributeItemList": [
            {
              "catalogItemColor": "String",
              "catalogItemLimit": "String",
              "catalogItemIncludes": "String"
            }
          ],
          "myCollection": [
            {"acquired": "2023-01-11T16:36:21.092Z", "paid": "string"}
          ],
          "saleHistory": [],
          "similarItemList": [
            {
              "catalogItemImage":
                  "https://firebasestorage.googleapis.com/v0/b/platzitrips-c4e10.appspot.com/o/Rectangle%2012%20(1).png?alt=media&token=00355e6f-7046-4f5f-9797-cc7610cab9fe",
              "catalogItemId": "3fa85f64-5717-4562-b3fc-2c963f66afa8",
              "catalogItemName": "EL GRANDE SHERBET BLADE",
              "retail": "\$675.00"
            },
            {
              "catalogItemImage":
                  "https://firebasestorage.googleapis.com/v0/b/platzitrips-c4e10.appspot.com/o/Rectangle%2012%20(2).png?alt=media&token=87cbb86a-1a34-4344-92a4-adf0648b7ecf",
              "catalogItemId": "3fa85f64-5717-4562-b3fc-2c963f66afa8",
              "catalogItemName": "WASTED SKULL BLADE COVER",
              "retail": "\$675.00"
            },
          ],
        }
      ];
      final response =
          responseBody.map((i) => DetailItemModel.fromJson(i)).toList();
      yield DetailState.loadedDetailItems(detaItemlList: response);
    } catch (e) {
      yield DetailState.error(HandlingErrors().getError(e));
    }
  }
}
