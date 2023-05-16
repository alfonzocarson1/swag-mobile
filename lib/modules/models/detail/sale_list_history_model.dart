import 'package:freezed_annotation/freezed_annotation.dart';

import 'sale_history_model.dart';

part 'sale_list_history_model.freezed.dart';
part 'sale_list_history_model.g.dart';

@freezed
@JsonSerializable()
class SalesHistoryListModel with _$SalesHistoryListModel {
  const factory SalesHistoryListModel({
    @required List<SalesHistoryModel>? saleHistoryList,
  }) = _SalesHistoryListModel;

  factory SalesHistoryListModel.fromJson(Map<String, dynamic> json) =>
      _$SalesHistoryListModelFromJson(json);
}
