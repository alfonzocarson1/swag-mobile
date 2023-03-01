import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swagapp/modules/models/search/catalog_item_model.dart';

import '../../../../generated/l10n.dart';
import '../../../blocs/collection_bloc/collection_bloc.dart';
import '../../../common/ui/loading.dart';
import '../../../common/ui/pushed_header.dart';
import '../../../common/ui/search_input.dart';
import '../../../common/utils/custom_route_animations.dart';
import '../../../common/utils/palette.dart';
import '../../../common/utils/size_helper.dart';
import '../../search/search_on_tap_page.dart';
import 'add_collection_page.dart';
import 'collection_unknown_product.dart';

class SelectItemPage extends StatefulWidget {
  static const name = '/SelectItemPage';
  const SelectItemPage({super.key});

  static Route route() => PageRoutes.material(
        settings: const RouteSettings(name: name),
        builder: (context) => const SelectItemPage(),
      );

  @override
  State<SelectItemPage> createState() => _SelectItemPageState();
}

class _SelectItemPageState extends State<SelectItemPage> {
  late ResponsiveDesign _responsiveDesign;
  final TextEditingController _textEditingController = TextEditingController();

  @override
  Widget build(BuildContext context) {
    _responsiveDesign = ResponsiveDesign(context);
    return Scaffold(
        appBar: PushedHeader(
          showBackButton: true,
          title: Align(
            alignment: Alignment.centerRight,
            child: Text(S.of(context).select_item,
                style: Theme.of(context).textTheme.displayLarge!.copyWith(
                    letterSpacing: 1,
                    fontWeight: FontWeight.w300,
                    fontFamily: "Knockout",
                    fontSize: 30,
                    color: Palette.current.primaryNeonGreen)),
          ),
          customWidget: Column(
            children: [
              _searchField(context, S.of(context).search_hint),
              Container(
                color: Palette.current.darkGray,
                height: 0.2,
              ),
            ],
          ),
          height: 120,
        ),
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
              loadedCollectionItems: (state) {
                return _getBody(state.dataCollectionlList);
              },
            );
          },
        ));
  }

  Widget _getBody(List<CatalogItemModel> soldList) {
    return RefreshIndicator(
      onRefresh: () async {
        makeCall();
        return Future.delayed(const Duration(milliseconds: 1500));
      },
      child: soldList.isNotEmpty
          ? Stack(
              children: [
                Padding(
                  padding: const EdgeInsets.only(
                      top: 20, left: 20, right: 20, bottom: 70),
                  child: GridView.builder(
                    shrinkWrap: true,
                    gridDelegate:
                        const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 2,
                      crossAxisSpacing: 12.0,
                      mainAxisSpacing: 12.0,
                      mainAxisExtent: 215,
                    ),
                    itemCount: soldList.length,
                    itemBuilder: (_, index) {
                      return GestureDetector(
                        onTap: () {
                          Navigator.of(context, rootNavigator: true)
                              .push(AddCollection.route(context));
                        },
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(
                              children: [
                                SizedBox(
                                  height:
                                      MediaQuery.of(context).size.width * 0.40,
                                  child: ClipRRect(
                                    child: CachedNetworkImage(
                                      fit: BoxFit.fitHeight,
                                      imageUrl:
                                          soldList[index].catalogItemImage,
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
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 5,
                            ),
                            Text(soldList[index].catalogItemName,
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
                            Text(soldList[index].saleInfo,
                                overflow: TextOverflow.fade,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall!
                                    .copyWith(
                                        fontWeight: FontWeight.w300,
                                        fontSize: 13,
                                        color:
                                            Palette.current.primaryNeonGreen)),
                          ],
                        ),
                      );
                    },
                  ),
                ),
                Positioned(
                    bottom: 0,
                    right: 0,
                    child: Container(
                      height: MediaQuery.of(context).size.width * 0.20,
                      width: MediaQuery.of(context).size.width,
                      decoration: BoxDecoration(
                        color: Palette.current.blackSmoke,
                      ),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 20),
                        child: Align(
                          alignment: Alignment.center,
                          child: GestureDetector(
                            onTap: () {
                              Navigator.of(context, rootNavigator: true).push(
                                  CollectionUnknownProductPage.route(context));
                            },
                            child: Center(
                              child: Container(
                                  height: 50,
                                  width: MediaQuery.of(context).size.width,
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          color:
                                              Palette.current.primaryNeonGreen),
                                      color: Colors.transparent),
                                  child: Row(
                                    mainAxisAlignment: MainAxisAlignment.center,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.center,
                                    children: [
                                      Image.asset(
                                        "assets/icons/Trending.png",
                                        height: 20,
                                        width: 20,
                                      ),
                                      const SizedBox(
                                        width: 15,
                                      ),
                                      Text(S.of(context).i_do_not_know,
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodyLarge!
                                              .copyWith(
                                                  fontFamily: "Knockout",
                                                  fontSize: 25,
                                                  letterSpacing: 1,
                                                  fontWeight: FontWeight.w500,
                                                  color:
                                                      Palette.current.white)),
                                    ],
                                  )),
                            ),
                          ),
                        ),
                      ),
                    ))
              ],
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
        .read<CollectionBloc>()
        .add(const CollectionEvent.getCollectionItem());
  }

  Widget _searchField(BuildContext context, String title) {
    return Row(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 16.0, top: 4),
          child: Image.asset(
            "assets/icons/Search.png",
            height: 20,
            width: 20,
          ),
        ),
        Expanded(
          child: InkWell(
            onTap: () {
              Navigator.of(context, rootNavigator: true)
                  .push(SearchOnTapPage.route()); //_textEditingController
            },
            child: SearchInput(
                prefixIcon: null,
                suffixIcon: null,
                enabled: false,
                controller: _textEditingController,
                hint: title,
                resultViewBuilder: (_, controller) => Container(),
                onCancel: () {
                  // _textEditingController.text = '';
                  // context
                  //     .read<CategoryBloc>()
                  //     .add(const CategoryEvent.refresh());
                  // context.read<SearchBloc>().add(const SearchEvent.reset());
                }),
          ),
        ),
      ],
    );
  }
}
