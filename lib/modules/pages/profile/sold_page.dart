import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swagapp/modules/models/sold/product_item_sold.dart';

import '../../../generated/l10n.dart';
import '../../blocs/sold_bloc/sold_bloc.dart';
import '../../common/ui/refresh_widget.dart';
import '../../common/ui/simple_loader.dart';
import '../../common/utils/palette.dart';
import '../../common/utils/size_helper.dart';
import '../../cubits/sold/get_sold_cubit.dart';
import '../../di/injector.dart';

class SoldPage extends StatefulWidget {
  const SoldPage({super.key});

  @override
  State<SoldPage> createState() => _SoldPageState();
}

class _SoldPageState extends State<SoldPage> {
  late ResponsiveDesign _responsiveDesign;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    loadList();
  }

  Future loadList() async {
    getIt<SoldProfileCubit>().loadSoldList();
  }

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<SoldProfileCubit, SoldCubitState>(
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
        loadedSoldItems: (List<ProductItemSold> dataSoldList) {
          return _getBody(dataSoldList);
        },
      );
    });
  }

  Widget _getBody(List<ProductItemSold> soldList) {
    return RefreshWidget(
      onRefresh: loadList,
      child: soldList.isNotEmpty
          ? GridView.builder(
              padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
              shrinkWrap: true,
              physics: const ScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                crossAxisSpacing: 19.0,
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
                          width: MediaQuery.of(context).size.width * 0.45,
                          height: MediaQuery.of(context).size.width * 0.37,
                          child: ClipRRect(
                            child: CachedNetworkImage(
                              fit: BoxFit.cover,
                              imageUrl:
                                  soldList[index].productItemImageUrls.first,
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
                                  Image.asset("assets/images/ProfilePhoto.png"),
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 5,
                    ),
                    Text(soldList[index].productItemName.toUpperCase(),
                        maxLines: 1,
                        overflow: TextOverflow.ellipsis,
                        style: Theme.of(context)
                            .textTheme
                            .displayLarge!
                            .copyWith(
                                letterSpacing: 1,
                                fontWeight: FontWeight.w300,
                                fontFamily: "KnockoutCustom",
                                fontSize: 21,
                                color: Palette.current.white)),
                    Text(
                        soldList[index].forSale ?? false
                            ? '${S.of(context).last_sale} \$${soldList[index].lastSale}'
                            : '${S.of(context).from}: \$${soldList[index].productItemPrice}',
                        overflow: TextOverflow.fade,
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            fontWeight: FontWeight.w300,
                            fontSize: 13,
                            color: Palette.current.primaryNeonGreen)),
                  ],
                );
              },
            )
          : ListView.builder(
              shrinkWrap: true,
              itemBuilder: (_, index) => SizedBox(
                height: MediaQuery.of(context).size.height * 0.30,
                child: Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 70.0),
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
                          S.of(context).empty_sold,
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall!
                              .copyWith(
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
            ),
    );
  }

  void makeCall() {
    context.read<SoldBloc>().add(const SoldEvent.getSoldItem());
  }
}
