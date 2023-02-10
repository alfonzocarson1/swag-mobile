part of 'sold_bloc.dart';

@freezed
class SoldState with _$SoldState {
  SoldState._();

  factory SoldState.initial() = _InitialSoldState;
  factory SoldState.error(final String message) = _ErrorSoldState;
  factory SoldState.loadedSoldItems({
    required final List<CatalogItemModel> dataSoldList,
  }) = LoadedSoldItemState;
}
