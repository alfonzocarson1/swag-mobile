import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:swagapp/modules/common/utils/palette.dart';
import '../../../blocs/search_tabs_bloc/whats_hot_bloc/whats_hot_bloc.dart';
import '../../../common/ui/body_widget_with_view.dart';
import '../../../common/ui/loading.dart';
import '../../../common/utils/custom_route_animations.dart';
import '../../../constants/constants.dart';
import '../../../models/search/search_request_payload_model.dart';
import '../../../models/search_tabs/payload_search_model.dart';

class WhatsHotPage extends StatefulWidget {
  static const name = '/WhatsHot';
  const WhatsHotPage({Key? key}) : super(key: key);

  static Route route() => PageRoutes.material(
        settings: const RouteSettings(name: name),
        builder: (context) => const WhatsHotPage(),
      );

  @override
  State<WhatsHotPage> createState() => _WhatsHotPageState();
}

class _WhatsHotPageState extends State<WhatsHotPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Palette.current.primaryNero,
        body: BlocConsumer<WhatsHotBloc, SearchWhatsHotState>(
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
    context.read<WhatsHotBloc>().add(SearchWhatsHotEvent.search(
        const SearchRequestPayloadModel(categoryId: defaultString),
        FiltersPayload(currentPage: '0')));
  }
}
