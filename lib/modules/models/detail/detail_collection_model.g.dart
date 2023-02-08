// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'detail_collection_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_DetailCollectionModel _$$_DetailCollectionModelFromJson(
        Map<String, dynamic> json) =>
    _$_DetailCollectionModel(
      acquired: json['acquired'] as String,
      paid: json['paid'] as String,
      salePrice: json['salePrice'] as String,
      condition: json['condition'] as String,
    );

Map<String, dynamic> _$$_DetailCollectionModelToJson(
        _$_DetailCollectionModel instance) =>
    <String, dynamic>{
      'acquired': instance.acquired,
      'paid': instance.paid,
      'salePrice': instance.salePrice,
      'condition': instance.condition,
    };
