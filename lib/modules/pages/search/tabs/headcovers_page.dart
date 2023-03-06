import 'package:flutter/material.dart';
import 'package:swagapp/modules/blocs/search_bloc.dart/search_bloc.dart';
import '../../../common/ui/body_widget_with_view.dart';
import '../../../common/utils/custom_route_animations.dart';
import '../../../common/utils/palette.dart';

import '../../../../generated/l10n.dart';
import '../../../common/ui/catalog_ui.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:swagapp/modules/common/ui/loading.dart';

import '../../../models/search/catalog_item_model.dart';
import '../../../models/search/filter_model.dart';
import '../../../models/search/search_request_payload_model.dart';

class HeadcoversPage extends StatefulWidget {
  static const name = '/Headcovers';
  const HeadcoversPage({Key? key}) : super(key: key);

  static Route route() => PageRoutes.material(
        settings: const RouteSettings(name: name),
        builder: (context) => const HeadcoversPage(),
      );

  @override
  State<HeadcoversPage> createState() => _HeadcoversPageState();
}

class _HeadcoversPageState extends State<HeadcoversPage> {
  late final ScrollController? _scrollController =
      PrimaryScrollController.of(context);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Palette.current.primaryNero,
        body: BlocConsumer<SearchBloc, SearchState>(
          listener: (context, state) => state.maybeWhen(
            orElse: () => {
              if (Loading.isVisible()) {Loading.hide(context)}
            },
            error: (message) => {
              Loading.hide(context),
              // Dialogs.showOSDialog(context, 'Error', message, 'OK', () {})
            },
            initial: () {
              if (!Loading.isVisible()) {
                return Loading.show(context);
              }
              return null;
            },
          ),
          builder: (context, state) {
            return state.maybeMap(
              orElse: () => const Center(),
              error: (_) {
                return RefreshIndicator(
                    onRefresh: () async {
                      makeCall();
                      return Future.delayed(const Duration(milliseconds: 1500));
                    },
                    child: ListView.builder(
                      itemBuilder: (_, index) => Container(),
                      itemCount: 0,
                    ));
              },
              result: (state) {
                if (state.tab == SearchTab.headcovers) {
                  return BodyWidgetWithView(
                      state.result[SearchTab.headcovers] ?? [],
                      SearchTab.headcovers);
                } else {
                  return const Center();
                }
              },
            );
          },
        ));
  }

  Widget _getBody(List<CatalogItemModel> catalogList) {
    return RefreshIndicator(
      onRefresh: () async {
        makeCall();
        return Future.delayed(const Duration(milliseconds: 1500));
      },
      child: catalogList.isNotEmpty
          ? CatalogPage(
              catalogItems: catalogList, scrollController: _scrollController!)
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
            ),
    );
  }

  Future<void> makeCall() async {
    context.read<SearchBloc>().add(SearchEvent.performSearch(
        SearchRequestPayloadModel(
            categoryId:
                await SearchTabWrapper(SearchTab.headcovers).toStringCustom(),
            filters: const FilterModel()),
        SearchTab.headcovers));
  }
}
