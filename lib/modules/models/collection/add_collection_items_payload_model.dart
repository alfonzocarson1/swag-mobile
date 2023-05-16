import 'package:freezed_annotation/freezed_annotation.dart';

part 'add_collection_items_payload_model.freezed.dart';
part 'add_collection_items_payload_model.g.dart';

@freezed
@JsonSerializable(includeIfNull: false)
class AddCollectionItemPayloadModel with _$AddCollectionItemPayloadModel {
  const factory AddCollectionItemPayloadModel({
    final String? profileCollectionItemId,
    final String? catalogItemId,
    final String? purchaseDate,
    final double? purchasePrice,
    final String? itemCondition,
    final String? itemSource,
  }) = _AddCollectionItemPayloadModel;

  factory AddCollectionItemPayloadModel.fromJson(Map<String, dynamic> json) =>
      _$AddCollectionItemPayloadModelFromJson(json);
}
