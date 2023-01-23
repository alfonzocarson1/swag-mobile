part of 'detail_bloc.dart';

@freezed
class DetailState with _$DetailState {
  DetailState._();

  factory DetailState.initial() = _InitialDetailState;
  factory DetailState.error(final String message) = _ErrorDetailState;
  factory DetailState.loadedDetailItems({
    required final List<DetailItemModel> detaItemlList,
  }) = LoadedDetailItemState;
}
