import 'package:cached_network_image/cached_network_image.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';

import '../../../../generated/l10n.dart';
import '../../../blocs/collection_bloc/collection_bloc.dart';
import '../../../blocs/detail_bloc/detail_bloc.dart';
import '../../../common/ui/cupertino_custom_date_picker.dart';
import '../../../common/ui/custom_text_form_field.dart';

import '../../../common/ui/loading.dart';
import '../../../common/ui/primary_button.dart';
import '../../../common/utils/custom_route_animations.dart';
import '../../../common/utils/palette.dart';

import '../../../models/collection/add_collection_items_payload_model.dart';
import '../../../models/collection/add_collection_model.dart';

class AddCollection extends StatefulWidget {
  static const name = '/AddCollection';
  AddCollection(
      {super.key,
      required this.catalogItemId,
      required this.pathImage,
      required this.itemName});
  final String catalogItemId;
  final String pathImage;
  final String itemName;

  static Route route(final BuildContext context, String catalogItemId,
          String pathImage, String itemName) =>
      PageRoutes.modalBottomSheet(
        isScrollControlled: true,
        isDismissible: true,
        enableDrag: false,
        height: 0.8,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(26), topLeft: Radius.circular(26)),
        ),
        settings: const RouteSettings(name: name),
        builder: (context) => AddCollection(
            catalogItemId: catalogItemId,
            pathImage: pathImage,
            itemName: itemName),
        context: context,
      );

  @override
  State<AddCollection> createState() => _AddCollectionState();
}

class _AddCollectionState extends State<AddCollection> {
  DateTime? _defaultDateTime;

  var formattedDate = "";

  final FocusNode _purchaseNode = FocusNode();
  final _purchaseController = TextEditingController();
  Color _purchaseBorder = Palette.current.primaryWhiteSmoke;

  final FocusNode _conditionNode = FocusNode();
  final _conditionController = TextEditingController();
  Color _conditionBorder = Palette.current.primaryWhiteSmoke;

  final FocusNode _sourceNode = FocusNode();
  final _sourceController = TextEditingController();
  Color _sourceBorder = Palette.current.primaryWhiteSmoke;

  String? purchaseErrorText;
  String? conditionErrorText;
  String? sourceErrorText;

  bool isFirst = true;

  bool validPrice = false;
  double _price = 0.0;

  final formater = NumberFormat("###0.00");

  String _defaultCondition = 'Condition';
  String _defaultSource = 'Source';

  var Conditions = [
    'Condition',
    'Sealed',
    'Displayed',
    'Gamed',
  ];

  var Sources = [
    'Source',
    'Swag',
    'Ebay',
    'Facebook',
    'Friend/ Gift or Other',
  ];

  @override
  void dispose() {
    _purchaseNode.dispose();
    _conditionNode.dispose();
    _sourceNode.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();

    _purchaseNode.addListener(() {
      setState(() {
        _purchaseBorder = _purchaseNode.hasFocus
            ? Palette.current.primaryNeonGreen
            : Palette.current.primaryWhiteSmoke;
      });
    });

    _conditionNode.addListener(() {
      setState(() {
        _conditionBorder = _conditionNode.hasFocus
            ? Palette.current.primaryNeonGreen
            : Palette.current.primaryWhiteSmoke;
      });
    });

    _sourceNode.addListener(() {
      setState(() {
        _sourceBorder = _sourceNode.hasFocus
            ? Palette.current.primaryNeonGreen
            : Palette.current.primaryWhiteSmoke;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<CollectionBloc, CollectionState>(
        listener: (context, state) => state.maybeWhen(
              orElse: () {
                return null;
              },
              loadedCollectionSuccess: (state) {
                BlocProvider.of<DetailBloc>(context)
                    .add(DetailEvent.getDetailItem(widget.catalogItemId));
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
        child: _getBody());
  }

  GestureDetector _getBody() {
    return GestureDetector(
      onTap: () {
        _purchaseNode.unfocus();
        _conditionNode.unfocus();
        _sourceNode.unfocus();
      },
      child: Container(
        decoration: BoxDecoration(
          color: Palette.current.primaryEerieBlack,
          borderRadius: const BorderRadius.only(
              topRight: Radius.circular(26), topLeft: Radius.circular(26)),
        ),
        constraints: BoxConstraints(
            minHeight: MediaQuery.of(context).size.height * 0.9,
            maxHeight: MediaQuery.of(context).size.height * 0.9),
        child: Stack(clipBehavior: Clip.hardEdge, children: [
          LayoutBuilder(builder: (context, viewportConstraints) {
            return SingleChildScrollView(
                physics: ClampingScrollPhysics(),
                reverse: false,
                child: ConstrainedBox(
                    constraints: BoxConstraints(
                      minHeight: viewportConstraints.maxHeight,
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Stack(
                          children: [
                            ClipRRect(
                              borderRadius: const BorderRadius.only(
                                  topLeft: Radius.circular(26),
                                  topRight: Radius.circular(26)),
                              child: CachedNetworkImage(
                                fit: BoxFit.cover,
                                imageUrl: widget.pathImage,
                                placeholder: (context, url) => SizedBox(
                                  height: 360,
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
                            Positioned.fill(
                              top: 10,
                              child: Align(
                                alignment: Alignment.topCenter,
                                child: Text(S.of(context).add_collection_title,
                                    style: Theme.of(context)
                                        .textTheme
                                        .displayLarge!
                                        .copyWith(
                                            letterSpacing: 1,
                                            fontWeight: FontWeight.w300,
                                            fontFamily: "Knockout",
                                            fontSize: 30,
                                            color: Palette
                                                .current.primaryNeonGreen)),
                              ),
                            ),
                            Positioned(
                              right: 5,
                              top: 7,
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
                        const SizedBox(
                          height: 10,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              Align(
                                alignment: Alignment.centerLeft,
                                child: Text(widget.itemName,
                                    style: Theme.of(context)
                                        .textTheme
                                        .displayLarge!
                                        .copyWith(
                                            letterSpacing: 1,
                                            fontWeight: FontWeight.w300,
                                            fontFamily: "Knockout",
                                            fontSize: 30,
                                            color: Palette.current.white)),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              CupertinoDatePickerView(
                                cupertinoDatePickervalue: _defaultDateTime,
                                onDone: (DateTime newValue) {
                                  setState(() {
                                    setState(() {
                                      _defaultDateTime = newValue;
                                      String str = _defaultDateTime.toString();
                                      String result = str.replaceAll(' ', 'T');
                                      formattedDate = result;
                                      Navigator.pop(context);
                                    });
                                  });
                                },
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              CustomTextFormField(
                                borderColor: _purchaseBorder,
                                autofocus: false,
                                errorText: purchaseErrorText,
                                labelText: S.of(context).purchase_price,
                                focusNode: _purchaseNode,
                                controller: _purchaseController,
                                inputType:
                                    const TextInputType.numberWithOptions(
                                  decimal: true,
                                  signed: false,
                                ),
                                inputFormatters: <TextInputFormatter>[
                                  FilteringTextInputFormatter.digitsOnly
                                ],
                                maxLength: 7,
                                onChanged: (value) {
                                  if (value == '00') {
                                    setState(() {
                                      _price = 0.0;
                                    });
                                  }
                                  String newValue = value
                                      .replaceAll(',', '')
                                      .replaceAll('.', '');
                                  if (value.isEmpty || newValue == '00') {
                                    _purchaseController.clear();
                                    isFirst = true;
                                    return;
                                  }
                                  double value1 = double.parse(newValue);
                                  if (!isFirst) value1 = value1 * 100;
                                  value = NumberFormat.currency(
                                          customPattern: '###,###.##')
                                      .format(value1 / 100);
                                  _purchaseController.value = TextEditingValue(
                                    text: value,
                                    selection: TextSelection.collapsed(
                                        offset: value.length),
                                  );

                                  setState(() {
                                    String str = _purchaseController.value.text;
                                    String result = str.replaceAll(',', '');
                                    _price = double.parse(result);
                                  });
                                },
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              CustomTextFormField(
                                  borderColor: _conditionBorder,
                                  autofocus: false,
                                  labelText: S.of(context).country,
                                  errorText: conditionErrorText,
                                  dropdownForm: true,
                                  dropdownFormItems: Conditions,
                                  dropdownvalue: _defaultCondition,
                                  dropdownOnChanged: (String? newValue) {
                                    setState(() {
                                      setState(() {
                                        _defaultCondition = newValue!;
                                      });
                                    });
                                  },
                                  focusNode: _conditionNode,
                                  controller: _conditionController,
                                  inputType: TextInputType.text),
                              const SizedBox(
                                height: 20,
                              ),
                              CustomTextFormField(
                                  borderColor: _sourceBorder,
                                  autofocus: false,
                                  labelText: S.of(context).country,
                                  errorText: sourceErrorText,
                                  dropdownForm: true,
                                  dropdownFormItems: Sources,
                                  dropdownvalue: _defaultSource,
                                  dropdownOnChanged: (String? newValue) {
                                    setState(() {
                                      setState(() {
                                        _defaultSource = newValue!;
                                      });
                                    });
                                  },
                                  focusNode: _sourceNode,
                                  controller: _sourceController,
                                  inputType: TextInputType.text),
                              const SizedBox(
                                height: 20,
                              ),
                              PrimaryButton(
                                title: S.of(context).add_collection,
                                onPressed: () {
                                  showErrors();
                                  if (areFieldsValid()) {
                                    context.read<CollectionBloc>().add(
                                            CollectionEvent.addCollection(
                                                AddCollectionModel(
                                                    profileCollectionItems: [
                                              AddCollectionItemPayloadModel(
                                                  catalogItemId:
                                                      widget.catalogItemId,
                                                  purchaseDate: formattedDate,
                                                  purchasePrice: _price,
                                                  itemCondition:
                                                      _defaultCondition,
                                                  itemSource: _defaultSource),
                                            ])));
                                  }
                                },
                                type: PrimaryButtonType.green,
                              ),
                              const SizedBox(
                                height: 40,
                              ),
                            ],
                          ),
                        )
                      ],
                    )));
          }),
        ]),
      ),
    );
  }

  void showErrors() {
    setState(() {
      purchaseErrorText = _purchaseController.text.isNotEmpty
          ? null
          : S.of(context).required_field;

      conditionErrorText = _defaultCondition != 'Condition'
          ? null
          : S.of(context).required_field;

      sourceErrorText =
          _defaultSource != 'Source' ? null : S.of(context).required_field;
    });
  }

  bool areFieldsValid() {
    return _purchaseController.text.isNotEmpty &&
        _defaultCondition != 'Condition' &&
        _defaultSource != 'Source';
  }
}
