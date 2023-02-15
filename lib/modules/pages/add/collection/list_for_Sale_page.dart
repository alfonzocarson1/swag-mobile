import 'dart:developer';

import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:simple_rich_text/simple_rich_text.dart';

import '../../../../generated/l10n.dart';
import '../../../common/ui/clickable_text.dart';
import '../../../common/ui/custom_text_form_field.dart';

import '../../../common/ui/multi_image_slide.dart';
import '../../../common/ui/popup_image_guidelines.dart';

import '../../../common/ui/primary_button.dart';
import '../../../common/utils/custom_route_animations.dart';
import '../../../common/utils/palette.dart';
import 'list_item_preview_page.dart';

class ListForSalePage extends StatefulWidget {
  static const name = '/ListForSalePage';
  const ListForSalePage({super.key});

  static Route route(final BuildContext context) => PageRoutes.modalBottomSheet(
        isScrollControlled: true,
        isDismissible: true,
        enableDrag: false,
        height: 0.8,
        shape: const RoundedRectangleBorder(
          borderRadius: BorderRadius.only(
              topRight: Radius.circular(26), topLeft: Radius.circular(26)),
        ),
        settings: const RouteSettings(name: name),
        builder: (context) => const ListForSalePage(),
        context: context,
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

  String _defaultCondition = 'Condition';

  String _price = '';

  bool _decimalFlag = false;

  final formater = NumberFormat("##0.00");

  var Conditions = [
    'Condition',
    'Condition 1',
    'Condition 2',
    'Condition 3',
    'Condition 4',
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
    return GestureDetector(
      onTap: () {
        _listPriceItemNode.unfocus();
        _conditionNode.unfocus();
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
                            ? Stack(
                                children: [
                                  ClipRRect(
                                      borderRadius: const BorderRadius.only(
                                          topLeft: Radius.circular(26),
                                          topRight: Radius.circular(26)),
                                      child: Image.asset(
                                        "assets/images/bagAddList.png",
                                        fit: BoxFit.cover,
                                      )),
                                  Positioned.fill(
                                    top: 50,
                                    child: Align(
                                      alignment: Alignment.topCenter,
                                      child: Text(
                                          S.of(context).list_item_for_sale,
                                          style: Theme.of(context)
                                              .textTheme
                                              .displayLarge!
                                              .copyWith(
                                                  letterSpacing: 1,
                                                  fontWeight: FontWeight.w300,
                                                  fontFamily: "Knockout",
                                                  fontSize: 30,
                                                  color: Palette.current
                                                      .primaryNeonGreen)),
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
                                  ),
                                  Positioned.fill(
                                    child: Align(
                                      alignment: Alignment.center,
                                      child: GestureDetector(
                                        onTap: () {
                                          selectImages();
                                        },
                                        child: Center(
                                          child: Container(
                                              height: 60,
                                              width: MediaQuery.of(context)
                                                      .size
                                                      .width /
                                                  2,
                                              decoration: BoxDecoration(
                                                  border: Border.all(
                                                      color: Palette.current
                                                          .primaryNeonGreen),
                                                  color: Palette
                                                      .current.blackSmoke),
                                              child: Row(
                                                mainAxisAlignment:
                                                    MainAxisAlignment.center,
                                                crossAxisAlignment:
                                                    CrossAxisAlignment.center,
                                                children: [
                                                  Image.asset(
                                                    "assets/icons/camera.png",
                                                    height: 20,
                                                    width: 20,
                                                  ),
                                                  const SizedBox(
                                                    width: 15,
                                                  ),
                                                  Text(S.of(context).add_photos,
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .bodyLarge!
                                                          .copyWith(
                                                              fontFamily:
                                                                  "Knockout",
                                                              fontSize: 25,
                                                              letterSpacing: 1,
                                                              fontWeight:
                                                                  FontWeight
                                                                      .w500,
                                                              color: Palette
                                                                  .current
                                                                  .white)),
                                                ],
                                              )),
                                        ),
                                      ),
                                    ),
                                  ),
                                  Positioned.fill(
                                    bottom: 50,
                                    child: Align(
                                      alignment: Alignment.bottomCenter,
                                      child: ClickableText(
                                          title: SimpleRichText(
                                            S.of(context).see_photo_guidelines,
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodySmall!
                                                .copyWith(
                                                    fontSize: 14,
                                                    color: Palette.current.grey,
                                                    fontWeight:
                                                        FontWeight.w300),
                                          ),
                                          onPressed: () {
                                            showDialog(
                                                context: context,
                                                barrierDismissible: false,
                                                builder:
                                                    (BuildContext context) {
                                                  return const PopUpImageGuideline();
                                                });
                                          }),
                                    ),
                                  ),
                                ],
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
                                                fontWeight: FontWeight.w500,
                                                fontSize: 15,
                                                color: Palette
                                                    .current.primaryNeonGreen)),
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
                                maxLength: _decimalFlag ? 6 : 4,
                                onChanged: (priceInput) {
                                  //TODO Start Format validations for prices
                                  setState(() {
                                    if (priceInput.isNotEmpty &&
                                        (!_listPriceItemController.text
                                            .toString()
                                            .contains(','))) {
                                      _decimalFlag = false;
                                      _price = formater
                                          .format(int.parse(priceInput));
                                    } else {
                                      setState(() {
                                        _decimalFlag = true;
                                        _price = _listPriceItemController.text
                                            .toString();
                                      });
                                    }
                                  });
                                  if (_listPriceItemController.text
                                              .toString()
                                              .length >
                                          3 &&
                                      _listPriceItemController.text
                                              .toString()[3] !=
                                          ',') {
                                    setState(() {
                                      _listPriceItemController.text =
                                          _listPriceItemController.text
                                              .toString()
                                              .substring(0, 3);
                                      _price = formater.format(int.parse(
                                          _listPriceItemController.text
                                              .toString()));
                                    });
                                  }
                                  //TODO End Format validations for prices
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
                                      color: Palette.current.primaryNeonGreen),
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
                                    hintText:
                                        S.of(context).aditional_listing_detail,
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
                                    Navigator.of(context, rootNavigator: true)
                                        .push(ListItemPreviewPage.route(
                                            imageFileList,
                                            "GOLDEN KING COVER",
                                            _listPriceItemController.text
                                                .toString(),
                                            _defaultCondition,
                                            _listDescriptionItemController.text
                                                .toString()));
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
        _listDescriptionItemController.text.isNotEmpty;
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
