// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'list_product_item_sold_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_ListProductItemsSoldResponseModel
    _$$_ListProductItemsSoldResponseModelFromJson(Map<String, dynamic> json) =>
        _$_ListProductItemsSoldResponseModel(
          productItemsSold: (json['productItemsSold'] as List<dynamic>)
              .map((e) => ProductItemSold.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$_ListProductItemsSoldResponseModelToJson(
        _$_ListProductItemsSoldResponseModel instance) =>
    <String, dynamic>{
      'productItemsSold': instance.productItemsSold,
    };
