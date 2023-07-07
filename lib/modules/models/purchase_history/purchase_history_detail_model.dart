import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:swagapp/modules/models/purchase_history/purchase_history_model.dart';

part 'purchase_history_detail_model.freezed.dart';
part 'purchase_history_detail_model.g.dart';

@freezed
class PurchaseHistoryDetailModel with _$PurchaseHistoryDetailModel {
  const PurchaseHistoryDetailModel._();

  @JsonSerializable()
  const factory PurchaseHistoryDetailModel({
    final String? purchaseHistoryId,
    final String? purchasePaymentMethod,
    required final List<PurchaseItemModel> purchaseItems,
    @Default(0.0) final double purchaseTotal,
    required final PurchaseHistoryDetailShippingModel purchaseShippingInfo,
    final String? sourcePurchase,
    final String? purchaseDate,
  }) = _PurchaseHistoryDetailModel;

  factory PurchaseHistoryDetailModel.fromJson(Map<String, dynamic> json) =>
      _$PurchaseHistoryDetailModelFromJson(json);
}

@freezed
class PurchaseHistoryDetailShippingModel
    with _$PurchaseHistoryDetailShippingModel {
  @JsonSerializable()
  const factory PurchaseHistoryDetailShippingModel({
    required final PurchaseHistoryDetailAddressModel address,
    final String? statusShipping,
    final String? trackingNumber,
  }) = _PurchaseHistoryDetailShippingModel;

  factory PurchaseHistoryDetailShippingModel.fromJson(
          Map<String, dynamic> json) =>
      _$PurchaseHistoryDetailShippingModelFromJson(json);
}

@freezed
class PurchaseHistoryDetailAddressModel
    with _$PurchaseHistoryDetailAddressModel {
  @JsonSerializable()
  const factory PurchaseHistoryDetailAddressModel({
    final String? addressType,
    final String? firstName,
    final String? lastName,
    final String? country,
    final String? address1,
    final String? address2,
    final String? city,
    final String? state,
    final String? postalCode,
  }) = _PurchaseHistoryDetailAddressModel;

  factory PurchaseHistoryDetailAddressModel.fromJson(
          Map<String, dynamic> json) =>
      _$PurchaseHistoryDetailAddressModelFromJson(json);
}
