part of 'head_covers_bloc.dart';

@freezed
class SearchHeadcoversEvent with _$SearchHeadcoversEvent {
  const factory SearchHeadcoversEvent.search(
          SearchRequestPayloadModel payload, FiltersPayload param) =
      _SearchHeadcoversEvent;
}
