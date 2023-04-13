import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swagapp/modules/common/ui/body_widget_with_view.dart';
import 'package:swagapp/modules/common/ui/pushed_header.dart';
import 'package:swagapp/modules/common/utils/palette.dart';
import 'package:swagapp/modules/models/search/catalog_item_model.dart';
import 'package:swagapp/modules/models/search/search_request_payload_model.dart';

import 'package:swagapp/modules/pages/search/search_result/widgets/search_result_field.dart';

import '../../../blocs/search_bloc.dart/search_bloc.dart';
import '../../../common/ui/loading.dart';
import '../../../common/utils/custom_route_animations.dart';
import '../../../common/utils/tab_wrapper.dart';
import '../../../common/utils/utils.dart';
import 'widgets/search_result_acttion_header.dart';

class SearchResultPage extends StatefulWidget {

  static const name = '/SearchResult';
  final String searchParam;
  final SearchRequestPayloadModel? searchWithFilters;

  const SearchResultPage({
    Key? key,
    required this.searchParam, 
    this.searchWithFilters,
  }) : super(key: key);

  static Route route(String searchParam) => PageRoutes.material(
    settings: const RouteSettings(name: name),
    builder: (context) => SearchResultPage(searchParam: searchParam),
  );

  @override
  State<SearchResultPage> createState() => _SearchResultPageState();
}

class _SearchResultPageState extends State<SearchResultPage> with AutomaticKeepAliveClientMixin<SearchResultPage> {

  late SearchState? previousState;

  @override
  bool get wantKeepAlive => true;
  int selectedIndex = 0;
  final TextEditingController textEditingController = TextEditingController();

  @override
  void initState() {
    
    super.initState();
    this.previousState = null;
    this.textEditingController.text = widget.searchParam;
    performSearch(
      context: context, 
      searchParam: widget.searchParam, 
      searchWithFilters: this.widget.searchWithFilters,
      tab: null,
    );
  }

  @override
  Widget build(BuildContext context) {

    super.build(context);

    return Scaffold(
      appBar: PushedHeader(
        customWidget: Column(
          children: [
            SearchResultField(
              textEditingController: this.textEditingController, 
              searchParam: this.widget.searchParam,
            ),
            Container(
              color: Palette.current.darkGray,
              height: 0.2,
            ),
          ],
        ),
        height: 62,
      ),
      backgroundColor: Palette.current.primaryNero,
      body: BlocConsumer<SearchBloc, SearchState>(
        listener: (context, state) => state.maybeWhen(
          orElse: () => Loading.isVisible() ? Loading.hide(context) : (){},
          error: (String message) => Loading.isVisible() ? Loading.hide(context) : (){},
          initial: ()=> !Loading.isVisible() ? Loading.show(context) : null,
          result: (result, query, page, tab) => this.setPreviousState(state),
        ),
        builder: (context, state) {

          return (this.previousState == null) 
          ? state.maybeMap(
              orElse: () => const Center(),
              error: (error)=>  _RefreshIndicator(onRefresh: this.onRefresh),
              result: (state) {   

                this.setPreviousState(state);

                return _Results(
                  catalogList: state.result[SearchTab.all] ?? [], 
                  searchParam: this.widget.searchParam,
                );
              },
            )
          : this.previousState!.maybeMap(
              orElse: ()=> const SizedBox.shrink(),
              result: (state) {
                return _Results(
                  catalogList: state.result[SearchTab.all] ?? [], 
                  searchParam: this.widget.searchParam,
                );
              },
            ); 
        },
      ),
    );
  }



  void setPreviousState(SearchState state) {
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) { 
      setState(() => this.previousState = state);
    });
  }

  Future<void> onRefresh() async {
    performSearch(context: context,searchParam: widget.searchParam, tab: null);
    return Future.delayed(const Duration(milliseconds: 1500));
  }
}

class _RefreshIndicator extends StatelessWidget {

  final Function onRefresh;

  const _RefreshIndicator({
    super.key, 
    required this.onRefresh,
  });

  @override
  Widget build(BuildContext context) {

    return RefreshIndicator(
      onRefresh: ()=> this.onRefresh(),
      child: ListView.builder(
        itemBuilder: (_, index) => Container(),
        itemCount: 0,
      ),
    );
  }
}

class _Results extends StatelessWidget {

  final String searchParam;
  final List<CatalogItemModel> catalogList;

  const _Results({
    super.key,
    required this.catalogList, 
    required this.searchParam,
  });

  @override
  Widget build(BuildContext context) {

    return Column(
      children: <Widget> [
        SearchResultActionHeader(searchParam: this.searchParam,),
        Expanded(
          child: BodyWidgetWithView(
            this.catalogList, 
            SearchTab.all,
            searchParams: this.searchParam,
            scrollTrgiggerOffset: 0.4,
            scrollListener: () async => await performSearch(
              context: context, 
              searchParam: this.searchParam, 
              tab: null,
            ),
          ),
        ),
      ],
    );
  }
}


