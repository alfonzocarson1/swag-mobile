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
                          ? Column(
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
                                        value: _selecteRazon.contains(1),
                                        onChanged: (bool? newValue) {
                                          _onRazonSelected(
                                              newValue!,
                                              1,
                                              S
                                                  .of(context)
                                                  .delete_collection_razon_1);
                                          setState(() {});
                                        },
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                        S.of(context).delete_collection_razon_1,
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodySmall!
                                            .copyWith(
                                              fontSize: 15,
                                              letterSpacing: 0.3,
                                              color: Palette
                                                  .current.primaryWhiteSmoke,
                                            ))
                                  ],
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
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
                                        value: _selecteRazon.contains(2),
                                        onChanged: (bool? newValue) {
                                          _onRazonSelected(
                                              newValue!,
                                              2,
                                              S
                                                  .of(context)
                                                  .delete_collection_razon_2);
                                          setState(() {});
                                        },
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                        S.of(context).delete_collection_razon_2,
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodySmall!
                                            .copyWith(
                                              fontSize: 15,
                                              letterSpacing: 0.3,
                                              color: Palette
                                                  .current.primaryWhiteSmoke,
                                            ))
                                  ],
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
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
                                        value: _selecteRazon.contains(3),
                                        onChanged: (bool? newValue) {
                                          _onRazonSelected(
                                              newValue!,
                                              3,
                                              S
                                                  .of(context)
                                                  .delete_collection_razon_3);
                                          setState(() {});
                                        },
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                        S.of(context).delete_collection_razon_3,
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodySmall!
                                            .copyWith(
                                              fontSize: 15,
                                              letterSpacing: 0.3,
                                              color: Palette
                                                  .current.primaryWhiteSmoke,
                                            ))
                                  ],
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                              ],
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
                                                      Row(
                                                        children: [
                                                          SizedBox(
                                                            height: 24.0,
                                                            width: 20.0,
                                                            child: Checkbox(
                                                              checkColor:
                                                                  Colors.black,
                                                              side: const BorderSide(
                                                                  color: Color(
                                                                      0xff585858),
                                                                  width: 1.5),
                                                              value: _selecteCategorys
                                                                  .contains(widget
                                                                      .dataCollection![
                                                                          index]
                                                                      .profileCollectionItemId),
                                                              onChanged: (bool?
                                                                  newValue) {
                                                                _onCollectionSelected(
                                                                    newValue!,
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
