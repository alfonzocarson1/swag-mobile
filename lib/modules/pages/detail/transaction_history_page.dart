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
    required this.itemId,
  });

  final String urlImage;
  final String? catalogItemName;
  final String? lastSale;
  final bool sale;
  final int? available;
  final bool favorite;
  final String itemId;

  static Route route(String urlImage, String catalogItemName, String lastSale,
          bool sale, int available, bool favorite, String itemId) =>
      PageRoutes.material(
        settings: const RouteSettings(name: name),
        builder: (context) => TransactionHistory(
            urlImage: urlImage,
            catalogItemName: catalogItemName,
            lastSale: lastSale,
            sale: sale,
            available: available,
            favorite: favorite,
            itemId: itemId),
      );

  @override
  State<TransactionHistory> createState() => _TransactionHistoryState();
}

class _TransactionHistoryState extends State<TransactionHistory> {
  late final ScrollController? _scrollController =
      PrimaryScrollController.of(context);

  bool changeColor = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Palette.current.blackSmoke,
        resizeToAvoidBottomInset: true,
        appBar: CustomAppBar(color: Palette.current.black, actions: true),
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
                return Container(
                    width: MediaQuery.of(context).size.width,
                    decoration:
                        BoxDecoration(color: Palette.current.blackSmoke),
                    child: _getBody(
                        state.detaSalesHistoryList[0].saleHistoryList));
              },
            );
          },
        ));
  }

  Widget _getBody(List<SalesHistoryModel>? historyList) {
    return _dataDetail(historyList, _scrollController!);
  }

  Widget _dataDetail(
      List<SalesHistoryModel>? historyList, ScrollController scrollController) {
    return Column(
      children: [
        HeadWidget(
            favorite: widget.favorite,
            urlImage: widget.urlImage,
            catalogItemName: widget.catalogItemName,
            lastSale: widget.lastSale,
            sale: widget.sale,
            available: widget.available,
            itemId: widget.itemId),
        historyList!.isNotEmpty
            ? CustomDataTable(histories: historyList)
            : Center(
                child: Text(
                  S.of(context).empty_text,
                  style: TextStyle(
                      fontSize: 24, color: Colors.black.withOpacity(0.50)),
                ),
              ),
      ],
    );
  }

  void makeCall() {
    context
        .read<SalesHistoryBloc>()
        .add(SalesHistoryEvent.getSalesHistory(widget.itemId));
  }
}
