import 'package:freezed_annotation/freezed_annotation.dart';

import '../../constants/constants.dart';
import 'filter_model.dart';

part 'search_request_payload_model.freezed.dart';
part 'search_request_payload_model.g.dart';

@freezed
class SearchRequestPayloadModel with _$SearchRequestPayloadModel {
  @JsonSerializable()
  const factory SearchRequestPayloadModel({
    required final FilterModel filters,
    @Default(null) final List<String>? searchParams,
    @Default(defaultPageSize) final int pageSize,
    @Default(null) final String? categoryId,
  }) = _SearchRequestPayloadModel;

  factory SearchRequestPayloadModel.fromJson(Map<String, dynamic> json) =>
      _$SearchRequestPayloadModelFromJson(json);
}
