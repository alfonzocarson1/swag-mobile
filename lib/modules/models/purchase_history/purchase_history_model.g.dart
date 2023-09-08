// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'purchase_history_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_PurchaseHistoryModel _$$_PurchaseHistoryModelFromJson(
        Map<String, dynamic> json) =>
    _$_PurchaseHistoryModel(
      accountId: json['accountId'] as String?,
      purchaseHistory: (json['purchaseHistory'] as List<dynamic>)
          .map((e) =>
              PurchaseHistoryItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_PurchaseHistoryModelToJson(
    _$_PurchaseHistoryModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('accountId', instance.accountId);
  val['purchaseHistory'] = instance.purchaseHistory;
  return val;
}

_$_PurchaseHistoryItemModel _$$_PurchaseHistoryItemModelFromJson(
        Map<String, dynamic> json) =>
    _$_PurchaseHistoryItemModel(
      purchaseHistoryId: json['purchaseHistoryId'] as String?,
      purchaseDate: json['purchaseDate'] as String?,
      purchaseItems: (json['purchaseItems'] as List<dynamic>)
          .map((e) => PurchaseItemModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_PurchaseHistoryItemModelToJson(
    _$_PurchaseHistoryItemModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('purchaseHistoryId', instance.purchaseHistoryId);
  writeNotNull('purchaseDate', instance.purchaseDate);
  val['purchaseItems'] = instance.purchaseItems;
  return val;
}

_$_PurchaseItemModel _$$_PurchaseItemModelFromJson(Map<String, dynamic> json) =>
    _$_PurchaseItemModel(
      purchaseItemTitle: json['purchaseItemTitle'] as String?,
      purchaseItemImage: json['purchaseItemImage'] as String?,
      purchaseProductItemId: json['purchaseProductItemId'] as String?,
      purchaseItemPrice: (json['purchaseItemPrice'] as num?)?.toDouble() ?? 0.0,
    );

Map<String, dynamic> _$$_PurchaseItemModelToJson(
    _$_PurchaseItemModel instance) {
  final val = <String, dynamic>{};

  void writeNotNull(String key, dynamic value) {
    if (value != null) {
      val[key] = value;
    }
  }

  writeNotNull('purchaseItemTitle', instance.purchaseItemTitle);
  writeNotNull('purchaseItemImage', instance.purchaseItemImage);
  writeNotNull('purchaseProductItemId', instance.purchaseProductItemId);
  val['purchaseItemPrice'] = instance.purchaseItemPrice;
  return val;
}
