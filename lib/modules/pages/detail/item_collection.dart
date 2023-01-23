import 'package:flutter/material.dart';

import '../../../generated/l10n.dart';
import '../../common/ui/primary_button.dart';
import '../../common/utils/palette.dart';
import '../../models/detail/detail_collection_model.dart';

class CollectionWidget extends StatefulWidget {
  const CollectionWidget(
      {super.key, required this.dataCollection, this.lastSale});

  final List<DetailCollectionModel>? dataCollection;
  final String? lastSale;

  @override
  State<CollectionWidget> createState() => _CollectionWidgetState();
}

class _CollectionWidgetState extends State<CollectionWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const SizedBox(
          height: 30,
        ),
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Row(children: <Widget>[
            Image.asset(
              "assets/images/Avatar.png",
              scale: 3,
            ),
            const SizedBox(
              width: 8,
            ),
            Text(S.of(context).my_collection,
                style: Theme.of(context).textTheme.displayLarge!.copyWith(
                    letterSpacing: 1,
                    fontWeight: FontWeight.w300,
                    fontFamily: "Knockout",
                    fontSize: 27,
                    color: Palette.current.white)),
            const SizedBox(
              width: 10,
            ),
            Expanded(
                child: Divider(
              color: Palette.current.grey,
            )),
          ]),
        ),
        const SizedBox(
          height: 20,
        ),
        Visibility(
          //TODO: If this list brings data about a collection this code column should not be visible
          visible: widget.dataCollection!.isNotEmpty,
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 10),
            child: Column(
              children: [
                ListTile(
                  visualDensity: const VisualDensity(vertical: -4),
                  dense: true,
                  leading: Text(S.of(context).acquired,
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            fontSize: 16,
                            letterSpacing: 0.3,
                            color: Palette.current.primaryWhiteSmoke,
                          )),
                  trailing: Text(widget.dataCollection![0].acquired,
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            fontSize: 16,
                            letterSpacing: 0.3,
                            color: Palette.current.primaryNeonGreen,
                          )),
                ),
                ListTile(
                  visualDensity: const VisualDensity(vertical: -4),
                  dense: true,
                  leading: Text(S.of(context).paid,
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            fontSize: 16,
                            letterSpacing: 0.3,
                            color: Palette.current.primaryWhiteSmoke,
                          )),
                  trailing: Text(widget.dataCollection![0].paid,
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            fontSize: 16,
                            letterSpacing: 0.3,
                            color: Palette.current.primaryNeonGreen,
                          )),
                ),
                const SizedBox(
                  height: 30,
                ),
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 15),
                  child: Column(
                    children: [
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: PrimaryButton(
                          title: "${S.of(context).buy_for} ${widget.lastSale}",
                          onPressed: () {},
                          type: PrimaryButtonType.green,
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: PrimaryButton(
                          title:
                              "${S.of(context).sell_for}  ${widget.dataCollection![0].salePrice}",
                          onPressed: () {},
                          type: PrimaryButtonType.pink,
                        ),
                      )
                    ],
                  ),
                ),
                const SizedBox(
                  height: 30,
                )
              ],
            ),
          ),
        ),
        Visibility(
            //TODO: If this list brings data about a collection this code column should not be visible
            visible: widget.dataCollection!.isEmpty,
            child: Column(
              children: [
                Padding(
                  padding: const EdgeInsets.symmetric(horizontal: 20),
                  child: Column(
                    children: [
                      RichText(
                        text: TextSpan(children: [
                          TextSpan(
                              text: 'This cover is not in your collection, ',
                              style: TextStyle(
                                fontSize: 16,
                                letterSpacing: 0.3,
                                color: Palette.current.primaryWhiteSmoke,
                              )),
                          TextSpan(
                              text: 'make an offer ',
                              style: TextStyle(
                                fontSize: 16,
                                letterSpacing: 0.3,
                                color: Palette.current.blueNeon,
                              )),
                          TextSpan(
                              text: 'to see if you can get one.',
                              style: TextStyle(
                                fontSize: 16,
                                letterSpacing: 0.3,
                                color: Palette.current.primaryWhiteSmoke,
                              ))
                        ]),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: PrimaryButton(
                          title: S.of(context).make_an_offer,
                          onPressed: () {},
                          type: PrimaryButtonType.blueNeon,
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      SizedBox(
                        width: MediaQuery.of(context).size.width,
                        child: PrimaryButton(
                          title: S.of(context).notify_available,
                          onPressed: () {},
                          type: PrimaryButtonType.primaryEerieBlack,
                        ),
                      ),
                      const SizedBox(
                        height: 30,
                      )
                    ],
                  ),
                )
              ],
            ))
      ],
    );
  }
}
