import 'dart:async';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:freezed_annotation/freezed_annotation.dart';

import '../../common/utils/handling_errors.dart';
import '../../data/sale_history/i_sale_history_service.dart';
import '../../models/detail/sale_history_model.dart';

part 'sale_history_bloc.freezed.dart';
part 'sale_history_event.dart';
part 'sale_history_state.dart';

class SalesHistoryBloc extends Bloc<SalesHistoryEvent, SalesHistoryState> {
  final ISalesHistoryService salesHistoryService;

  SalesHistoryBloc(this.salesHistoryService)
      : super(SalesHistoryState.initial()) {
    add(const SalesHistoryEvent.getSalesHistory());
  }

  Stream<SalesHistoryState> get authStateStream async* {
    yield state;
    yield* stream;
  }

  @override
  Stream<SalesHistoryState> mapEventToState(SalesHistoryEvent event) async* {
    yield* event.when(
      getSalesHistory: _getSalesHistory,
    );
  }

  Stream<SalesHistoryState> _getSalesHistory() async* {
    yield SalesHistoryState.initial();
    try {
      await Future.delayed(const Duration(milliseconds: 2000), () {});
      // await searchService.getCatatogItems();
      final responseBody = [
        {
          "salesPriceHistoryId": "c1aa1dd8-1385-460c-aaee-6895f5e5c5f5",
          "productItemId": "a434e065-6bc6-490e-9e26-ea1b348b0003",
          "productItemName": "Product 5",
          "productItemPrice": 14.99,
          "productItemImage": "https://example.com/image5.jpg",
          "lastSale": 9.99,
          "condition": "Displayed",
          "updatedDate": "2022-02-08T20:30:00.000+00:00"
        },
        {
          "salesPriceHistoryId": "6c10b7e2-474d-4417-8c20-2d1b38156bc2",
          "productItemId": "a434e065-6bc6-490e-9e26-ea1b348b0003",
          "productItemName": "Product 6",
          "productItemPrice": 49.99,
          "productItemImage": "https://example.com/image6.jpg",
          "lastSale": 34.99,
          "condition": "Sealed",
          "updatedDate": "2022-02-10T16:00:00.000+00:00"
        },
        {
          "salesPriceHistoryId": "3a318816-31f6-415d-8d20-08d9b0139c6a",
          "productItemId": "a434e065-6bc6-490e-9e26-ea1b348b0003",
          "productItemName": "Product 11",
          "productItemPrice": 129.99,
          "productItemImage": "https://example.com/image7.jpg",
          "lastSale": 99.99,
          "condition": "Gamed",
          "updatedDate": "2023-02-13T19:28:50.000+00:00"
        }
      ];
      final response =
          responseBody.map((i) => SalesHistoryModel.fromJson(i)).toList();
      yield SalesHistoryState.loadedSalesHistory(
          detaSalesHistoryList: response);
    } catch (e) {
      yield SalesHistoryState.error(HandlingErrors().getError(e));
    }
  }
}
