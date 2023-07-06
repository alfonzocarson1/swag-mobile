import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:intl/intl.dart';

part 'sale_history_model.freezed.dart';
part 'sale_history_model.g.dart';

@freezed
class SalesHistoryModel with _$SalesHistoryModel {
  @JsonSerializable()
  const factory SalesHistoryModel(
      {required final String salesPriceHistoryId,
      @Default('productItemId Null') String productItemId,
      required final String productItemName,
      required final double productItemPrice,
      @Default('productItemImage Null') String productItemImage,
      required final double lastSale,
      required final String condition,
      @Default('catalogItemId Null') String catalogItemId,
      @Default('profileCollectionItemId Null') String profileCollectionItemId,
      @Default('sku Null') String sku,
      required final String updatedDate,
      @Default(Priority.defaul) Priority priority}) = _SalesHistoryModel;

  factory SalesHistoryModel.fromJson(Map<String, dynamic> json) =>
      _$SalesHistoryModelFromJson(json);
}

enum Priority { first, second, third, defaul }
