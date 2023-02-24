part of 'detail_bloc.dart';

@freezed
class DetailEvent with _$DetailEvent {
  const factory DetailEvent.getDetailItem(String itemId) = _GetDetailItem;
}
