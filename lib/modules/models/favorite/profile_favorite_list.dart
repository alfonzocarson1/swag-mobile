import 'package:freezed_annotation/freezed_annotation.dart';

import '../detail/detail_item_model.dart';

part 'profile_favorite_list.freezed.dart';
part 'profile_favorite_list.g.dart';

@freezed
class ListFavoriteProfileResponseModel with _$ListFavoriteProfileResponseModel {
  @JsonSerializable()
  const factory ListFavoriteProfileResponseModel({
    required List<DetailItemModel> favoriteList,
  }) = _ListFavoriteProfileResponseModel;
  factory ListFavoriteProfileResponseModel.fromJson(
          Map<String, dynamic> json) =>
      _$ListFavoriteProfileResponseModelFromJson(json);
}
