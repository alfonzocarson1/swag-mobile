import 'package:flutter/material.dart';
import 'package:swagapp/modules/pages/search/search_result/widgets/search_result_acttion_header.dart';

import '../../../../common/ui/body_widget_with_view.dart';
import '../../../../common/utils/tab_wrapper.dart';
import '../../../../cubits/paginated_search/paginated_search_cubit.dart';
import '../../../../di/injector.dart';
import '../../../../models/search/catalog_item_model.dart';
import '../search_result_page.dart';

class Result_body extends StatelessWidget {
  const Result_body({
    super.key,
    required this.widget,
    required this.resultList,
    required this.tab,

    required this.hasReachedMax,
  });

  final SearchResultPage widget;
  final List<CatalogItemModel> resultList;
  final SearchTab tab;
  final bool hasReachedMax;

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SearchResultActionHeader(searchParam: widget.searchParam,),
        Expanded(
          child: BodyWidgetWithView(
            resultList, 
            tab, 
            searchParams: widget.searchParam,
            scrollListener: () => hasReachedMax ? getIt<PaginatedSearchCubit>().loadMoreResults(tab) : {},
            ),
        ),
      ],
    );
  }
}