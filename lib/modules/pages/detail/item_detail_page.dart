import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swagapp/generated/l10n.dart';
import 'package:swagapp/modules/common/ui/loading.dart';
import 'package:swagapp/modules/common/utils/palette.dart';
import '../../blocs/detail_bloc/detail_bloc.dart';
import '../../blocs/sale_history/sale_history_bloc.dart';
import '../../common/ui/custom_app_bar.dart';
import '../../common/utils/custom_route_animations.dart';
import '../../data/shared_preferences/shared_preferences_service.dart';
import '../../di/injector.dart';
import '../../models/detail/detail_item_model.dart';
import '../add/collection/add_collection_page.dart';
import '../login/create_account_page.dart';
import 'intem_head.dart';
import 'item_collection.dart';
import 'item_rarity.dart';
import 'item_switched.dart';

class ItemDetailPage extends StatefulWidget {
  static const name = '/ItemDetail';
  ItemDetailPage({Key? key, required this.catalogItemId}) : super(key: key);
  String catalogItemId;
  static Route route(String catalogItemId) => PageRoutes.material(
        settings: const RouteSettings(name: name),
        builder: (context) => ItemDetailPage(
          catalogItemId: catalogItemId,
        ),
      );

  @override
  State<ItemDetailPage> createState() => _ItemDetailPageState();
}

class _ItemDetailPageState extends State<ItemDetailPage> {
  late final ScrollController? _scrollController =
      PrimaryScrollController.of(context);

  ValueNotifier<bool> _myActionsFlag = ValueNotifier<bool>(false);
  ValueNotifier<int?> _collectionNum = ValueNotifier<int?>(null);

  bool isLogged = false;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    isLogged = getIt<PreferenceRepositoryService>().isLogged();

    context
        .read<DetailBloc>()
        .add(DetailEvent.getDetailItem(widget.catalogItemId));

    _myActionsFlag.addListener(() => {
          if (_myActionsFlag.value)
            {
              Future.delayed(const Duration(milliseconds: 100), () {
                setState(() {});
              })
            }
        });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Palette.current.black,
        resizeToAvoidBottomInset: true,
        appBar: CustomAppBar(
          onAction: () {
            if (isLogged) {
              Navigator.of(context, rootNavigator: true)
                  .push(AddCollection.route(context));
            } else {
              Navigator.of(context, rootNavigator: true)
                  .push(CreateAccountPage.route());
            }
          },
          actions: true,
          collections: _collectionNum.value,
        ),
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
                _myActionsFlag.value = true;
                //TODO: este valor valida
                _collectionNum.value = 0;
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
                        lastSale: dataDetail[index].saleInfo,
                        catalogItemDescription:
                            dataDetail[index].catalogItemDescription,
                        catalogItemDescriptionShort:
                            dataDetail[index].catalogItemDescriptionShort,
                        sale: dataDetail[index].forSale,
                        favorite: dataDetail[index].inFavorites,
                        available: dataDetail[index].numberAvailable,
                        saleHistory: [],
                        itemId: dataDetail[index].catalogItemId),
                    RarityWidget(
                        rarity: dataDetail[index].rarityScore,
                        released: dataDetail[index].released,
                        releaseType: dataDetail[index].releasedType,
                        totalMade: dataDetail[index].totalMade,
                        retail: dataDetail[index].retail,
                        available: dataDetail[index].numberAvailable),
                    CollectionWidget(
                        sale: dataDetail[index].forSale,
                        dataCollection: dataDetail[index].myCollection,
                        lastSale: dataDetail[index].saleInfo,
                        available: dataDetail[index].numberAvailable),
                  ],
                ),
              ),
              const ItemSwitched()
            ],
          );
        });
  }

  void makeCall() {
    context
        .read<SalesHistoryBloc>()
        .add(SalesHistoryEvent.getSalesHistory(widget.catalogItemId));

    context
        .read<DetailBloc>()
        .add(DetailEvent.getDetailItem(widget.catalogItemId));
  }
}
