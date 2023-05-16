import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:swagapp/modules/constants/constants.dart';

part 'generic_response_model.freezed.dart';
part 'generic_response_model.g.dart';

@freezed
@JsonSerializable()
class GenericResponseModel with _$GenericResponseModel {
  const factory GenericResponseModel({
    @Default(defaultString) final String errorCode,
    @Default(defaultString) final String errorMessage,
    @Default(defaultString) final String token,
    @Default(defaultString) final String accountId,
    @Default(false) final bool hasImportableData,
  }) = _GenericResponseModel;

  factory GenericResponseModel.fromJson(Map<String, dynamic> json) =>
      _$GenericResponseModelFromJson(json);
}
