import 'package:freezed_annotation/freezed_annotation.dart';

import 'category_model.dart';

part 'category_list_model.freezed.dart';
part 'category_list_model.g.dart';

@freezed
class CategoryListModel with _$CategoryListModel {
@JsonSerializable()
  const factory CategoryListModel({
    @required List<CategoryModel>? categoryList,
  }) = _CategoryListModel;

  factory CategoryListModel.fromJson(Map<String, dynamic> json) =>
      _$CategoryListModelFromJson(json);
}
