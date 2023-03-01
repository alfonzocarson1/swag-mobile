import 'package:flutter/material.dart';
import 'package:swagapp/modules/common/utils/palette.dart';
import '../../../blocs/search_tabs_bloc/putters_bloc/putters_bloc.dart';
import '../../../common/ui/body_widget_with_view.dart';
import '../../../common/utils/custom_route_animations.dart';

import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:swagapp/modules/common/ui/loading.dart';

import '../../../constants/constants.dart';
import '../../../models/search/search_request_payload_model.dart';
import '../../../models/search_tabs/payload_search_model.dart';

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
        body: BlocConsumer<PuttersBloc, SearchPuttersState>(
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
              result: (state) {
                return BodyWidgetWithView(state.result[SearchTab.all] ?? []);
              },
            );
          },
        ));
  }

  void makeCall() {
    context.read<PuttersBloc>().add(SearchPuttersEvent.search(
        const SearchRequestPayloadModel(categoryId: defaultString),
        FiltersPayload(currentPage: '2')));
  }
}
