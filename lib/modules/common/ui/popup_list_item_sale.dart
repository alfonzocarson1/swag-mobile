import 'package:flutter/material.dart';
import 'package:swagapp/modules/common/ui/primary_button.dart';

import 'package:swagapp/modules/common/utils/palette.dart';

import '../../../generated/l10n.dart';
import '../../models/detail/detail_collection_model.dart';
import '../../pages/add/collection/list_for_Sale_page.dart';

class PopUpListItemSale extends StatefulWidget {
  const PopUpListItemSale({super.key, required this.dataCollection});
  final List<DetailCollectionModel>? dataCollection;
  @override
  State<PopUpListItemSale> createState() => _PopUpListItemSaleState();
}

class _PopUpListItemSaleState extends State<PopUpListItemSale> {
  @override
  void initState() {
    super.initState();
  }

  List _selecteCategorys = [];

  void _onCollectionSelected(bool selected, collectionId) {
    if (selected == true) {
      setState(() {
        _selecteCategorys = [];
        _selecteCategorys.add(collectionId);
      });
    } else {
      setState(() {
        _selecteCategorys.remove(collectionId);
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
                                    fontFamily: "Knockout",
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
                        Column(
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
                                                  color: Color(0xff585858),
                                                  width: 1.5),
                                              value: _selecteCategorys.contains(
                                                  widget.dataCollection![index]
                                                      .collectionItemId),
                                              onChanged: (bool? newValue) {
                                                _onCollectionSelected(
                                                    newValue!,
                                                    widget
                                                        .dataCollection![index]
                                                        .collectionItemId);
                                                setState(() {});
                                              },
                                            ),
                                          ),
                                          const SizedBox(
                                            width: 10,
                                          ),
                                          Text(
                                              "${widget.dataCollection![index].acquired} - ${widget.dataCollection![index].condition}",
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodySmall!
                                                  .copyWith(
                                                    fontSize: 15,
                                                    letterSpacing: 0.3,
                                                    color: Palette.current
                                                        .primaryWhiteSmoke,
                                                  ))
                                        ],
                                      ),
                                      const SizedBox(
                                        height: 30,
                                      ),
                                    ],
                                  )),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    PrimaryButton(
                      title: S.of(context).ist_item_popup_btn,
                      onPressed: () {
                        Navigator.of(context, rootNavigator: true)
                            .push(ListForSalePage.route(context));
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
