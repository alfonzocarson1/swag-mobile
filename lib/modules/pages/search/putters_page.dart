import 'package:flutter/material.dart';
import 'package:swagapp/modules/common/utils/palette.dart';
import '../../common/utils/custom_route_animations.dart';

import '../../../generated/l10n.dart';
import '../../common/ui/catalog_ui.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:swagapp/modules/blocs/search_bloc.dart/search_bloc.dart';
import 'package:swagapp/modules/common/ui/loading.dart';

import '../../models/search/catalog_item_model.dart';

class PuttersPage extends StatefulWidget {
  static const name = '/Putters';
  const PuttersPage({Key? key}) : super(key: key);

  static Route route() => PageRoutes.material(
        settings: const RouteSettings(name: name),
        builder: (context) => const PuttersPage(),
      );

  @override
  State<PuttersPage> createState() => _PuttersPageState();
}

class _PuttersPageState extends State<PuttersPage> {
  late final ScrollController? _scrollController =
      PrimaryScrollController.of(context);

  @override
  void initState() {}

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Palette.current.primaryNero,
        body: BlocConsumer<SearchBloc, SearchState>(
          listener: (context, state) => state.maybeWhen(
            orElse: () => {Loading.hide(context)},
            error: (message) => {
              Loading.hide(context),
              // Dialogs.showOSDialog(context, 'Error', message, 'OK', () {})
            },
            initial: () {
              return Loading.show(context);
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
              loadedCatalogItems: (state) {
                return _getBody(state.catalogList);
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

  void makeCall() {
    context.read<SearchBloc>().add(const SearchEvent.getCatalogItems());
  }
}
