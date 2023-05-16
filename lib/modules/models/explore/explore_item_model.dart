import 'package:freezed_annotation/freezed_annotation.dart';

part 'explore_item_model.freezed.dart';
part 'explore_item_model.g.dart';

@freezed
@JsonSerializable()
class ExploreItemModel with _$ExploreItemModel {
  const factory ExploreItemModel({
    required final String image,
  }) = _ExploreItemModel;

  factory ExploreItemModel.fromJson(Map<String, dynamic> json) =>
      _$ExploreItemModelFromJson(json);
}
