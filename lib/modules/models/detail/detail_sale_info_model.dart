import 'package:freezed_annotation/freezed_annotation.dart';

part 'detail_sale_info_model.freezed.dart';
part 'detail_sale_info_model.g.dart';

@freezed
class DetailSaleInfoModel with _$DetailSaleInfoModel {
  @JsonSerializable()
  const factory DetailSaleInfoModel({
    String? minPrice,
    String? maxPrice,
    String? lastSale,
    String? percentageLastSale,
  }) = _DetailSaleInfoModel;

  factory DetailSaleInfoModel.fromJson(Map<String, dynamic> json) =>
      _$DetailSaleInfoModelFromJson(json);
}
