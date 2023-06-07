import 'package:freezed_annotation/freezed_annotation.dart';

part 'similar_item_model.freezed.dart';
part 'similar_item_model.g.dart';

@freezed
class SimilarItemModel with _$SimilarItemModel {
@JsonSerializable()
  const factory SimilarItemModel(
      {required final String catalogItemId,
      required final String catalogItemImage,
      required final String catalogItemName,
      required final String retail}) = _SimilarItemModel;

  factory SimilarItemModel.fromJson(Map<String, dynamic> json) =>
      _$SimilarItemModelFromJson(json);
}
