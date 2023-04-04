// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'saved_search.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SavedSearch _$$_SavedSearchFromJson(Map<String, dynamic> json) =>
    _$_SavedSearch(
      searchId: json['searchId'] as String?,
      searchName: json['searchName'] as String?,
      searchValues: json['searchValues'] == null
          ? null
          : SearchValues.fromJson(json['searchValues'] as Map<String, dynamic>),
    );

Map<String, dynamic> _$$_SavedSearchToJson(_$_SavedSearch instance) =>
    <String, dynamic>{
      'searchId': instance.searchId,
      'searchName': instance.searchName,
      'searchValues': instance.searchValues,
    };
