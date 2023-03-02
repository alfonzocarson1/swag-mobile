part of 'whats_hot_bloc.dart';

@freezed
class SearchWhatsHotEvent with _$SearchWhatsHotEvent {
  const factory SearchWhatsHotEvent.search(
          SearchRequestPayloadModel payload, FiltersPayload param) =
      _SearchWhatsHotEvent;
}
