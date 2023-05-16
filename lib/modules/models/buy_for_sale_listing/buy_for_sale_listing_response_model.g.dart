// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'buy_for_sale_listing_response_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

BuyForSaleListingResponseModel _$BuyForSaleListingResponseModelFromJson(
        Map<String, dynamic> json) =>
    BuyForSaleListingResponseModel(
      saledItemdList: (json['saledItemdList'] as List<dynamic>)
          .map(
              (e) => BuyForSaleListingModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$BuyForSaleListingResponseModelToJson(
        BuyForSaleListingResponseModel instance) =>
    <String, dynamic>{
      'saledItemdList': instance.saledItemdList,
    };

_$_BuyForSaleListingResponseModel _$$_BuyForSaleListingResponseModelFromJson(
        Map<String, dynamic> json) =>
    _$_BuyForSaleListingResponseModel(
      saledItemdList: (json['saledItemdList'] as List<dynamic>)
          .map(
              (e) => BuyForSaleListingModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_BuyForSaleListingResponseModelToJson(
        _$_BuyForSaleListingResponseModel instance) =>
    <String, dynamic>{
      'saledItemdList': instance.saledItemdList,
    };
