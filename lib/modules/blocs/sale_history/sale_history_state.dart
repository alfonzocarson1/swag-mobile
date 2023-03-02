part of 'sale_history_bloc.dart';

@freezed
class SalesHistoryState with _$SalesHistoryState {
  SalesHistoryState._();

  factory SalesHistoryState.initial() = _InitialSalesHistoryState;
  factory SalesHistoryState.error(final String message) =
      _ErrorSalesHistoryState;
  factory SalesHistoryState.loadedSalesHistory({
    required final List<SalesHistoryModel> detaSalesHistoryList,
  }) = LoadedSalesHistoryState;
}
