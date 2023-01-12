// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'category_model.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_CategoryModel _$$_CategoryModelFromJson(Map<String, dynamic> json) =>
    _$_CategoryModel(
      catalogCategoryId: json['catalogCategoryId'] as String,
      categoryName: json['categoryName'] as String,
      jobId: json['jobId'] as String?,
    );

Map<String, dynamic> _$$_CategoryModelToJson(_$_CategoryModel instance) =>
    <String, dynamic>{
      'catalogCategoryId': instance.catalogCategoryId,
      'categoryName': instance.categoryName,
      'jobId': instance.jobId,
    };
