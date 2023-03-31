import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swagapp/modules/models/search/catalog_item_model.dart';
import 'package:swagapp/modules/common/ui/shrunken_item_widget.dart';

import '../../../generated/l10n.dart';
import '../../blocs/collection_bloc/collection_bloc.dart';
import '../../common/ui/loading.dart';
import '../../common/utils/custom_route_animations.dart';
import '../../common/utils/palette.dart';
import '../../common/utils/size_helper.dart';
import '../../models/collection/get_collection_model.dart';
import '../../models/collection/get_list_collection_model.dart';
import '../add/collection/add_to_wall_collection.dart';
import '../add/collection/select_item_page.dart';
import '../detail/item_detail_page.dart';

class CollectionPage extends StatefulWidget {
  static const name = '/Collection';
  const CollectionPage({Key? key}) : super(key: key);

  static Route route() => PageRoutes.material(
        settings: const RouteSettings(name: name),
        builder: (context) => const CollectionPage(),
      );

  @override
  State<CollectionPage> createState() => _CollectionPageState();
}

class _CollectionPageState extends State<CollectionPage> {
  late ResponsiveDesign _responsiveDesign;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    // BlocProvider.of<CollectionBloc>(context)
    //     .add(const CollectionEvent.getProfileCollections());
  }

  @override
  Widget build(BuildContext context) {
    _responsiveDesign = ResponsiveDesign(context);
    return Scaffold(
        backgroundColor: Palette.current.primaryNero,
        body: BlocConsumer<CollectionBloc, CollectionState>(
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
              loadedProfileCollections: (state) {
                return _getBody(state.profileCollectionList[0].collectionList);
              },
            );
          },
        ));
  }

  Widget _getBody(List<GetCollectionModel> collectionList) {
    return RefreshIndicator(
      onRefresh: () async {
        makeCall();
        return Future.delayed(const Duration(milliseconds: 1500));
      },
      child: collectionList.isNotEmpty
          ? Padding(
              padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
              child: GridView.builder(
                physics: const ScrollPhysics(),
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 17.0,
                  mainAxisSpacing: 12.0,
                  mainAxisExtent: 215,
                ),
                itemCount: collectionList.length + 1,
                itemBuilder: (_, index) {
                  return index == 0
                      ? Column(
                          mainAxisAlignment: MainAxisAlignment.start,
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Container(
                              height: MediaQuery.of(context).size.width * 0.38,
                              color: Colors.black,
                              child: Stack(
                                children: [
                                  Positioned.fill(
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: IconButton(
                                        icon: Image.asset(
                                          'assets/images/plus.png',
                                        ),
                                        onPressed: () {
                                          Navigator.of(context,
                                                  rootNavigator: true)
                                              .push(
                                                  AddToWallCollection.route());
                                        },
                                      ),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(S.of(context).add_new_item,
                                maxLines: 1,
                                overflow: TextOverflow.ellipsis,
                                style: Theme.of(context)
                                    .textTheme
                                    .displayLarge!
                                    .copyWith(
                                        letterSpacing: 1,
                                        fontWeight: FontWeight.w300,
                                        fontFamily: "Knockout",
                                        fontSize: 24,
                                        color: Palette.current.white)),
                          ],
                        )
                      : GestureDetector(
                          onTap: () {
                            Navigator.of(context, rootNavigator: true).push(
                                ItemDetailPage.route(
                                    collectionList[index - 1].catalogItemId,
                                    (val) {}));
                          },
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Stack(
                                children: [
                                  SizedBox(
                                    height: MediaQuery.of(context).size.width *
                                        0.38,
                                    child: ClipRRect(
                                      child: CachedNetworkImage(
                                        fit: BoxFit.fitHeight,
                                        imageUrl: collectionList[index - 1]
                                            .catalogItemImage,
                                        placeholder: (context, url) => SizedBox(
                                          height: 200,
                                          child: Center(
                                            child: CircularProgressIndicator(
                                              color: Palette
                                                  .current.primaryNeonGreen,
                                              backgroundColor: Colors.white,
                                            ),
                                          ),
                                        ),
                                        errorWidget: (context, url, error) =>
                                            Image.asset(
                                                "assets/images/ProfilePhoto.png"),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    top: 7,
                                    right: 0,
                                    child: Visibility(
                                      visible: collectionList[index - 1]
                                          .collectionItems!
                                          .isNotEmpty,
                                      child: Padding(
                                        padding: const EdgeInsets.symmetric(
                                            horizontal: 20),
                                        child: Align(
                                          alignment: Alignment.centerRight,
                                          child: Text(
                                              "${collectionList[index - 1].collectionItems!.length} X",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodySmall!
                                                  .copyWith(
                                                      fontFamily: "Knockout",
                                                      fontSize: 30,
                                                      fontWeight:
                                                          FontWeight.w300,
                                                      color: Palette.current
                                                          .primaryNeonGreen)),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned(
                                    bottom: 0,
                                    right: 0,
                                    child: Visibility(
                                        visible:
                                            collectionList[index - 1].forSale,
                                        child: Container(
                                          height: 30,
                                          width:
                                              MediaQuery.of(context).size.width,
                                          decoration: BoxDecoration(
                                            color:
                                                Palette.current.primaryNeonPink,
                                          ),
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 20),
                                            child: Align(
                                              alignment: Alignment.centerRight,
                                              child: Text(
                                                  '''${collectionList[index - 1].numberAvailable} ${S.of(context).for_sale}''',
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .bodySmall!
                                                      .copyWith(
                                                          fontSize: 13,
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          color: Palette
                                                              .current.white)),
                                            ),
                                          ),
                                        )),
                                  )
                                ],
                              ),
                              const SizedBox(
                                height: 5,
                              ),
                              Text(collectionList[index - 1].catalogItemName,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: Theme.of(context)
                                      .textTheme
                                      .displayLarge!
                                      .copyWith(
                                          letterSpacing: 1,
                                          fontWeight: FontWeight.w300,
                                          fontFamily: "Knockout",
                                          fontSize: 24,
                                          color: Palette.current.white)),
                              Text(
                                  collectionList[index - 1].forSale
                                      ? '${S.of(context).for_sale} ${collectionList[index - 1].saleInfo.minPrice}'
                                      : '${S.of(context).last_sale} ${collectionList[index - 1].saleInfo.lastSale}',
                                  overflow: TextOverflow.fade,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall!
                                      .copyWith(
                                          fontWeight: FontWeight.w300,
                                          fontSize: 13,
                                          color: Palette
                                              .current.primaryNeonGreen)),
                            ],
                          ),
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
            ),
    );
  }

  void makeCall() {
    BlocProvider.of<CollectionBloc>(context)
        .add(const CollectionEvent.getProfileCollections());
  }
}
