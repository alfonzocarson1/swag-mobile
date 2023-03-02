part of 'putters_bloc.dart';

@freezed
class SearchPuttersEvent with _$SearchPuttersEvent {
  const factory SearchPuttersEvent.search(
          SearchRequestPayloadModel payload, FiltersPayload param) =
      _SearchPuttersEvent;
}
