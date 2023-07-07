import 'package:freezed_annotation/freezed_annotation.dart';

part 'purchase_history_model.freezed.dart';
part 'purchase_history_model.g.dart';

@freezed
class PurchaseHistoryModel with _$PurchaseHistoryModel {
  @JsonSerializable(includeIfNull: false)
  const factory PurchaseHistoryModel({
    final String? accountId,
    required final List<PurchaseHistoryItemModel> purchaseHistory,
  }) = _PurchaseHistoryModel;

  factory PurchaseHistoryModel.fromJson(Map<String, dynamic> json) =>
      _$PurchaseHistoryModelFromJson(json);
}

@freezed
class PurchaseHistoryItemModel with _$PurchaseHistoryItemModel {
  @JsonSerializable(includeIfNull: false)
  const factory PurchaseHistoryItemModel({
    final String? purchaseHistoryId,
    final String? purchaseDate,
    required final List<PurchaseItemModel> purchaseItems,
  }) = _PurchaseHistoryItemModel;

  factory PurchaseHistoryItemModel.fromJson(Map<String, dynamic> json) =>
      _$PurchaseHistoryItemModelFromJson(json);
}

@freezed
class PurchaseItemModel with _$PurchaseItemModel {
  @JsonSerializable(includeIfNull: false)
  const factory PurchaseItemModel({
    final String? purchaseItemTitle,
    final String? purchaseItemImage,
    @Default(0.0)
    final double purchaseItemPrice,
  }) = _PurchaseItemModel;

  factory PurchaseItemModel.fromJson(Map<String, dynamic> json) =>
      _$PurchaseItemModelFromJson(json);
}

