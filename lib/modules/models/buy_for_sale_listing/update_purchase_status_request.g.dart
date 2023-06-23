// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'update_purchase_status_request.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_UpdatePurchaseStatusRequestModel
    _$$_UpdatePurchaseStatusRequestModelFromJson(Map<String, dynamic> json) =>
        _$_UpdatePurchaseStatusRequestModel(
          listingStatus: json['listingStatus'] as String?,
          productItemId: json['productItemId'] as String?,
          listingChatId: json['listingChatId'] as String?,
        );

Map<String, dynamic> _$$_UpdatePurchaseStatusRequestModelToJson(
        _$_UpdatePurchaseStatusRequestModel instance) =>
    <String, dynamic>{
      'listingStatus': instance.listingStatus,
      'productItemId': instance.productItemId,
      'listingChatId': instance.listingChatId,
    };
