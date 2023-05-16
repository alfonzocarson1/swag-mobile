// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'sale_list_history_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

SalesHistoryListModel _$SalesHistoryListModelFromJson(
        Map<String, dynamic> json) =>
    SalesHistoryListModel(
      saleHistoryList: (json['saleHistoryList'] as List<dynamic>?)
          ?.map((e) => SalesHistoryModel.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$SalesHistoryListModelToJson(
        SalesHistoryListModel instance) =>
    <String, dynamic>{
      'saleHistoryList': instance.saleHistoryList,
    };

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
