
import 'dart:convert';

class DynamicFilters {
  
  DynamicFilters({
    required this.collections,
    required this.themes,
    required this.types,
  });

  List<String> collections;
  List<String> themes;
  List<String> types;

  factory DynamicFilters.fromJson(Map<String, dynamic> json) => DynamicFilters(
    collections: List<String>.from(json["collections"].map((x) => x)),
    themes: List<String>.from(json["themes"].map((x) => x)),
    types: List<String>.from(json["types"].map((x) => x)),
  );

  static DynamicFilters dynamicFiltersFromJson(String str) => DynamicFilters.fromJson(json.decode(str));

  Map<String, dynamic> toJson() => {
    "collections": List<String>.from(collections.map((x) => x)),
    "themes": List<String>.from(themes.map((x) => x)),
    "types": List<String>.from(types.map((x) => x)),
  };  
}
