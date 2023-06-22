// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'cancel_purchase_request_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CancelPurchaseRequestModel _$$_CancelPurchaseRequestModelFromJson(
        Map<String, dynamic> json) =>
    _$_CancelPurchaseRequestModel(
      productItemId: json['productItemId'] as String?,
      listingChatId: json['listingChatId'] as String?,
      cancelReason: json['cancelReason'] as String?,
    );

Map<String, dynamic> _$$_CancelPurchaseRequestModelToJson(
    _$_CancelPurchaseRequestModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('productItemId', instance.productItemId);
  writeNotNull('listingChatId', instance.listingChatId);
  writeNotNull('cancelReason', instance.cancelReason);
  return val;
}
