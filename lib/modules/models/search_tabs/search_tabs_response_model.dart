import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:swagapp/modules/models/search/catalog_item_model.dart';
part 'search_tabs_response_model.freezed.dart';
part 'search_tabs_response_model.g.dart';

@freezed
class SearchTabsResponseModel with _$SearchTabsResponseModel {
  @JsonSerializable()
  const factory SearchTabsResponseModel({
    required final List<CatalogItemModel> catalogList,
    @Default([]) final List<String> recentList,
    final String? jobId,
  }) = _SearchTabsResponseModel;
  factory SearchTabsResponseModel.fromJson(Map<String, dynamic> json) =>
      _$SearchTabsResponseModelFromJson(json);
}
