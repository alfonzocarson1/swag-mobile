import 'package:freezed_annotation/freezed_annotation.dart';

part 'detail_collection_model.freezed.dart';
part 'detail_collection_model.g.dart';

@freezed
@JsonSerializable()
class DetailCollectionModel with _$DetailCollectionModel {
  const factory DetailCollectionModel(
      {required final String profileCollectionItemId,
      required final String catalogItemId,
      required final String purchaseDate,
      required final double purchasePrice,
      required final String itemCondition,
      required final String itemSource,
      final String? description,
      }) = _DetailCollectionModel;

  factory DetailCollectionModel.fromJson(Map<String, dynamic> json) =>
      _$DetailCollectionModelFromJson(json);
}
