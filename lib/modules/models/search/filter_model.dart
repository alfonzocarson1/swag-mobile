import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:swagapp/modules/constants/constants.dart';

part 'filter_model.freezed.dart';
part 'filter_model.g.dart';

@freezed
class FilterModel with _$FilterModel {
  @JsonSerializable()
  const factory FilterModel({
    @Default(false) final bool forSale,
    @Default(0) final int sortBy,
    @Default(null) final String? collection,
    @Default(null) final String? productType,
    @Default(null) final String? type,
    @Default(null) final List<String>? theme,
    @Default(null) final List<String>? conditions,
    @Default(null) final List<int>? releaseYears,
    @Default(null) final List<int>? priceRanges,
    @Default(null) String? rarityScore,
  }) = _FilterModel;

  factory FilterModel.fromJson(Map<String, dynamic> json) =>
      _$FilterModelFromJson(json);
}
