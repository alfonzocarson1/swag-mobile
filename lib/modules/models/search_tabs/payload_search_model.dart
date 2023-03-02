class FiltersPayload {
  String currentPage;
  bool? forSale;
  String? sortBy;
  String? collection;
  String? conditions;
  String? theme;
  String? productType;
  String? releaseYears;
  String? searchParams;
  int? pageSize;
  String? categoryId;

  FiltersPayload(
      {required this.currentPage,
      this.forSale = false,
      this.sortBy,
      this.collection,
      this.conditions,
      this.theme,
      this.productType,
      this.releaseYears,
      this.searchParams,
      this.pageSize = 60,
      this.categoryId});

  Map<String, dynamic> toJson() {
    final Map<String, dynamic> data = <String, dynamic>{};

    data['currentPage'] = currentPage;
    data['forSale'] = forSale;
    data['sortBy'] = sortBy;
    data['collection'] = collection;
    data['conditions'] = conditions;
    data['theme'] = theme;
    data['productType'] = productType;
    data['releaseYears'] = releaseYears;
    data['searchParams'] = searchParams;
    data['pageSize'] = pageSize;
    data['categoryId'] = categoryId;

    return data;
  }
}
