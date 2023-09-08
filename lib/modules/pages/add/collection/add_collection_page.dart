import 'package:cached_network_image/cached_network_image.dart';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:swagapp/modules/common/utils/utils.dart';

import '../../../../generated/l10n.dart';
import '../../../blocs/collection_bloc/collection_bloc.dart';
import '../../../blocs/detail_bloc/detail_bloc.dart';
import '../../../common/ui/cupertino_custom_date_picker.dart';
import '../../../common/ui/custom_text_form_field.dart';

import '../../../common/ui/loading.dart';
import '../../../common/ui/primary_button.dart';
import '../../../common/utils/currency_input_formatter.dart';
import '../../../common/utils/custom_route_animations.dart';
import '../../../common/utils/palette.dart';

import '../../../data/shared_preferences/shared_preferences_service.dart';
import '../../../di/injector.dart';
import '../../../models/collection/add_collection_items_payload_model.dart';
import '../../../models/collection/add_collection_model.dart';
import '../../../models/detail/detail_item_model.dart';

class AddCollection extends StatefulWidget {
  static const name = '/AddCollection';

  AddCollection(
      {super.key,
      required this.catalogItemId,
      required this.pathImage,
      required this.itemName});

  String catalogItemId;
  String pathImage;
  String itemName;

  static Route route(final BuildContext context, String catalogItemId,
          String pathImage, String itemName) =>
      PageRoutes.modalBottomSheet(
        isScrollControlled: true,
        isDismissible: true,
        enableDrag: false,
        height: 0.8,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(15), topLeft: Radius.circular(15)),
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
  DateTime _defaultDateTime = DateTime.now();

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
  String? datePickerErrorText;
  bool datePickerErrorFlag = false;

  bool isFirst = true;

  bool validPrice = false;
  double _price = 0.0;

  final formatter = NumberFormat("###0.00");

  String _defaultCondition = 'Condition';
  String _defaultSource = 'Source';

  var Conditions = [
    'Condition',
    'Sealed',
    'Displayed',
    'Gamed',
  ];

  var Sources = ['Source', 'Swag', 'Ebay', 'Facebook', 'Friend/Gift', 'Other'];

  @override
  void dispose() {
    _purchaseNode.dispose();
    _conditionNode.dispose();
    _sourceNode.dispose();
    super.dispose();
  }

  DetailItemModel? detailItemModel;

  bool get isSourceSwag => _defaultSource == "Swag";

  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((timeStamp) {
      BlocProvider.of<DetailBloc>(context)
          .add(DetailEvent.getDetailItem(widget.catalogItemId));
    });

    _purchaseNode.addListener(() {
      if (!_purchaseNode.hasFocus && _purchaseController.text.isNotEmpty) {
        final formattedNumber = formatter.format(
          CurrencyTextInputFormatter.tryParseText(
            _purchaseController.text,
          ),
        );
        _purchaseController.text = formattedNumber;
      }
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
    return BlocListener<DetailBloc, DetailState>(
        listener: (a, b) => b.when(initial: () {
              Loading.show(context);
              return null;
            }, error: (error) {
              Loading.hide(context);
              return null;
            }, loadedDetailItems: (loadedDetailItems) {
              Loading.hide(context);
              setState(() {
                detailItemModel = loadedDetailItems.first;
                if (detailItemModel?.released != null) {
                  datePickerErrorFlag = true;
                  _defaultDateTime = detailItemModel!.released!.toDateTime();
                  updateSelectedDate();
                }
              });
              return null;
            }),
        child: BlocListener<CollectionBloc, CollectionState>(
            listener: (context, state) => state.maybeWhen(
                  orElse: () {
                    return null;
                  },
                  loadedCollectionSuccess: (state) {
                    BlocProvider.of<DetailBloc>(context)
                        .add(DetailEvent.getDetailItem(widget.catalogItemId));
                    if (getIt<PreferenceRepositoryService>()
                        .backProfileCollection()) {
                      getIt<PreferenceRepositoryService>()
                          .saveBackProfileCollection(false);
                      Navigator.of(context, rootNavigator: true).pop();
                      Navigator.of(context, rootNavigator: true).pop();
                      Navigator.of(context, rootNavigator: true).pop();
                      Loading.hide(context);
                    } else {
                      Navigator.of(context, rootNavigator: true).pop();
                      Loading.hide(context);
                    }

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
            child: _getBody()));
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
              topRight: Radius.circular(14), topLeft: Radius.circular(14)),
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
                                  topLeft: Radius.circular(15),
                                  topRight: Radius.circular(15)),
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
                                            letterSpacing: 0.018,
                                            fontWeight: FontWeight.w300,
                                            fontFamily: "KnockoutCustom",
                                            fontSize: 30,
                                            color: Palette
                                                .current.primaryNeonGreen)),
                              ),
                            ),
                            Positioned(
                                right: 20,
                                top: 15,
                                child: GestureDetector(
                                  onTap: () {
                                    Navigator.of(context).pop();
                                  },
                                  child: Container(
                                    height: 30,
                                    width: 30,
                                    padding: const EdgeInsets.all(7.5),
                                    decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(90.0),
                                        color: Palette.current.blackSmoke),
                                    child: Transform.rotate(
                                      angle: 0.8,
                                      child: Image.asset(
                                        width: 24,
                                        height: 24,
                                        'assets/images/plus.png',
                                        color: Palette.current.white,
                                      ),
                                    ),
                                  ),
                                ))
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
                                child: Text(widget.itemName.toUpperCase(),
                                    style: Theme.of(context)
                                        .textTheme
                                        .displayLarge!
                                        .copyWith(
                                            letterSpacing: 0.018,
                                            fontWeight: FontWeight.w300,
                                            fontFamily: "KnockoutCustom",
                                            fontSize: 30,
                                            color: Palette.current.white)),
                              ),
                              const SizedBox(
                                height: 30,
                              ),
                              CupertinoDatePickerView(
                                errorText: datePickerErrorText,
                                cupertinoDatePickervalue: _defaultDateTime,
                                enabled: !isSourceSwag,
                                onDone: (DateTime newValue) {
                                  setState(() {
                                    setState(() {
                                      datePickerErrorFlag = true;
                                      _defaultDateTime = newValue;
                                      updateSelectedDate();
                                      Navigator.pop(context);
                                    });
                                  });
                                },
                              ),
                              const SizedBox(
                                height: 10,
                              ),
                              CustomTextFormField(
                                borderColor: _purchaseBorder,
                                autofocus: false,
                                errorText: purchaseErrorText,
                                labelText: S.of(context).purchase_price,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall!
                                    .copyWith(
                                        fontWeight: FontWeight.w300,
                                        letterSpacing: 0.05,
                                        color: Palette.current.primaryNero),
                                focusNode: _purchaseNode,
                                controller: _purchaseController,
                                isEnabled: !isSourceSwag,
                                inputType:
                                    const TextInputType.numberWithOptions(
                                  decimal: true,
                                  signed: false,
                                ),
                                inputFormatters: <TextInputFormatter>[
                                  CurrencyTextInputFormatter()
                                ],
                                maxLength: 9,
                                onChanged: (value) {
                                  setState(() {
                                    final parsed =
                                        CurrencyTextInputFormatter.tryParseText(
                                            _purchaseController.text);
                                    _price = parsed ?? 0;
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
                                        if (isSourceSwag &&
                                            detailItemModel != null) {
                                          _purchaseController.text =
                                              detailItemModel?.retail ?? '';
                                          _defaultDateTime = detailItemModel!
                                              .released!
                                              .toDateTime();
                                          datePickerErrorFlag = true;

                                          String str =
                                              _defaultDateTime.toString();
                                          String result =
                                              str.replaceAll(' ', 'T');
                                          formattedDate = result;
                                        }
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

      datePickerErrorText = datePickerErrorFlag == true
          ? detailItemModel?.released?.toDateTime().isAfter(_defaultDateTime) ==
                  true
              ? "Date cannot be before Swag release date ${detailItemModel?.released?.toDateTime()}"
              : null
          : S.of(context).required_field;
    });
  }

  bool areFieldsValid() {
    return _purchaseController.text.isNotEmpty &&
        _defaultCondition != 'Condition' &&
        _defaultSource != 'Source' &&
        (detailItemModel?.released?.toDateTime().isBefore(_defaultDateTime) ==
            true || _defaultDateTime == detailItemModel?.released?.toDateTime()) &&
        datePickerErrorFlag == true;
  }

  void updateSelectedDate() {
    String str = _defaultDateTime.toString();
    String result = str.replaceAll(' ', 'T');
    formattedDate = result;
  }
}
