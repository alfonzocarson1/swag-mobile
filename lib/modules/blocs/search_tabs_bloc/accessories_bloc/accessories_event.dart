part of 'accessories_bloc.dart';

@freezed
class SearchAccessoriesEvent with _$SearchAccessoriesEvent {
  const factory SearchAccessoriesEvent.search(
          SearchRequestPayloadModel payload, FiltersPayload param) =
      _SearchAccessoriesEvent;
}
