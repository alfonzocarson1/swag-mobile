import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../generated/l10n.dart';
import '../../common/ui/popup_list_item_sale.dart';
import '../../common/ui/primary_button.dart';
import '../../common/utils/palette.dart';
import '../../models/detail/detail_collection_model.dart';
import '../add/collection/list_for_Sale_page.dart';

class CollectionWidget extends StatefulWidget {
  const CollectionWidget(
      {super.key,
      required this.dataCollection,
      this.lastSale,
      required this.sale,
      this.available});

  final List<DetailCollectionModel>? dataCollection;
  final String? lastSale;
  final bool sale;
  final int? available;

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
            widget.dataCollection != null
                ? Text("(${widget.dataCollection!.length}X)",
                    style: Theme.of(context).textTheme.displayLarge!.copyWith(
                        letterSpacing: 1,
                        fontWeight: FontWeight.w300,
                        fontFamily: "Knockout",
                        fontSize: 27,
                        color: Palette.current.white))
                : Container(),
            const SizedBox(
              width: 10,
            ),
            Expanded(
                child: Divider(
              color: Palette.current.grey,
            )),
          ]),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20.0),
          child: (!widget.sale && widget.dataCollection == null)
              ? Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: 'This cover is not in your collection, ',
                            style: TextStyle(
                              fontSize: 15,
                              color: Palette.current.primaryWhiteSmoke,
                            )),
                        TextSpan(
                            text: 'make an offer ',
                            style: TextStyle(
                              fontSize: 15,
                              color: Palette.current.blueNeon,
                            )),
                        TextSpan(
                            text: 'to see if you can get one.',
                            style: TextStyle(
                              fontSize: 15,
                              color: Palette.current.primaryWhiteSmoke,
                            ))
                      ]),
                    ),
                  ],
                )
              : (widget.sale && widget.dataCollection == null)
                  ? Column(
                      children: [
                        const SizedBox(
                          height: 20,
                        ),
                        Text(S.of(context).collection,
                            style: TextStyle(
                              fontSize: 15,
                              color: Palette.current.primaryWhiteSmoke,
                            )),
                      ],
                    )
                  : const Text(''),
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 10),
          child: (widget.dataCollection != null &&
                  widget.dataCollection!.isNotEmpty)
              ? Column(
                  children: List.generate(
                      widget.dataCollection!.length,
                      (index) => Column(
                            children: [
                              ListTile(
                                visualDensity:
                                    const VisualDensity(vertical: -4),
                                dense: true,
                                leading: Text(S.of(context).acquired,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall!
                                        .copyWith(
                                          fontSize: 15,
                                          color:
                                              Palette.current.primaryWhiteSmoke,
                                        )),
                                trailing: Text(
                                    DateFormat.yMd().format(DateTime.parse(
                                        widget.dataCollection![index]
                                            .purchaseDate)),
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall!
                                        .copyWith(
                                          fontSize: 15,
                                          color:
                                              Palette.current.primaryWhiteSmoke,
                                        )),
                              ),
                              ListTile(
                                visualDensity:
                                    const VisualDensity(vertical: -4),
                                dense: true,
                                leading: Text(S.of(context).paid,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall!
                                        .copyWith(
                                          fontSize: 15,
                                          color:
                                              Palette.current.primaryWhiteSmoke,
                                        )),
                                trailing: Text(
                                    '${widget.dataCollection![index].purchasePrice}',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall!
                                        .copyWith(
                                          fontSize: 15,
                                          color:
                                              Palette.current.primaryNeonGreen,
                                        )),
                              ),
                              ListTile(
                                visualDensity:
                                    const VisualDensity(vertical: -4),
                                dense: true,
                                leading: Text("${S.of(context).condition}:",
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall!
                                        .copyWith(
                                          fontSize: 15,
                                          color:
                                              Palette.current.primaryWhiteSmoke,
                                        )),
                                trailing: Text(
                                    widget.dataCollection![index].itemCondition,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall!
                                        .copyWith(
                                          fontSize: 15,
                                          color:
                                              Palette.current.primaryNeonPink,
                                        )),
                              ),
                              Visibility(
                                visible:
                                    index != widget.dataCollection!.length - 1,
                                child: Divider(
                                  color: Palette.current.grey,
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                            ],
                          )),
                )
              : const Text(""),
        ),
        const SizedBox(
          height: 20,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 15),
          child: (widget.sale && widget.dataCollection == null)
              ? Column(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: PrimaryButton(
                        title: "${S.of(context).buy_for} ${widget.lastSale}",
                        onPressed: () {},
                        type: PrimaryButtonType.green,
                      ),
                    )
                  ],
                )
              : (!widget.sale && widget.dataCollection == null)
                  ? Column(
                      children: [
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
                          height: 20,
                        )
                      ],
                    )
                  : (widget.sale && widget.dataCollection != null)
                      ? Column(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width,
                              child: PrimaryButton(
                                title:
                                    "${S.of(context).buy_for} ${widget.lastSale}",
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
                                title: S.of(context).list_for_sale_btn,
                                onPressed: () {
                                  widget.dataCollection!.length > 1
                                      ? showDialog(
                                          context: context,
                                          barrierDismissible: false,
                                          builder: (BuildContext context) {
                                            return PopUpListItemSale(
                                                dataCollection:
                                                    widget.dataCollection!);
                                          })
                                      : Navigator.of(context,
                                              rootNavigator: true)
                                          .push(ListForSalePage.route(context));
                                },
                                type: PrimaryButtonType.black,
                              ),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width,
                              child: PrimaryButton(
                                title: S.of(context).remove_collection_btn,
                                onPressed: () {},
                                type: PrimaryButtonType.pink,
                              ),
                            )
                          ],
                        )
                      : Column(
                          children: [
                            const SizedBox(
                              height: 30,
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width,
                              child: PrimaryButton(
                                title: S.of(context).remove_collection_btn,
                                onPressed: () {},
                                type: PrimaryButtonType.pink,
                              ),
                            )
                          ],
                        ),
        )
      ],
    );
  }
}
