import 'package:freezed_annotation/freezed_annotation.dart';

part 'detail_collection_model.freezed.dart';
part 'detail_collection_model.g.dart';

@freezed
class DetailCollectionModel with _$DetailCollectionModel {
  @JsonSerializable()
  const factory DetailCollectionModel(
      {required final String acquired,
      required final String paid,
      required final String salePrice}) = _DetailCollectionModel;

  factory DetailCollectionModel.fromJson(Map<String, dynamic> json) =>
      _$DetailCollectionModelFromJson(json);
}
