// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'alert_payload_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_AlertPayloadModel _$$_AlertPayloadModelFromJson(Map<String, dynamic> json) =>
    _$_AlertPayloadModel(
      accountId: json['accountId'] as String?,
      userName: json['userName'] as String?,
      itemName: json['itemName'] as String?,
      productItemId: json['productItemId'] as String?,
      avatar: json['avatar'] as String?,
      listingImageUrl: json['listingImageUrl'] as String?,
      dateItemShipped: json['dateItemShipped'] as int?,
      purchaseHistoryId: json['purchaseHistoryId'] as String?,
      listingStatus: json['listingStatus'] as String?,
      kycSession: json['kycSession'] as String?,
      kycSessionStatus: json['kycSessionStatus'] as String?,
    );

Map<String, dynamic> _$$_AlertPayloadModelToJson(
    _$_AlertPayloadModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('accountId', instance.accountId);
  writeNotNull('userName', instance.userName);
  writeNotNull('itemName', instance.itemName);
  writeNotNull('productItemId', instance.productItemId);
  writeNotNull('avatar', instance.avatar);
  writeNotNull('listingImageUrl', instance.listingImageUrl);
  writeNotNull('dateItemShipped', instance.dateItemShipped);
  writeNotNull('purchaseHistoryId', instance.purchaseHistoryId);
  writeNotNull('listingStatus', instance.listingStatus);
  writeNotNull('kycSession', instance.kycSession);
  writeNotNull('kycSessionStatus', instance.kycSessionStatus);
  return val;
}
