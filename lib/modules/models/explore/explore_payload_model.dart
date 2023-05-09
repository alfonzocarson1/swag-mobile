import 'package:freezed_annotation/freezed_annotation.dart';

part 'explore_payload_model.freezed.dart';
part 'explore_payload_model.g.dart';

@freezed
class ExploreRequestPayloadModel with _$ExploreRequestPayloadModel {
  @JsonSerializable(includeIfNull: false)
  const factory ExploreRequestPayloadModel({
    @Default({}) final dynamic filters,
    @Default(8) final int? pageSize,
    @Default(null) final String? categoryId,
    final bool? whatsHotFlag,
    final bool? staffPicksFlag,
    final bool? unicornFlag,
  }) = _ExploreRequestPayloadModel;

  factory ExploreRequestPayloadModel.fromJson(Map<String, dynamic> json) =>
      _$ExploreRequestPayloadModelFromJson(json);
}
