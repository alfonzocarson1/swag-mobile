import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import '../../../generated/l10n.dart';
import '../../blocs/sale_history/sale_history_bloc.dart';
import '../../common/ui/custom_app_bar.dart';
import '../../common/ui/custom_data_table.dart';
import '../../common/ui/loading.dart';
import '../../common/ui/popup_add_exisiting_item_collection.dart';
import '../../common/utils/custom_route_animations.dart';
import '../../common/utils/palette.dart';
import '../../models/detail/detail_sale_info_model.dart';
import '../../models/detail/sale_history_model.dart';
import '../add/collection/add_collection_page.dart';
import 'intem_head.dart';

class TransactionHistory extends StatefulWidget {
  static const name = '/TransactionHistory';
  TransactionHistory(
      {super.key,
      required this.urlImage,
      this.catalogItemName,
      required this.lastSale,
      this.sale = false,
      this.available,
      required this.favorite,
      required this.itemId,
      required this.addFavorite, 
      required this.saleHIstoryList});

  final String urlImage;
  final String? catalogItemName;
  final DetailSaleInfoModel lastSale;
  final List<SalesHistoryModel> saleHIstoryList;
  final bool sale;
  final int? available;
  final bool favorite;
  final String itemId;
  Function(bool) addFavorite;

  static Route route(
          String urlImage,
          String catalogItemName,
          DetailSaleInfoModel lastSale,
          bool sale,
          int available,
          bool favorite,
          String itemId,
          List<SalesHistoryModel> saleHIstoryList,
          Function(bool) addFavorite,
          
          ) =>
      PageRoutes.material(
        settings: const RouteSettings(name: name),
        builder: (context) => TransactionHistory(
            urlImage: urlImage,
            catalogItemName: catalogItemName,
            lastSale: lastSale,
            sale: sale,
            available: available,
            favorite: favorite,
            itemId: itemId,
            addFavorite: addFavorite, 
            saleHIstoryList: saleHIstoryList,),
      );

  @override
  State<TransactionHistory> createState() => _TransactionHistoryState();
}

class _TransactionHistoryState extends State<TransactionHistory> {
  late final ScrollController? _scrollController =
      PrimaryScrollController.of(context);
  ScrollController scroll = ScrollController();
  bool showbtn = false;

  bool changeColor = false;
  bool favorite = false;
  @override
  void initState() {
    // TODO: implement initState
    scroll.addListener(() {
      double showoffset = MediaQuery.of(context).size.height - 200;

      if(scroll.offset > showoffset){
        showbtn = true;
        setState(() {
          //update state
        });
      }else{
        showbtn = false;
        setState(() {
          //update state
        });
      }
    });
    super.initState();
    favorite = widget.favorite;
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Palette.current.blackSmoke,
        resizeToAvoidBottomInset: true,
        floatingActionButton: AnimatedOpacity(
          duration: Duration(milliseconds: 1000),
          opacity: showbtn?1.0:0.0,
          child: FloatingActionButton(
            onPressed: () {
              scroll.animateTo(
                  0,
                  duration: Duration(milliseconds: 500),
                  curve:Curves.fastOutSlowIn
              );
            },
            child: Icon(Icons.arrow_upward),
            backgroundColor: Palette.current.primaryNeonGreen,
          ),
        ),
        appBar: CustomAppBar(color: Palette.current.black,
            actions: true,
        onAction: (){
            Navigator.of(context, rootNavigator: true).push(
                AddCollection.route(
                    context, widget.itemId, widget.urlImage, widget.catalogItemName ?? ""));
        }),
        body: SizedBox(child:
         SingleChildScrollView(
           controller: scroll,
        physics: const ClampingScrollPhysics(),
        padding: const EdgeInsets.all(0),
    scrollDirection: Axis.vertical,
    child:
        Container(
                    width: MediaQuery.of(context).size.width,
                    decoration:
                        BoxDecoration(color: Palette.current.blackSmoke),
                    child: _getBody(
                        widget.saleHIstoryList)
                        )
        )));
  }

  Widget _getBody(List<SalesHistoryModel>? historyList) {
    return _dataDetail(historyList, _scrollController!);
  }

  Widget _dataDetail(
      List<SalesHistoryModel>? historyList, ScrollController scrollController) {
    return Column(
      children: [
        HeadWidget(
            addFavorite: (val) {
              setState(() {
                widget.addFavorite(val);
                favorite = val;
              });
            },
            favorite: favorite,
            isFromSaleHistory: false,
            urlImage: widget.urlImage,
            catalogItemName: widget.catalogItemName,
            lastSale: widget.lastSale,
            sale: false,
            available: widget.available,
            itemId: widget.itemId, 
            saleHistory: const [],),
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
