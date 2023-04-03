import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import '../../../generated/l10n.dart';
import '../../common/ui/popup_delete_item_collection.dart';
import '../../common/ui/popup_list_item_sale.dart';
import '../../common/ui/primary_button.dart';
import '../../common/utils/palette.dart';
import '../../data/shared_preferences/shared_preferences_service.dart';
import '../../di/injector.dart';
import '../../models/detail/detail_collection_model.dart';
import '../../models/detail/detail_sale_info_model.dart';
import '../add/buy/buy_for_sale.dart';
import '../add/collection/list_for_sale_page.dart';
import '../login/create_account_page.dart';

class CollectionWidget extends StatefulWidget {
  CollectionWidget(
      {super.key,
      required this.dataCollection,
      required this.lastSale,
      required this.sale,
      this.available,
      required this.catalogId,
      required this.catalogItemName,
      required this.favorite,
      required this.urlImage,
      required this.addFavorite});

  final List<DetailCollectionModel>? dataCollection;
  final DetailSaleInfoModel lastSale;
  final bool sale;
  final int? available;
  final String catalogId;
  final String catalogItemName;
  final bool favorite;
  final String urlImage;
  Function(bool) addFavorite;
  @override
  State<CollectionWidget> createState() => _CollectionWidgetState();
}

class _CollectionWidgetState extends State<CollectionWidget> {
  bool isLogged = false;
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    isLogged = getIt<PreferenceRepositoryService>().isLogged();
  }

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
          child: (!widget.sale && widget.dataCollection!.isEmpty)
              ? Column(
                  children: [
                    const SizedBox(
                      height: 20,
                    ),
                    RichText(
                      text: TextSpan(children: [
                        TextSpan(
                            text: 'This item is not in your collection. ',
                            style: TextStyle(
                              fontSize: 15,
                              color: Palette.current.primaryWhiteSmoke,
                            )),
                        TextSpan(
                            text: 'Select to be notified ',
                            style: TextStyle(
                              fontSize: 15,
                              color: Palette.current.blueNeon,
                            )),
                        TextSpan(
                            text: 'when one becomes available.',
                            style: TextStyle(
                              fontSize: 15,
                              color: Palette.current.primaryWhiteSmoke,
                            ))
                      ]),
                    ),
                  ],
                )
              : (widget.sale && widget.dataCollection!.isEmpty)
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
          child: widget.dataCollection!.isNotEmpty
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
          child: (widget.sale && widget.dataCollection!.isEmpty)
              ? Column(
                  children: [
                    SizedBox(
                      width: MediaQuery.of(context).size.width,
                      child: PrimaryButton(
                        title:
                            "${S.of(context).buy_for} ${widget.lastSale.maxPrice}",
                        onPressed: () {
                          if (isLogged) {
                            Navigator.of(context, rootNavigator: true)
                                .push(BuyForSale.route(
                              widget.catalogId,
                              widget.catalogItemName,
                              widget.lastSale,
                              widget.urlImage,
                              widget.favorite,
                              widget.sale,
                              widget.available ?? 0,
                              (val) {
                                widget.addFavorite(val);
                              },
                            ));
                          } else {
                            Navigator.of(context, rootNavigator: true)
                                .push(CreateAccountPage.route());
                          }
                        },
                        type: PrimaryButtonType.green,
                      ),
                    )
                  ],
                )
              : (!widget.sale && widget.dataCollection!.isEmpty)
                  ? Column(
                      children: [
                        const SizedBox(
                          height: 30,
                        ),
                        SizedBox(
                          width: MediaQuery.of(context).size.width,
                          child: PrimaryButton(
                            title: S.of(context).notify_available,
                            onPressed: () {
                              if (isLogged) {
                              } else {
                                Navigator.of(context, rootNavigator: true)
                                    .push(CreateAccountPage.route());
                              }
                            },
                            type: PrimaryButtonType.primaryEerieBlack,
                          ),
                        ),
                        const SizedBox(
                          height: 20,
                        )
                      ],
                    )
                  : (widget.sale && widget.dataCollection!.isNotEmpty)
                      ? Column(
                          children: [
                            SizedBox(
                              width: MediaQuery.of(context).size.width,
                              child: PrimaryButton(
                                title:
                                    "${S.of(context).buy_for} ${widget.lastSale.maxPrice}",
                                onPressed: () {
                                  if (isLogged) {
                                    Navigator.of(context, rootNavigator: true)
                                        .push(BuyForSale.route(
                                            widget.catalogId,
                                            widget.catalogItemName,
                                            widget.lastSale,
                                            widget.urlImage,
                                            widget.favorite,
                                            widget.sale,
                                            widget.available ?? 0, (val) {
                                      widget.addFavorite(val);
                                    }));
                                  } else {
                                    Navigator.of(context, rootNavigator: true)
                                        .push(CreateAccountPage.route());
                                  }
                                },
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
                                  if (isLogged) {
                                    widget.dataCollection!.length > 1
                                        ? showDialog(
                                            context: context,
                                            barrierDismissible: false,
                                            builder: (BuildContext context) {
                                              return PopUpListItemSale(
                                                  catalogItemName:
                                                      widget.catalogItemName,
                                                  dataCollection:
                                                      widget.dataCollection!);
                                            })
                                        : Navigator.of(context,
                                                rootNavigator: true)
                                            .push(ListForSalePage.route(
                                                widget.dataCollection![0],
                                                widget.catalogItemName));
                                  } else {
                                    Navigator.of(context, rootNavigator: true)
                                        .push(CreateAccountPage.route());
                                  }
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
                                onPressed: () {
                                  if (isLogged) {
                                    showDialog(
                                        context: context,
                                        barrierDismissible: false,
                                        builder: (BuildContext context) {
                                          return PopUpDeleteItemCollection(
                                              dataCollection:
                                                  widget.dataCollection!);
                                        });
                                  } else {
                                    Navigator.of(context, rootNavigator: true)
                                        .push(CreateAccountPage.route());
                                  }
                                },
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
                                onPressed: () {
                                  if (isLogged) {
                                    showDialog(
                                        context: context,
                                        barrierDismissible: false,
                                        builder: (BuildContext context) {
                                          return PopUpDeleteItemCollection(
                                              dataCollection:
                                                  widget.dataCollection!);
                                        });
                                  } else {
                                    Navigator.of(context, rootNavigator: true)
                                        .push(CreateAccountPage.route());
                                  }
                                },
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
