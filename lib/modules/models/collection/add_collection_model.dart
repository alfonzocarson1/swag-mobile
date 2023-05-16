import 'package:freezed_annotation/freezed_annotation.dart';

import 'add_collection_items_payload_model.dart';

part 'add_collection_model.freezed.dart';
part 'add_collection_model.g.dart';

@freezed
@JsonSerializable(includeIfNull: false)
class AddCollectionModel with _$AddCollectionModel {
  const factory AddCollectionModel({
    final String? accountId,
    final String? collectionItemsAction,
    final String? deleteReason,
    List<AddCollectionItemPayloadModel>? profileCollectionItems,
  }) = _AddCollectionModel;

  factory AddCollectionModel.fromJson(Map<String, dynamic> json) =>
      _$AddCollectionModelFromJson(json);
}
