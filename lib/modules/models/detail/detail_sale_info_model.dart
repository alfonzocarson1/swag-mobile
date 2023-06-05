import 'package:freezed_annotation/freezed_annotation.dart';

part 'detail_sale_info_model.freezed.dart';
part 'detail_sale_info_model.g.dart';

@freezed
class DetailSaleInfoModel with _$DetailSaleInfoModel {
@JsonSerializable()
  const factory DetailSaleInfoModel({
    final String? minPrice,
    final String? maxPrice,
    final String? lastSale,
    final String? percentageLastSale,
  }) = _DetailSaleInfoModel;

  factory DetailSaleInfoModel.fromJson(Map<String, dynamic> json) =>
      _$DetailSaleInfoModelFromJson(json);
}
