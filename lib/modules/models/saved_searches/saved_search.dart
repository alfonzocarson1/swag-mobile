import 'package:freezed_annotation/freezed_annotation.dart';
import 'package:swagapp/modules/models/saved_searches/search_values.dart';

part 'saved_search.freezed.dart';
part 'saved_search.g.dart';


@freezed
class SavedSearch with _$SavedSearch {

  const factory SavedSearch({
    String? searchId,
    String? searchName,
    SearchValues? searchValues,
  }) = _SavedSearch;

  factory SavedSearch.fromJson(Map<String,dynamic> json) => _$SavedSearchFromJson(json);
  
}