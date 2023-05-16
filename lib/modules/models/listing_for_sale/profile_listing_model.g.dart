// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'profile_listing_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

ListingForSaleProfileResponseModel _$ListingForSaleProfileResponseModelFromJson(
        Map<String, dynamic> json) =>
    ListingForSaleProfileResponseModel(
      listForSale: (json['listForSale'] as List<dynamic>)
          .map((e) => ListingForSaleModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$ListingForSaleProfileResponseModelToJson(
        ListingForSaleProfileResponseModel instance) =>
    <String, dynamic>{
      'listForSale': instance.listForSale,
    };

_$_ListingForSaleProfileResponseModel
    _$$_ListingForSaleProfileResponseModelFromJson(Map<String, dynamic> json) =>
        _$_ListingForSaleProfileResponseModel(
          listForSale: (json['listForSale'] as List<dynamic>)
              .map((e) =>
                  ListingForSaleModel.fromJson(e as Map<String, dynamic>))
              .toList(),
        );

Map<String, dynamic> _$$_ListingForSaleProfileResponseModelToJson(
        _$_ListingForSaleProfileResponseModel instance) =>
    <String, dynamic>{
      'listForSale': instance.listForSale,
    };
