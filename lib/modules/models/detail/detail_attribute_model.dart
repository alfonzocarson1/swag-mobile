import 'package:freezed_annotation/freezed_annotation.dart';

part 'detail_attribute_model.freezed.dart';
part 'detail_attribute_model.g.dart';

@freezed
class DetailAttributeModel with _$DetailAttributeModel {
  @JsonSerializable()
  const factory DetailAttributeModel(
      {required final String catalogItemColor,
      required final String catalogItemLimit,
      required final String catalogItemIncludes}) = _DetailAttributeModel;

  factory DetailAttributeModel.fromJson(Map<String, dynamic> json) =>
      _$DetailAttributeModelFromJson(json);
}
