// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'saved_search_result.dart';

// **************************************************************************
// JsonSerializableGenerator
// **************************************************************************

_$_SavedSearchResult _$$_SavedSearchResultFromJson(Map<String, dynamic> json) =>
    _$_SavedSearchResult(
      savedSearchResult: (json['savedSearchResult'] as List<dynamic>?)
          ?.map((e) => SavedSearch.fromJson(e as Map<String, dynamic>))
          .toList(),
    );

Map<String, dynamic> _$$_SavedSearchResultToJson(
        _$_SavedSearchResult instance) =>
    <String, dynamic>{
      'savedSearchResult': instance.savedSearchResult,
    };
