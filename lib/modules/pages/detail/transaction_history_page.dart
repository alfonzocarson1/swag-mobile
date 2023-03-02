import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../generated/l10n.dart';
import '../../blocs/sale_history/sale_history_bloc.dart';
import '../../common/ui/custom_app_bar.dart';
import '../../common/ui/custom_data_table.dart';
import '../../common/ui/loading.dart';
import '../../common/utils/custom_route_animations.dart';
import '../../common/utils/palette.dart';
import '../../models/detail/sale_history_model.dart';
import 'intem_head.dart';

class TransactionHistory extends StatefulWidget {
  static const name = '/TransactionHistory';
  TransactionHistory({
    super.key,
    required this.urlImage,
    this.catalogItemName,
    this.lastSale,
    this.sale = false,
    this.available,
    required this.favorite,
  });

  final String urlImage;
  final String? catalogItemName;
  final String? lastSale;
  final bool sale;
  final int? available;
  final bool favorite;

  static Route route(String urlImage, String catalogItemName, String lastSale,
          bool sale, int available, bool favorite) =>
      PageRoutes.material(
        settings: const RouteSettings(name: name),
        builder: (context) => TransactionHistory(
          urlImage: urlImage,
          catalogItemName: catalogItemName,
          lastSale: lastSale,
          sale: sale,
          available: available,
          favorite: favorite,
        ),
      );

  @override
  State<TransactionHistory> createState() => _TransactionHistoryState();
}

class _TransactionHistoryState extends State<TransactionHistory> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Palette.current.black,
        resizeToAvoidBottomInset: true,
        appBar: CustomAppBar(actions: true),
        body: BlocConsumer<SalesHistoryBloc, SalesHistoryState>(
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
              loadedSalesHistory: (state) {
                print(state.detaSalesHistoryList);
                return _getBody(state.detaSalesHistoryList);
              },
            );
          },
        ));
  }

  Widget _getBody(List<SalesHistoryModel> historyList) {
    return RefreshIndicator(
      onRefresh: () async {
        makeCall();
        return Future.delayed(const Duration(milliseconds: 1500));
      },
      child: historyList.isNotEmpty
          ? Container(
              width: MediaQuery.of(context).size.width,
              decoration: BoxDecoration(
                color: Palette.current.blackSmoke,
              ),
              child: Column(
                children: [
                  HeadWidget(
                      favorite: widget.favorite,
                      urlImage: widget.urlImage,
                      catalogItemName: widget.catalogItemName,
                      lastSale: widget.lastSale,
                      sale: widget.sale,
                      available: widget.available),
                  CustomDataTable(histories: historyList)
                ],
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
            ),
    );
  }

  void makeCall() {
    context
        .read<SalesHistoryBloc>()
        .add(const SalesHistoryEvent.getSalesHistory());
  }
}
