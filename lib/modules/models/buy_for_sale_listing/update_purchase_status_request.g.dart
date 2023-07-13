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
          numberTracking: json['numberTracking'] as String?,
        );

Map<String, dynamic> _$$_UpdatePurchaseStatusRequestModelToJson(
    _$_UpdatePurchaseStatusRequestModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('listingStatus', instance.listingStatus);
  writeNotNull('productItemId', instance.productItemId);
  writeNotNull('listingChatId', instance.listingChatId);
  writeNotNull('numberTracking', instance.numberTracking);
  return val;
}
