part of 'sale_history_bloc.dart';

@freezed
class SalesHistoryEvent with _$SalesHistoryEvent {
  const factory SalesHistoryEvent.getSalesHistory(String itemId) =
      _GetSalesHistoryItem;
}
