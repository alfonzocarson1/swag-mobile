import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swagapp/modules/common/ui/catalog_ui.dart';
import 'package:swagapp/modules/common/ui/shrunken_item_widget.dart';
import 'package:swagapp/modules/constants/constants.dart';

import '../../../generated/l10n.dart';
import '../../blocs/search_bloc.dart/search_bloc.dart';
import '../../blocs/shared_preferences_bloc/shared_preferences_bloc.dart';
import '../../data/shared_preferences/shared_preferences_service.dart';
import '../../di/injector.dart';
import '../../models/search/catalog_item_model.dart';
import '../../models/search/search_request_payload_model.dart';

class BodyWidgetWithView extends StatefulWidget {
  BodyWidgetWithView(this.catalogList, {Key? key}) : super(key: key);

  List<CatalogItemModel> catalogList;

  @override
  State<BodyWidgetWithView> createState() => _BodyWidgetWithViewState();
}

class _BodyWidgetWithViewState extends State<BodyWidgetWithView> {
  late final ScrollController? _scrollController =
      PrimaryScrollController.of(context);
  @override
  Widget build(BuildContext context) {
    return _getBody(widget.catalogList);
  }

  Widget _getBody(List<CatalogItemModel> catalogList) {
    return RefreshIndicator(onRefresh: () async {
      makeCall();
      return Future.delayed(const Duration(milliseconds: 1500));
    }, child: BlocBuilder<SharedPreferencesBloc, SharedPreferencesState>(
        builder: (context, stateSharedPreferences) {
      return stateSharedPreferences.map(
        setPreference: (state) =>
            getWidgetWithView(catalogList, state.model.isListView),
      );
    }));
  }

  Widget getWidgetWithView(
      List<CatalogItemModel> catalogList, bool isListView) {
    return catalogList.isNotEmpty
        ? isListView
            ? CatalogPage(
                catalogItems: catalogList, scrollController: _scrollController!)
            : Padding(
                padding: const EdgeInsets.only(
                    top: 0, bottom: 0, left: 16, right: 0),
                child: GridView.builder(
                  physics: const ScrollPhysics(),
                  shrinkWrap: true,
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                    crossAxisCount: 2,
                    crossAxisSpacing: 0.0,
                    mainAxisSpacing: 0.0,
                    mainAxisExtent: 215,
                  ),
                  itemCount: catalogList.length,
                  itemBuilder: (_, index) {
                    return ShrunkenItemWidget(
                      model: catalogList[index],
                    );
                  },
                ),
              )
        : ListView.builder(
            itemBuilder: (_, index) => SizedBox(
              height: MediaQuery.of(context).size.height * 0.7,
              child: Center(
                child: Text(
                  S.of(context).empty_text,
                  style: TextStyle(
                      fontSize: 24, color: Colors.black.withOpacity(0.50)),
                ),
              ),
            ),
            itemCount: 1,
          );
  }

  void makeCall() {
    context.read<SearchBloc>().add(const SearchEvent.search(
        SearchRequestPayloadModel(categoryId: defaultString)));
  }
}
