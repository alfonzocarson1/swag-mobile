import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swagapp/modules/di/injector.dart';

import 'package:swagapp/modules/common/ui/refresh_widget.dart';

import '../../../generated/l10n.dart';

import '../../common/ui/simple_loader.dart';
import '../../common/utils/custom_route_animations.dart';
import '../../common/utils/palette.dart';
import '../../cubits/collections/get_collections_cubit.dart';
import '../../models/collection/get_collection_model.dart';
import '../../models/collection/get_list_collection_model.dart';
import '../add/collection/add_to_wall_collection.dart';

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
  List<GetCollectionModel> collectionList = [];

  @override
  void initState() {
    super.initState();
    loadList();
  }

  Future loadList() async {
    getIt<CollectionProfileCubit>().loadResults();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<CollectionProfileCubit, CollectionCubitState>(
        builder: (context, state) {
      return state.maybeWhen(
          orElse: () {
            return Container();
          },
          initial: () => ListView.builder(
                itemBuilder: (_, index) => SizedBox(
                  height: MediaQuery.of(context).size.height * 0.5,
                  child: const Center(child: SimpleLoader()),
                ),
                itemCount: 1,
              ),
          loading: (bool isFirstFetch) {
            return Container();
          },
          error: (String message) {
            return Container();
          },
          loadedProfileCollections:
              (List<ListCollectionProfileResponseModel> profileCollectionList) {
            collectionList = [...profileCollectionList.first.collectionList];

            return _getBody(collectionList);
          });
    });
  }

  Widget _getBody(List<GetCollectionModel> collectionList) {
    return collectionList.isNotEmpty
        ? RefreshWidget(
            onRefresh: loadList,
            child: Padding(
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
            ),
          )
        : ListView.builder(
            itemBuilder: (_, index) => SizedBox(
              height: MediaQuery.of(context).size.height * 0.30,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 90.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/UnFavorite.png",
                      scale: 3,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: Text(
                        textAlign: TextAlign.center,
                        S.of(context).empty_collection,
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            fontFamily: "KnockoutCustom",
                            fontWeight: FontWeight.w300,
                            fontSize: 30,
                            letterSpacing: 1.2,
                            color: Palette.current.darkGray),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            itemCount: 1,
          );
  }
}
