
import 'package:flutter/material.dart';
import 'package:swagapp/modules/common/utils/tab_wrapper.dart';
import 'package:swagapp/modules/constants/constants.dart';

class FilterCategoryNavigatorParameters {

  final FilterType filterType;
  final String? searchParam;
  final SearchTab? tab;
  final bool isMultipleSelection;
  final String? categoryId;
  final VoidCallback? updateFilters;

  FilterCategoryNavigatorParameters({
    this.searchParam, 
    this.tab, 
    this.categoryId, 
    this.updateFilters,
    required this.filterType, 
    required this.isMultipleSelection, 
  });

}
