import 'package:freezed_annotation/freezed_annotation.dart';

import '../search/catalog_item_model.dart';

part 'explore_item_model.freezed.dart';
part 'explore_item_model.g.dart';

@freezed
class ListExploreItemModel with _$ListExploreItemModel {
  @JsonSerializable()
  const factory ListExploreItemModel({
    required final List<CatalogItemModel> exploreList,
  }) = _ListExploreItemModel;

  factory ListExploreItemModel.fromJson(Map<String, dynamic> json) =>
      _$ListExploreItemModelFromJson(json);
}
