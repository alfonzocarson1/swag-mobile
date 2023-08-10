import 'package:flutter/material.dart';
import 'package:intl/intl.dart';
import 'package:swagapp/modules/common/ui/primary_button.dart';

import 'package:swagapp/modules/common/utils/palette.dart';

import '../../../generated/l10n.dart';
import '../../models/detail/detail_collection_model.dart';
import '../../pages/add/collection/list_for_sale_page.dart';
import 'dynamic_toast_messages.dart';

class PopUpListItemSale extends StatefulWidget {
  PopUpListItemSale(
      {super.key,
      required this.dataCollection,
      required this.catalogItemName,
      this.catalogImage});
  final String catalogItemName;
  final List<DetailCollectionModel>? dataCollection;
  String? catalogImage;
  @override
  State<PopUpListItemSale> createState() => _PopUpListItemSaleState();
}

class _PopUpListItemSaleState extends State<PopUpListItemSale> {
  DetailCollectionModel? removeDataCollection;

  @override
  void initState() {
    super.initState();
  }

  List _selecteCategorys = [];
  DetailCollectionModel? collectionSelected;
  bool _showErrorPleaseSelectOne = false;

  void _onCollectionSelected(
      bool selected, DetailCollectionModel collectionData) {
    if (selected == true) {
      setState(() {
        _selecteCategorys = [];
        _selecteCategorys.add(collectionData.profileCollectionItemId);

        collectionSelected = collectionData;
        _showErrorPleaseSelectOne = false;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Dialog(
        insetPadding: const EdgeInsets.all(20),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
        child: Stack(
          children: [
            Container(
              color: Palette.current.blackSmoke,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 30),
                child: Column(
                  mainAxisSize: MainAxisSize.min,
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Column(
                      children: [
                        const SizedBox(
                          height: 40,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(
                              S.of(context).list_item_popup_title.toUpperCase(),
                              textAlign: TextAlign.left,
                              style: Theme.of(context)
                                  .textTheme
                                  .displayMedium!
                                  .copyWith(
                                    fontFamily: "KnockoutCustom",
                                    fontSize: 44,
                                    fontWeight: FontWeight.w300,
                                    color: Palette.current.primaryNeonGreen,
                                  )),
                        ),
                        const SizedBox(
                          height: 10,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text(S.of(context).list_item_popup_desc,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(
                                    fontSize: 15,
                                    letterSpacing: 0.3,
                                    color: Palette.current.primaryWhiteSmoke,
                                  )),
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        SizedBox(
                          height: 200.0,
                          child: ListView.builder(
                              itemCount: 1,
                              itemBuilder: (context, index) {
                                return Column(
                                  children: List.generate(
                                      widget.dataCollection!.length,
                                      (index) => Column(
                                            children: [
                                              Row(
                                                children: [
                                                  SizedBox(
                                                    height: 24.0,
                                                    width: 20.0,
                                                    child: Checkbox(
                                                      checkColor: Colors.black,
                                                      side: const BorderSide(
                                                          color:
                                                              Color(0xff585858),
                                                          width: 1.5),
                                                      value: _selecteCategorys
                                                          .contains(widget
                                                              .dataCollection![
                                                                  index]
                                                              .profileCollectionItemId),
                                                      onChanged:
                                                          (bool? newValue) {
                                                        _onCollectionSelected(
                                                            newValue!,
                                                            widget.dataCollection![
                                                                index]);
                                                        setState(() {});
                                                      },
                                                    ),
                                                  ),
                                                  const SizedBox(
                                                    width: 10,
                                                  ),
                                                  Text(
                                                      "${DateFormat.yMd().format(DateTime.parse(widget.dataCollection![index].purchaseDate))} - ${widget.dataCollection![index].itemCondition}",
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .bodySmall!
                                                          .copyWith(
                                                            fontSize: 15,
                                                            letterSpacing: 0.3,
                                                            color: Palette
                                                                .current
                                                                .primaryWhiteSmoke,
                                                          ))
                                                ],
                                              ),
                                              const SizedBox(
                                                height: 30,
                                              ),
                                            ],
                                          )),
                                );
                              },
                              scrollDirection: Axis.vertical),
                        )
                      ],
                    ),
                    AnimatedSwitcher(
                      duration: const Duration(milliseconds: 300),
                      child: !_showErrorPleaseSelectOne
                          ? const SizedBox()
                          : Text(
                              S.of(context).list_item_popup_please_select,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(
                                    fontSize: 14,
                                    letterSpacing: 0.3,
                                    fontWeight: FontWeight.w300,
                                    color: Palette.current.primaryNeonPink,
                                  ),
                              textAlign: TextAlign.center,
                            ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    PrimaryButton(
                      title: S.of(context).ist_item_popup_btn,
                      onPressed: () {
                        if (collectionSelected != null) {
                          Navigator.pop(context);
                          Navigator.of(context, rootNavigator: true).push(
                              ListForSalePage.route(() {}, collectionSelected,
                                  widget.catalogItemName, widget.catalogImage));
                        } else {
                          setState(() {
                            _showErrorPleaseSelectOne = true;
                          });
                        }
                      },
                      type: PrimaryButtonType.green,
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
            ),
            Positioned(
              right: 0,
              top: 3,
              child: IconButton(
                iconSize: 30,
                color: Palette.current.primaryNeonGreen,
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: const Icon(
                  Icons.clear_outlined,
                  size: 20,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
