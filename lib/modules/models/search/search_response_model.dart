import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:swagapp/modules/models/search/catalog_item_model.dart';
part 'search_response_model.freezed.dart';
part 'search_response_model.g.dart';

@freezed
@JsonSerializable()
class SearchResponseModel with _$SearchResponseModel {
  const factory SearchResponseModel({
    required final List<CatalogItemModel> catalogList,
    @Default([]) final List<String> recentList,
    final String? jobId,
  }) = _SearchResponseModel;
  factory SearchResponseModel.fromJson(Map<String, dynamic> json) =>
      _$SearchResponseModelFromJson(json);
}
