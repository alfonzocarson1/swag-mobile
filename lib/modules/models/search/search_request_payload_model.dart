import 'package:freezed_annotation/freezed_annotation.dart';

import '../../constants/constants.dart';
import 'filter_model.dart';

part 'search_request_payload_model.freezed.dart';
part 'search_request_payload_model.g.dart';

@freezed
class SearchRequestPayloadModel with _$SearchRequestPayloadModel {
  @JsonSerializable()
  const factory SearchRequestPayloadModel({
    @Default([]) final List<FilterModel> filters,
    @Default(defaultString) final String searchParams,
    @Default(defaultPageSize) final int pageSize,
    required final String categoryId,
  }) = _SearchRequestPayloadModel;

  factory SearchRequestPayloadModel.fromJson(Map<String, dynamic> json) =>
      _$SearchRequestPayloadModelFromJson(json);
}
