import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:swagapp/modules/constants/constants.dart';

part 'filter_model.freezed.dart';
part 'filter_model.g.dart';

@freezed
class FilterModel with _$FilterModel {
  @JsonSerializable()
  const factory FilterModel({
    @Default(0) final int sortBy,
    @Default(defaultString) final String collections,
    @Default(defaultString) final String conditions,
    @Default([]) final List<String> releaseYears,
    @Default(defaultString) String rarityScore,
  }) = _FilterModel;

  factory FilterModel.fromJson(Map<String, dynamic> json) =>
      _$FilterModelFromJson(json);
}
