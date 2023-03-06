// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sale_list_history_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SalesHistoryListModel _$$_SalesHistoryListModelFromJson(
        Map<String, dynamic> json) =>
    _$_SalesHistoryListModel(
      saleHistoryList: (json['saleHistoryList'] as List<dynamic>?)
          ?.map((e) => SalesHistoryModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_SalesHistoryListModelToJson(
        _$_SalesHistoryListModel instance) =>
    <String, dynamic>{
      'saleHistoryList': instance.saleHistoryList,
    };
