import 'dart:developer';

import 'package:flutter/material.dart';

import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';

import '../../../../generated/l10n.dart';
import '../../../common/ui/add_photo_list_item.dart';
import '../../../common/ui/custom_text_form_field.dart';

import '../../../common/ui/multi_image_slide.dart';
import '../../../common/ui/popup_image_guidelines.dart';

import '../../../common/ui/primary_button.dart';
import '../../../common/ui/pushed_header.dart';
import '../../../common/utils/custom_route_animations.dart';
import '../../../common/utils/palette.dart';
import '../../../common/utils/utils.dart';
import 'list_item_preview_page.dart';

class ListForSalePage extends StatefulWidget {
  static const name = '/ListForSalePage';

  ListForSalePage({super.key, this.itemCondition});

  String? itemCondition;

  static Route route(itemCondition) => PageRoutes.slideUp(
        settings: const RouteSettings(name: name),
        builder: (context) => ListForSalePage(itemCondition: itemCondition),
      );

  @override
  State<ListForSalePage> createState() => _ListForSalePageState();
}

class _ListForSalePageState extends State<ListForSalePage> {
  final ImagePicker imagePicker = ImagePicker();
  List<XFile> imageFileList = [];

  final FocusNode _listPriceItemNode = FocusNode();
  final _listPriceItemController = TextEditingController();
  Color _listPriceItemBorder = Palette.current.primaryWhiteSmoke;

  final FocusNode _conditionNode = FocusNode();
  final _conditionController = TextEditingController();
  Color _conditionBorder = Palette.current.primaryWhiteSmoke;

  final _listDescriptionItemController = TextEditingController();

  String? listPriceItemErrorText;
  String? conditionErrorText;
  String? descriptionErrorText;

  String? _defaultCondition;

  String _price = '';

  bool _decimalFlag = false;
  int _dynamicLen = 0;

  bool _dynamicLenFlag = false;

  bool validPrice = false;

  final formater = NumberFormat("###0.00");

  final formaterFour = NumberFormat("#,##0.00");

  var Conditions = [
    'Condition',
    'Sealed',
    'Displayed',
    'Gamed',
  ];

  @override
  void dispose() {
    _listPriceItemNode.dispose();
    _conditionNode.dispose();

    super.dispose();
  }

  @override
  void initState() {
    super.initState();

    print(formaterFour.format(3456));

    _defaultCondition = widget.itemCondition ?? 'Condition';

    _listPriceItemNode.addListener(() {
      setState(() {
        _listPriceItemBorder = _listPriceItemNode.hasFocus
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
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      backgroundColor: Palette.current.primaryEerieBlack,
      appBar: PushedHeader(
        showBackButton: false,
        suffixIconButton: IconButton(
          iconSize: 30,
          color: Palette.current.primaryNeonGreen,
          onPressed: () {
            Navigator.pop(context);
          },
          icon: const Icon(
            Icons.clear_outlined,
            size: 25,
          ),
        ),
        height: 55,
      ),
      body: GestureDetector(
        onTap: () {
          _listPriceItemNode.unfocus();
          _conditionNode.unfocus();
        },
        child: Container(
          decoration: BoxDecoration(
            color: Palette.current.primaryEerieBlack,
          ),
          child: Stack(clipBehavior: Clip.hardEdge, children: [
            LayoutBuilder(builder: (context, viewportConstraints) {
              return SingleChildScrollView(
                  physics: const ClampingScrollPhysics(),
                  reverse: false,
                  child: ConstrainedBox(
                      constraints: BoxConstraints(
                        minHeight: viewportConstraints.maxHeight,
                      ),
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.stretch,
                        children: [
                          imageFileList.isEmpty
                              ? AddPhotoWidget(
                                  addPhoto: () => selectImages(),
                                )
                              : MultiImageSlide(
                                  imgList: imageFileList,
                                  addPhoto: () => selectImages(),
                                  onRemove: (index) {
                                    setState(() {
                                      imageFileList.removeAt(index);
                                    });
                                  },
                                ),
                          Stack(
                            children: [
                              Padding(
                                padding: const EdgeInsets.all(20),
                                child: Column(
                                  children: [
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                          S.of(context).title_list_for_Sale,
                                          textAlign: TextAlign.left,
                                          style: Theme.of(context)
                                              .textTheme
                                              .displayMedium!
                                              .copyWith(
                                                fontFamily: "Knockout",
                                                fontSize: 30,
                                                fontWeight: FontWeight.w300,
                                                color: Palette.current.white,
                                              )),
                                    ),
                                    const SizedBox(
                                      height: 5,
                                    ),
                                    Align(
                                      alignment: Alignment.centerLeft,
                                      child: Text(
                                          "${S.of(context).for_sale}: \$$_price",
                                          textAlign: TextAlign.left,
                                          overflow: TextOverflow.fade,
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodySmall!
                                              .copyWith(
                                                  fontWeight: FontWeight.w300,
                                                  fontSize: 15,
                                                  color: Palette.current
                                                      .primaryNeonGreen)),
                                    ),
                                  ],
                                ),
                              ),
                            ],
                          ),
                          Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                const SizedBox(
                                  height: 5,
                                ),
                                CustomTextFormField(
                                  suffix: Image.asset(
                                    'assets/images/trending-up.png',
                                    width: 20,
                                    height: 20,
                                    scale: 3,
                                    color: Palette.current.blackSmoke,
                                  ),
                                  maxLength: _decimalFlag ? _dynamicLen : 6,
                                  onChanged: (priceInput) {
                                    if (_listPriceItemController
                                        .value.text.isNotEmpty) {
                                      //TODO Start Format validations for prices
                                      if (_listPriceItemController.text
                                          .toString()
                                          .contains('.')) {
                                        setState(() {
                                          _decimalFlag = true;
                                          if (_dynamicLenFlag) {
                                            _dynamicLenFlag = false;
                                            _dynamicLen =
                                                _listPriceItemController
                                                        .text.length +
                                                    2;
                                          }
                                        });
                                        if (isValidNumberDot(priceInput)) {
                                          setState(() {
                                            validPrice = true;
                                            _price = priceInput;
                                            listPriceItemErrorText = null;
                                          });
                                        } else {
                                          setState(() {
                                            validPrice = false;
                                            _price = priceInput;
                                          });
                                        }
                                      } else if (_listPriceItemController.text
                                          .toString()
                                          .contains(',')) {
                                        setState(() {
                                          _decimalFlag = true;

                                          if (_dynamicLenFlag) {
                                            _dynamicLenFlag = false;
                                            _dynamicLen =
                                                _listPriceItemController
                                                        .text.length +
                                                    2;
                                          }
                                        });
                                        if (isValidNumberComa(priceInput)) {
                                          setState(() {
                                            validPrice = true;
                                            _price = priceInput;
                                            listPriceItemErrorText = null;
                                          });
                                        } else {
                                          setState(() {
                                            validPrice = false;
                                            _price = priceInput;
                                          });
                                        }
                                      } else {
                                        setState(() {
                                          _dynamicLenFlag = true;
                                          validPrice = true;
                                          _decimalFlag = false;
                                          if (priceInput.length == 4) {
                                            _price = formaterFour
                                                .format(int.parse(priceInput));
                                          } else {
                                            _price = "$priceInput.00";
                                          }
                                        });
                                      }
                                      if (!_listPriceItemController.text
                                              .toString()
                                              .contains('.') &&
                                          !_listPriceItemController.text
                                              .toString()
                                              .contains(',')) {
                                        if (_listPriceItemController.text
                                                    .toString()
                                                    .length >
                                                5 &&
                                            _listPriceItemController.text
                                                    .toString()[5] !=
                                                ',') {
                                          setState(() {
                                            _listPriceItemController.text =
                                                _listPriceItemController.text
                                                    .toString()
                                                    .substring(0, 5);
                                            _price =
                                                "${_listPriceItemController.text.toString()}.00";
                                          });
                                        }
                                      } else {
                                        setState(() {
                                          _decimalFlag = true;
                                        });
                                      }
                                      //TODO End Format validations for prices
                                    } else {
                                      setState(() {
                                        _price = '0.00';
                                      });
                                    }
                                  },
                                  borderColor: _listPriceItemBorder,
                                  autofocus: false,
                                  errorText: listPriceItemErrorText,
                                  labelText: S.of(context).list_price_input,
                                  focusNode: _listPriceItemNode,
                                  controller: _listPriceItemController,
                                  inputType:
                                      const TextInputType.numberWithOptions(
                                    decimal: true,
                                    signed: false,
                                  ),
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                CustomTextFormField(
                                    borderColor: _conditionBorder,
                                    autofocus: false,
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
                                Container(
                                  decoration: BoxDecoration(
                                      border: Border.all(
                                          width: 0.5,
                                          color: descriptionErrorText != null
                                              ? Palette.current.primaryNeonPink
                                              : Palette.current.grey)),
                                  child: TextField(
                                    controller: _listDescriptionItemController,
                                    keyboardType: TextInputType.text,
                                    maxLength: 140,
                                    maxLines: 6,
                                    style: TextStyle(
                                        fontSize: 16.0,
                                        color:
                                            Palette.current.primaryWhiteSmoke),
                                    decoration: InputDecoration(
                                      hintStyle: Theme.of(context)
                                          .textTheme
                                          .bodyMedium!
                                          .copyWith(
                                              fontSize: 16.0,
                                              color: Palette.current.white),
                                      contentPadding: const EdgeInsets.only(
                                          top: 8, left: 8, right: 8),
                                      border: InputBorder.none,
                                      counterStyle: const TextStyle(
                                          height: 5,
                                          color: Colors.grey,
                                          fontSize: 11),
                                      hintText: S
                                          .of(context)
                                          .aditional_listing_detail,
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  height: 4,
                                ),
                                descriptionErrorText != null
                                    ? Text(
                                        descriptionErrorText ?? '',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodySmall!
                                            .copyWith(
                                                color: Palette
                                                    .current.primaryNeonPink),
                                      )
                                    : Container(),
                                const SizedBox(
                                  height: 20,
                                ),
                                PrimaryButton(
                                  title: S.of(context).preview_listing,
                                  onPressed: () {
                                    showErrors();
                                    if (areFieldsValid()) {
                                      if (_defaultCondition == "Sealed" &&
                                          imageFileList.length < 3) {
                                        showDialog(
                                            context: context,
                                            barrierDismissible: false,
                                            builder: (BuildContext context) {
                                              return const PopUpImageGuideline();
                                            });
                                      } else if (_defaultCondition !=
                                              "Sealed" &&
                                          imageFileList.length < 4) {
                                        showDialog(
                                            context: context,
                                            barrierDismissible: false,
                                            builder: (BuildContext context) {
                                              return const PopUpImageGuideline();
                                            });
                                      } else {
                                        Navigator.of(context,
                                                rootNavigator: true)
                                            .push(ListItemPreviewPage.route(
                                                imageFileList,
                                                "GOLDEN KING COVER",
                                                _price,
                                                _defaultCondition,
                                                _listDescriptionItemController
                                                    .text
                                                    .toString()));
                                      }
                                    }
                                  },
                                  type: PrimaryButtonType.green,
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                              ],
                            ),
                          )
                        ],
                      )));
            }),
          ]),
        ),
      ),
    );
  }

  void showErrors() {
    setState(() {
      listPriceItemErrorText = _listPriceItemController.text.isNotEmpty
          ? null
          : S.of(context).required_field;

      conditionErrorText = _defaultCondition != 'Condition'
          ? null
          : S.of(context).required_field;

      descriptionErrorText = _listDescriptionItemController.text.isNotEmpty
          ? null
          : S.of(context).required_field;
    });
  }

  bool areFieldsValid() {
    return _listPriceItemController.text.isNotEmpty &&
        _defaultCondition != 'Condition' &&
        _listDescriptionItemController.text.isNotEmpty &&
        validPrice;
  }

  Future<void> selectImages() async {
    // Pick an image
    try {
      final List<XFile> selectedImages = await imagePicker.pickMultiImage();

      if ((selectedImages.length + imageFileList.length) <= 6) {
        imageFileList.addAll(selectedImages);
      } else {
        showDialog(
            context: context,
            barrierDismissible: false,
            builder: (BuildContext context) {
              return const PopUpImageGuideline();
            });
      }

      setState(() {});
    } catch (e) {
      log("Image picker: $e");
    }
  }
}
