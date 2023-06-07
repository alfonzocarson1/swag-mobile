// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_sale_info_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DetailSaleInfoModel _$$_DetailSaleInfoModelFromJson(
        Map<String, dynamic> json) =>
    _$_DetailSaleInfoModel(
      minPrice: json['minPrice'] as String?,
      maxPrice: json['maxPrice'] as String?,
      lastSale: json['lastSale'] as String?,
      percentageLastSale: json['percentageLastSale'] as String?,
    );

Map<String, dynamic> _$$_DetailSaleInfoModelToJson(
        _$_DetailSaleInfoModel instance) =>
    <String, dynamic>{
      'minPrice': instance.minPrice,
      'maxPrice': instance.maxPrice,
      'lastSale': instance.lastSale,
      'percentageLastSale': instance.percentageLastSale,
    };
