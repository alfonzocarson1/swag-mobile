import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swagapp/generated/l10n.dart';
import 'package:swagapp/modules/common/ui/loading.dart';
import 'package:swagapp/modules/common/utils/palette.dart';
import 'package:swagapp/modules/pages/detail/item_related.dart';
import '../../blocs/detail_bloc/detail_bloc.dart';
import '../../common/ui/custom_app_bar.dart';
import '../../common/utils/custom_route_animations.dart';
import '../../models/detail/detail_item_model.dart';
import 'intem_head.dart';
import 'item_collection.dart';
import 'item_rarity.dart';

class ItemDetailPage extends StatefulWidget {
  static const name = '/ItemDetail';
  const ItemDetailPage({Key? key}) : super(key: key);

  static Route route() => PageRoutes.material(
        settings: const RouteSettings(name: name),
        builder: (context) => const ItemDetailPage(),
      );

  @override
  State<ItemDetailPage> createState() => _ItemDetailPageState();
}

class _ItemDetailPageState extends State<ItemDetailPage> {
  late final ScrollController? _scrollController =
      PrimaryScrollController.of(context);

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
        body: BlocConsumer<DetailBloc, DetailState>(
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
              loadedDetailItems: (state) {
                return _getBody(state.detaItemlList);
              },
            );
          },
        ));
  }

  Widget _getBody(List<DetailItemModel> dataDetail) {
    return RefreshIndicator(
      onRefresh: () async {
        makeCall();
        return Future.delayed(const Duration(milliseconds: 1500));
      },
      child: dataDetail.isNotEmpty
          ? _dataDetail(dataDetail, _scrollController!)
          : ListView.builder(
              padding: EdgeInsets.zero,
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

  Widget _dataDetail(
      List<DetailItemModel> dataDetail, ScrollController scrollController) {
    return ListView.separated(
        padding: EdgeInsets.zero,
        controller: scrollController,
        separatorBuilder: (context, index) => const Padding(
              padding: EdgeInsets.symmetric(horizontal: 20),
              child: Divider(
                color: Colors.transparent,
              ),
            ),
        itemCount: dataDetail.length,
        itemBuilder: (context, index) {
          return Column(
            children: [
              Container(
                width: MediaQuery.of(context).size.width,
                decoration: BoxDecoration(
                  color: Palette.current.blackSmoke,
                ),
                child: Column(
                  children: [
                    HeadWidget(
                      urlImage: dataDetail[index].catalogItemImage,
                      catalogItemName: dataDetail[index].catalogItemName,
                      lastSale: dataDetail[index].lastSale,
                      catalogItemDescription:
                          dataDetail[index].catalogItemDescription,
                      sale: dataDetail[index].sale,
                      available: dataDetail[index].numberAvailable,
                      saleHistory: [],
                    ),
                    RarityWidget(
                        rarity: dataDetail[index].rarityScore[index],
                        released: dataDetail[index].released,
                        releaseType: dataDetail[index].releasedType,
                        totalMade: dataDetail[index].totalMade,
                        retail: dataDetail[index].retail,
                        available: dataDetail[index].numberAvailable),
                    CollectionWidget(
                      sale: dataDetail[index].sale,
                      dataCollection: dataDetail[index].myCollection,
                      lastSale: dataDetail[index].lastSale,
                    ),
                  ],
                ),
              ),
              RelatedItemsWidget(
                  dataRelated: dataDetail[index].similarItemList),
            ],
          );
        });
  }

  void makeCall() {
    context.read<DetailBloc>().add(const DetailEvent.getDetailItem());
  }
}
