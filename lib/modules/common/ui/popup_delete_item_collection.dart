import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:swagapp/modules/common/ui/primary_button.dart';

import 'package:swagapp/modules/common/utils/palette.dart';

import '../../../generated/l10n.dart';
import '../../blocs/collection_bloc/collection_bloc.dart';
import '../../blocs/detail_bloc/detail_bloc.dart';
import '../../models/collection/add_collection_items_payload_model.dart';
import '../../models/collection/add_collection_model.dart';
import '../../models/detail/detail_collection_model.dart';
import '../../models/ui_models/checkbox_model.dart';
import 'loading.dart';

class PopUpDeleteItemCollection extends StatefulWidget {
  const PopUpDeleteItemCollection({super.key, required this.dataCollection});
  final List<DetailCollectionModel>? dataCollection;
  @override
  State<PopUpDeleteItemCollection> createState() =>
      _PopUpDeleteItemCollectionState();
}

class _PopUpDeleteItemCollectionState extends State<PopUpDeleteItemCollection> {
  String? _razon;
  bool razonUi = true;
  bool removeAlert = false;

  List<CheckboxModel> options = [];

  //Remove variable//
  late DetailCollectionModel removeDataCollection;
  //End Remove variable//

  @override
  void initState() {
    super.initState();
    removeDataCollection = widget.dataCollection![0];
  }

  List _selecteCategorys = [];
  List _selecteRazon = [];

  void _onRazonSelected(bool selected, razonId, deleteRazon) {
    if (selected == true) {
      setState(() {
        _razon = deleteRazon;
        _selecteRazon = [];
        _selecteRazon.add(razonId);
      });
    } else {
      setState(() {
        _razon = null;
        _selecteRazon.remove(razonId);
      });
    }
  }

  void _onCollectionSelected(bool selected, collectionId, itemCondition,
      DetailCollectionModel dataCollection) {
    if (selected == true) {
      setState(() {
        removeDataCollection = dataCollection;

        _selecteCategorys = [];
        _selecteCategorys.add(collectionId);
      });
    }
  }

  Dialog _getBody() {
    options = [
      CheckboxModel(title: S.of(context).delete_collection_razon_1),
      CheckboxModel(title: S.of(context).delete_collection_razon_2),
      CheckboxModel(title: S.of(context).delete_collection_razon_3),
    ];
    return Dialog(
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
                        child: Text(S.of(context).remove_item.toUpperCase(),
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
                        child: Text(
                            razonUi
                                ? S.of(context).razon_remove_subtitle
                                : (!razonUi &&
                                        widget.dataCollection!.length > 1 &&
                                        !removeAlert)
                                    ? S.of(context).remove_item_subtitle
                                    : S.of(context).alert_remove_subtitle,
                            style:
                                Theme.of(context).textTheme.bodySmall!.copyWith(
                                      fontSize: 15,
                                      letterSpacing: 0.3,
                                      color: Palette.current.primaryWhiteSmoke,
                                    )),
                      ),
                      const SizedBox(
                        height: 30,
                      ),
                      razonUi
                          ? SizedBox(
                              height: 150.0,
                              child: ListView.builder(
                                  itemCount: 1,
                                  itemBuilder: (context, index) {
                                    return Column(
                                      children: List.generate(
                                          options.length,
                                          (index) => Column(
                                                children: [
                                                  InkWell(
                                                    onTap: () {
                                                      bool isSelected =
                                                          _selecteRazon
                                                              .contains(
                                                                  index + 1);
                                                      _onRazonSelected(
                                                          !isSelected,
                                                          index + 1,
                                                          options[index].title);
                                                      setState(() {});
                                                    },
                                                    child: Row(
                                                      children: [
                                                        Container(
                                                          width: 18,
                                                          height: 18,
                                                          decoration:
                                                              BoxDecoration(
                                                            borderRadius:
                                                                BorderRadius
                                                                    .circular(
                                                                        30.0),
                                                            border: Border.all(
                                                              color: _selecteRazon
                                                                      .contains(
                                                                          index +
                                                                              1)
                                                                  ? Palette
                                                                      .current
                                                                      .primaryNeonGreen
                                                                  : Colors.grey,
                                                            ),
                                                          ),
                                                          child: Padding(
                                                            padding:
                                                                const EdgeInsets
                                                                    .all(2.0),
                                                            child: ClipRRect(
                                                              borderRadius:
                                                                  BorderRadius
                                                                      .circular(
                                                                          30.0),
                                                              child: Container(
                                                                color: _selecteRazon
                                                                        .contains(
                                                                            index +
                                                                                1)
                                                                    ? Palette
                                                                        .current
                                                                        .primaryNeonGreen
                                                                    : Colors
                                                                        .transparent,
                                                                child: Checkbox(
                                                                    value: _selecteRazon
                                                                        .contains(
                                                                            index +
                                                                                1),
                                                                    onChanged:
                                                                        (bool?
                                                                            newValue) {},
                                                                    activeColor: Palette
                                                                        .current
                                                                        .primaryNeonGreen,
                                                                    checkColor: Palette
                                                                        .current
                                                                        .primaryNeonGreen),
                                                              ),
                                                            ),
                                                          ),
                                                        ),
                                                        const SizedBox(
                                                          width: 10,
                                                        ),
                                                        Text(
                                                            options[index]
                                                                .title,
                                                            style: Theme.of(
                                                                    context)
                                                                .textTheme
                                                                .bodySmall!
                                                                .copyWith(
                                                                  fontSize: 15,
                                                                  letterSpacing:
                                                                      0.3,
                                                                  color: Palette
                                                                      .current
                                                                      .primaryWhiteSmoke,
                                                                )),
                                                      ],
                                                    ),
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
                          : (!razonUi &&
                                  widget.dataCollection!.length > 1 &&
                                  !removeAlert)
                              ? SizedBox(
                                  height: 200.0,
                                  child: ListView.builder(
                                      itemCount: 1,
                                      itemBuilder: (context, index) {
                                        return Column(
                                          children: List.generate(
                                              widget.dataCollection!.length,
                                              (index) => Column(
                                                    children: [
                                                      InkWell(
                                                        onTap: () {
                                                          bool isSelected =
                                                              _selecteCategorys
                                                                  .contains(widget
                                                                      .dataCollection![
                                                                          index]
                                                                      .profileCollectionItemId);
                                                          _onCollectionSelected(
                                                              !isSelected,
                                                              widget
                                                                  .dataCollection![
                                                                      index]
                                                                  .profileCollectionItemId,
                                                              widget
                                                                  .dataCollection![
                                                                      index]
                                                                  .itemCondition,
                                                              widget.dataCollection![
                                                                  index]);
                                                          setState(() {});
                                                        },
                                                        child: Row(
                                                          children: [
                                                            Container(
                                                              width: 18,
                                                              height: 18,
                                                              decoration:
                                                                  BoxDecoration(
                                                                borderRadius:
                                                                    BorderRadius
                                                                        .circular(
                                                                            30.0),
                                                                border:
                                                                    Border.all(
                                                                  color: _selecteCategorys.contains(widget
                                                                          .dataCollection![
                                                                              index]
                                                                          .profileCollectionItemId)
                                                                      ? Palette
                                                                          .current
                                                                          .primaryNeonGreen
                                                                      : Colors
                                                                          .grey,
                                                                ),
                                                              ),
                                                              child: Padding(
                                                                padding:
                                                                    const EdgeInsets
                                                                            .all(
                                                                        2.0),
                                                                child:
                                                                    ClipRRect(
                                                                  borderRadius:
                                                                      BorderRadius
                                                                          .circular(
                                                                              30.0),
                                                                  child:
                                                                      Container(
                                                                    color: _selecteCategorys.contains(widget
                                                                            .dataCollection![
                                                                                index]
                                                                            .profileCollectionItemId)
                                                                        ? Palette
                                                                            .current
                                                                            .primaryNeonGreen
                                                                        : Colors
                                                                            .transparent,
                                                                    child: Checkbox(
                                                                        value: _selecteCategorys.contains(widget
                                                                            .dataCollection![
                                                                                index]
                                                                            .profileCollectionItemId),
                                                                        onChanged:
                                                                            (bool?
                                                                                newValue) {},
                                                                        activeColor: Palette
                                                                            .current
                                                                            .primaryNeonGreen,
                                                                        checkColor: Palette
                                                                            .current
                                                                            .primaryNeonGreen),
                                                                  ),
                                                                ),
                                                              ),
                                                            ),
                                                            const SizedBox(
                                                              width: 10,
                                                            ),
                                                            Text(
                                                                "${DateFormat.yMd().format(DateTime.parse(widget.dataCollection![index].purchaseDate))} - ${widget.dataCollection![index].itemCondition}",
                                                                style: Theme.of(
                                                                        context)
                                                                    .textTheme
                                                                    .bodySmall!
                                                                    .copyWith(
                                                                      fontSize:
                                                                          15,
                                                                      letterSpacing:
                                                                          0.3,
                                                                      color: Palette
                                                                          .current
                                                                          .primaryWhiteSmoke,
                                                                    )),
                                                          ],
                                                        ),
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
                              : Container()
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Visibility(
                    visible: razonUi,
                    child: PrimaryButton(
                      title: S.of(context).razon_remove_btn,
                      onPressed: () {
                        setState(() {
                          razonUi = false;
                          if (widget.dataCollection!.length == 1) {
                            removeAlert = true;
                          }
                        });
                      },
                      type: PrimaryButtonType.green,
                    ),
                  ),
                  Visibility(
                    visible: (!razonUi &&
                        widget.dataCollection!.length > 1 &&
                        !removeAlert),
                    child: PrimaryButton(
                      title: S.of(context).remove_item_btn,
                      onPressed: () {
                        setState(() {
                          if (_selecteCategorys.isNotEmpty) {
                            removeAlert = true;
                          }
                        });
                      },
                      type: PrimaryButtonType.green,
                    ),
                  ),
                  Visibility(
                    visible: removeAlert,
                    child: PrimaryButton(
                      title: S.of(context).alert_remove_btn,
                      onPressed: () {
                        context.read<CollectionBloc>().add(
                                CollectionEvent.removeCollection(
                                    AddCollectionModel(
                                        deleteReason: _razon,
                                        profileCollectionItems: [
                                  AddCollectionItemPayloadModel(
                                      profileCollectionItemId:
                                          removeDataCollection
                                              .profileCollectionItemId,
                                      catalogItemId:
                                          removeDataCollection.catalogItemId,
                                      purchaseDate:
                                          removeDataCollection.purchaseDate,
                                      purchasePrice:
                                          removeDataCollection.purchasePrice,
                                      itemCondition:
                                          removeDataCollection.itemCondition,
                                      itemSource:
                                          removeDataCollection.itemSource),
                                ])));
                        setState(() {});
                      },
                      type: PrimaryButtonType.green,
                    ),
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  Visibility(
                    visible: removeAlert,
                    child: PrimaryButton(
                      title: S.of(context).cancel,
                      onPressed: () {
                        setState(() {
                          Navigator.of(context).pop();
                        });
                      },
                      type: PrimaryButtonType.pink,
                    ),
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
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<CollectionBloc, CollectionState>(
        listener: (context, state) => state.maybeWhen(
              orElse: () {
                return null;
              },
              loadedCollectionSuccess: (state) {
                BlocProvider.of<DetailBloc>(context).add(
                    DetailEvent.getDetailItem(
                        removeDataCollection.catalogItemId));
                Navigator.of(context, rootNavigator: true).pop();
                Loading.hide(context);
                return null;
              },
              initial: () {
                return Loading.show(context);
              },
              error: (message) => {
                Loading.hide(context),
                // Dialogs.showOSDialog(context, 'Error', message, 'OK', () {})
              },
            ),
        child: Center(child: _getBody()));
  }
}
