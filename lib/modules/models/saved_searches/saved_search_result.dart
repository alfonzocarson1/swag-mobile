import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:swagapp/modules/models/saved_searches/saved_search.dart';

part 'saved_search_result.freezed.dart';
part 'saved_search_result.g.dart';

@freezed
class SavedSearchResult with _$SavedSearchResult{

  const factory SavedSearchResult ({
    List<SavedSearch>? savedSearchResult,
  }) =_SavedSearchResult;

  factory SavedSearchResult.fromJson(Map<String,dynamic> json) => _$SavedSearchResultFromJson(json);
}

