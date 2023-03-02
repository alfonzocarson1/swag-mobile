import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swagapp/modules/models/search/catalog_item_model.dart';

import '../../../generated/l10n.dart';
import '../../blocs/sold_bloc/sold_bloc.dart';
import '../../common/ui/loading.dart';
import '../../common/utils/palette.dart';
import '../../common/utils/size_helper.dart';

class SoldPage extends StatefulWidget {
  const SoldPage({super.key});

  @override
  State<SoldPage> createState() => _SoldPageState();
}

class _SoldPageState extends State<SoldPage> {
  late ResponsiveDesign _responsiveDesign;

  @override
  Widget build(BuildContext context) {
    _responsiveDesign = ResponsiveDesign(context);
    return Scaffold(
        backgroundColor: Palette.current.primaryNero,
        body: BlocConsumer<SoldBloc, SoldState>(
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
              loadedSoldItems: (state) {
                return _getBody(state.dataSoldList);
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
          ? Padding(
              padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
              child: GridView.builder(
                shrinkWrap: true,
                gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 12.0,
                  mainAxisSpacing: 12.0,
                  mainAxisExtent: 215,
                ),
                itemCount: soldList.length,
                itemBuilder: (_, index) {
                  return Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Stack(
                        children: [
                          SizedBox(
                            height: MediaQuery.of(context).size.width * 0.38,
                            child: ClipRRect(
                              child: CachedNetworkImage(
                                fit: BoxFit.fitHeight,
                                imageUrl: soldList[index].catalogItemImage,
                                placeholder: (context, url) => SizedBox(
                                  height: 200,
                                  child: Center(
                                    child: CircularProgressIndicator(
                                      color: Palette.current.primaryNeonGreen,
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
                                  color: Palette.current.primaryNeonGreen)),
                    ],
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
    context.read<SoldBloc>().add(const SoldEvent.getSoldItem());
  }
}
