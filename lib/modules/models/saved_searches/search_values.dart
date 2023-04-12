import 'package:freezed_annotation/freezed_annotation.dart';
part 'search_values.freezed.dart';
part 'search_values.g.dart';


@freezed
class SearchValues with _$SearchValues{

  const factory SearchValues({
    bool? forSale,
    int? sortBy,
    String? collection,
    List<String>? productType,
    String? type,
    List<String>? theme,
    List<String>? conditions,
    List<int>? releaseYears,
    List<int>? priceRanges,
  }) = _SearchValues;

  factory SearchValues.fromJson(Map<String, dynamic> json) => _$SearchValuesFromJson(json);

}