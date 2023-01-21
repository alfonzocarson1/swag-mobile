import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../common/utils/palette.dart';
import '../../models/detail/similar_item_model.dart';

class RelatedItemsWidget extends StatefulWidget {
  const RelatedItemsWidget({super.key, required this.dataRelated});

  final List<SimilarItemModel>? dataRelated;

  @override
  State<RelatedItemsWidget> createState() => _RelatedItemsWidgetState();
}

class _RelatedItemsWidgetState extends State<RelatedItemsWidget> {
  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
        color: Palette.current.primaryEerieBlack,
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 20, right: 20, top: 20),
        child: Column(
          children: [
            Align(
              alignment: Alignment.centerLeft,
              child: Text("SIMILAR ITEMS",
                  style: Theme.of(context).textTheme.displayLarge!.copyWith(
                      letterSpacing: 1,
                      fontWeight: FontWeight.w300,
                      fontFamily: "Knockout",
                      fontSize: 30,
                      color: Palette.current.white)),
            ),
            const SizedBox(
              height: 30,
            ),
            ListView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                itemCount: 1,
                itemBuilder: (BuildContext context, int index) {
                  return Row(
                    children: [
                      Expanded(
                          flex: 2,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Stack(
                                children: [
                                  CachedNetworkImage(
                                    imageUrl:
                                        widget.dataRelated![0].catalogItemImage,
                                    placeholder: (context, url) => SizedBox(
                                      height: 360,
                                      child: Center(
                                        child: CircularProgressIndicator(
                                          color:
                                              Palette.current.primaryNeonGreen,
                                          backgroundColor: Colors.white,
                                        ),
                                      ),
                                    ),
                                    errorWidget: (context, url, error) =>
                                        Image.asset(
                                            "assets/images/ProfilePhoto.png"),
                                  ),
                                  Positioned(
                                      top: 0,
                                      right: 0,
                                      child: IconButton(
                                        icon: const Icon(Icons.add),
                                        tooltip: 'Open shopping cart',
                                        onPressed: () {
                                          // handle the press
                                        },
                                      )),
                                ],
                              ),
                              Text(widget.dataRelated![0].catalogItemName,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: Theme.of(context)
                                      .textTheme
                                      .displayLarge!
                                      .copyWith(
                                          letterSpacing: 1,
                                          fontWeight: FontWeight.w300,
                                          fontFamily: "Knockout",
                                          fontSize: 30,
                                          color: Palette.current.white)),
                              Text("FOR SALE: ${widget.dataRelated![0].retail}",
                                  overflow: TextOverflow.fade,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall!
                                      .copyWith(
                                          fontWeight: FontWeight.w300,
                                          color: Palette
                                              .current.primaryNeonGreen)),
                            ],
                          )),
                      const SizedBox(
                        width: 20,
                      ),
                      Expanded(
                          flex: 2,
                          child: Column(
                            mainAxisAlignment: MainAxisAlignment.start,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Stack(
                                children: [
                                  CachedNetworkImage(
                                    imageUrl:
                                        widget.dataRelated![1].catalogItemImage,
                                    placeholder: (context, url) => SizedBox(
                                      height: 360,
                                      child: Center(
                                        child: CircularProgressIndicator(
                                          color:
                                              Palette.current.primaryNeonGreen,
                                          backgroundColor: Colors.white,
                                        ),
                                      ),
                                    ),
                                    errorWidget: (context, url, error) =>
                                        Image.asset(
                                            "assets/images/ProfilePhoto.png"),
                                  ),
                                  Positioned(
                                      top: 0,
                                      right: 0,
                                      child: IconButton(
                                        icon: const Icon(Icons.add),
                                        tooltip: 'Open shopping cart',
                                        onPressed: () {
                                          // handle the press
                                        },
                                      )),
                                ],
                              ),
                              Text(widget.dataRelated![1].catalogItemName,
                                  maxLines: 1,
                                  overflow: TextOverflow.ellipsis,
                                  style: Theme.of(context)
                                      .textTheme
                                      .displayLarge!
                                      .copyWith(
                                          letterSpacing: 1,
                                          fontWeight: FontWeight.w300,
                                          fontFamily: "Knockout",
                                          fontSize: 30,
                                          color: Palette.current.white)),
                              Text("FOR SALE: ${widget.dataRelated![0].retail}",
                                  overflow: TextOverflow.fade,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall!
                                      .copyWith(
                                          fontWeight: FontWeight.w300,
                                          color: Palette
                                              .current.primaryNeonGreen)),
                            ],
                          )),
                    ],
                  );
                }),
            const SizedBox(
              height: 30,
            )
          ],
        ),
      ),
    );
  }
}
