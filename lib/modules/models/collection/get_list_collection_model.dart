import 'package:freezed_annotation/freezed_annotation.dart';

import 'get_collection_model.dart';

part 'get_list_collection_model.freezed.dart';
part 'get_list_collection_model.g.dart';

@freezed
class ListCollectionProfileResponseModel
    with _$ListCollectionProfileResponseModel {
  @JsonSerializable()
  const factory ListCollectionProfileResponseModel({
    required List<GetCollectionModel> collectionList,
  }) = _ListCollectionProfileResponseModel;
  factory ListCollectionProfileResponseModel.fromJson(
          Map<String, dynamic> json) =>
      _$ListCollectionProfileResponseModelFromJson(json);
}
