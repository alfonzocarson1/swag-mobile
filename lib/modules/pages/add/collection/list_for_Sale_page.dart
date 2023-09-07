import 'dart:developer';
import 'dart:io';

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:swagapp/modules/common/assets/icons.dart';
import 'package:swagapp/modules/common/utils/currency_input_formatter.dart';

import '../../../../generated/l10n.dart';
import '../../../common/ui/add_photo_list_item.dart';
import '../../../common/ui/image_permission_handler.dart';
import '../../../common/ui/custom_text_form_field.dart';

import '../../../common/ui/multi_image_slide.dart';
import '../../../common/ui/popup_image_guidelines.dart';

import '../../../common/ui/primary_button.dart';
import '../../../common/ui/pushed_header.dart';
import '../../../common/utils/custom_route_animations.dart';
import '../../../common/utils/palette.dart';

import '../../../common/utils/tab_wrapper.dart';
import '../../../common/utils/utils.dart';
import '../../../data/shared_preferences/shared_preferences_service.dart';
import '../../../di/injector.dart';
import '../../../models/detail/detail_collection_model.dart';
import '../../../models/settings/peer_to_peer_payments_get_model.dart';
import 'list_item_preview_page.dart';

import 'package:flutter_image_compress/flutter_image_compress.dart';

import 'widgets/multi_pyment.dart';

class ListForSalePage extends StatefulWidget {
  static const name = '/ListForSalePage';

  ListForSalePage(
      {super.key,
      this.collectionData,
      required this.catalogItemName,
      this.salesHistoryNavigation,
      this.catalogImage,
      required this.categoryName});

  DetailCollectionModel? collectionData;
  String catalogItemName;
  VoidCallback? salesHistoryNavigation;
  String? catalogImage;
  final String categoryName;

  static Route route(
          VoidCallback? salesHistoryNavigation,
          DetailCollectionModel? collectionData,
          String catalogItemName,
          String? catalogImage,
          String categoryName) =>
      PageRoutes.slideUp(
        settings: const RouteSettings(name: name),
        builder: (context) => ListForSalePage(
            salesHistoryNavigation: salesHistoryNavigation,
            collectionData: collectionData,
            catalogItemName: catalogItemName,
            catalogImage: catalogImage,
            categoryName: categoryName),
      );

  @override
  State<ListForSalePage> createState() => _ListForSalePageState();
}

class _ListForSalePageState extends State<ListForSalePage> {
  final ImagePicker imagePicker = ImagePicker();
  PeerToPeerPaymentsGetModel paymentData =
      getIt<PreferenceRepositoryService>().paymanetData();
  List<File> imageFileList = [];
  bool allowedListPrice = true;
  bool isPostListing = false;
  final FocusNode _listPriceItemNode = FocusNode();
  final _listPriceItemController = TextEditingController();
  Color _listPriceItemBorder = Palette.current.primaryWhiteSmoke;

  final FocusNode _conditionNode = FocusNode();
  final _conditionController = TextEditingController();
  Color _conditionBorder = Palette.current.primaryWhiteSmoke;

  final FocusNode _paymentNode = FocusNode();
  Color _paymentBorder = Palette.current.primaryWhiteSmoke;

  final _listDescriptionItemController = TextEditingController();

  String? listPriceItemErrorText;
  String? conditionErrorText;
  String? descriptionErrorText;
  String? paymentErrorText;

  List<String> _selectedPayments = [];
  String? _defaultCondition;
  bool isFirst = true;
  double _price = 0.0;
  bool validPrice = false;
  var _listDescriptionInitValue = '';

  final formatter = NumberFormat("###0.00");

  var Conditions = [
    'Condition',
    'Sealed',
    'Displayed',
    'Gamed',
  ];

  late var photosStatus;
  late var cameraStatus;

  @override
  void dispose() {
    _listPriceItemNode.dispose();
    _conditionNode.dispose();

    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    //  getPermissionStatus();
    if (paymentData.peerToPeerPayments != null) {
      var peerToPeerPaymentsJson = paymentData.peerToPeerPayments!.toJson();

      if (peerToPeerPaymentsJson.length == 1) {
        if (paymentData.peerToPeerPayments!
            .toJson()
            .keys
            .first
            .contains('payPalEmail')) {
          _selectedPayments.add('PayPal');
        }

        if (paymentData.peerToPeerPayments!
            .toJson()
            .keys
            .first
            .contains('cashTag')) {
          _selectedPayments.add('CashApp');
        }

        if (paymentData.peerToPeerPayments!
            .toJson()
            .keys
            .first
            .contains('venmoUser')) {
          _selectedPayments.add('Venmo');
        }
      }
    }

    _defaultCondition = widget.collectionData!.itemCondition.capitalize();

    _listPriceItemNode.addListener(() {
      if (!_listPriceItemNode.hasFocus &&
          _listPriceItemController.text.isNotEmpty) {
        final formattedNumber = formatter.format(
          CurrencyTextInputFormatter.tryParseText(
            _listPriceItemController.text,
          ),
        );
        _listPriceItemController.text = formattedNumber;
      }
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

    _paymentNode.addListener(() {
      setState(() {
        _paymentBorder = _paymentNode.hasFocus
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
        suffixIconButton: GestureDetector(
          onTap: () {
            Navigator.of(context).pop();
          },
          child: Container(
            height: 30,
            width: 30,
            padding: const EdgeInsets.all(7.5),
            decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(90.0),
                color: Palette.current.primaryNero),
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
        ),
        backgroundColor: Colors.transparent,
        height: 55,
      ),
      body: GestureDetector(
        onTap: () {
          _listPriceItemNode.unfocus();
          _conditionNode.unfocus();
          _paymentNode.unfocus();
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
                                  catalogImage: widget.catalogImage,
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
                                  catalogImage: widget.catalogImage,
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
                                          widget.catalogItemName.toUpperCase(),
                                          textAlign: TextAlign.left,
                                          style: Theme.of(context)
                                              .textTheme
                                              .displayMedium!
                                              .copyWith(
                                                letterSpacing: 1,
                                                fontFamily: "KnockoutCustom",
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
                                          "${S.of(context).for_sale}:  ${decimalDigitsLastSalePrice(_price.toString())}",
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
                                  suffix: GestureDetector(
                                    onTap: widget.salesHistoryNavigation,
                                    child: (widget.salesHistoryNavigation !=
                                            null)
                                        ? Image.asset(
                                            AppIcons.trendingUp,
                                            width: 20,
                                            height: 20,
                                            scale: 3,
                                            color: Palette.current.blackSmoke,
                                          )
                                        : const SizedBox.shrink(),
                                  ),
                                  inputFormatters: <TextInputFormatter>[
                                    CurrencyTextInputFormatter(),
                                  ],
                                  maxLength: 9,
                                  onChanged: (value) {
                                    final parsed =
                                        CurrencyTextInputFormatter.tryParseText(
                                            _listPriceItemController.text);
                                    _price = parsed ?? 0;
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
                                MultiPaymentDropdown(
                                  helperText:
                                      'You must select at least one form of payment. You can manage these payment types in your settings.',
                                  borderColor: _paymentBorder,
                                  errorText: paymentErrorText,
                                  focusNode: _paymentNode,
                                  onPaymentChange: (List<String> value) {
                                    setState(() {
                                      _selectedPayments = value;
                                      if (_selectedPayments.isNotEmpty) {
                                        paymentErrorText = null;
                                      }
                                    });
                                  },
                                ),
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
                                    onChanged: (value) {
                                      if (value.length >
                                          _listDescriptionInitValue.length) {
                                        final text = value;
                                        if (text.endsWith('.') ||
                                            text.endsWith('!') ||
                                            text.endsWith('?')) {
                                          final newText = '$text ';
                                          _listDescriptionItemController.value =
                                              _listDescriptionItemController
                                                  .value
                                                  .copyWith(
                                            text: newText,
                                            selection: TextSelection.collapsed(
                                                offset: newText.length),
                                          );
                                          setState(() {
                                            _listDescriptionInitValue = value;
                                          });
                                        }
                                      } else {
                                        setState(() {
                                          _listDescriptionInitValue = value;
                                        });
                                      }
                                    },
                                    textCapitalization:
                                        TextCapitalization.sentences,
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
                                            .push(
                                          ListItemPreviewPage.route(
                                              isUpdate: false,
                                              catalogItemId: widget
                                                  .collectionData!
                                                  .catalogItemId,
                                              imgList: imageFileList,
                                              itemCondition: _defaultCondition!,
                                              itemDescription:
                                                  _listDescriptionItemController
                                                      .text
                                                      .toString(),
                                              itemName: widget.catalogItemName,
                                              itemPrice: _price,
                                              profileCollectionItemId: widget
                                                  .collectionData!
                                                  .profileCollectionItemId,
                                              onClose: () {
                                                Navigator.pop(context);
                                              },
                                              paymentAccepted:
                                                  _selectedPayments),
                                        );
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
      paymentErrorText =
          (_selectedPayments.isNotEmpty) ? null : S.of(context).required_field;
      double listPrice = 0.0;
      if (_listPriceItemController.text.isNotEmpty) {
        listPrice = double.parse(_listPriceItemController.value.text);
      }
      allowedListPrice = true;
      String errorMinimumListingPrice = '';
      if (widget.categoryName == SearchTab.headcovers.name.toUpperCase()) {
        allowedListPrice = (listPrice >= 50);
        errorMinimumListingPrice = S.of(context).minimum_price_headcover;
      } else if (widget.categoryName == SearchTab.putters.name.toUpperCase()) {
        allowedListPrice = (listPrice >= 250);
        errorMinimumListingPrice = S.of(context).minimum_price_putter;
      }
      listPriceItemErrorText = _listPriceItemController.text.isNotEmpty
          ? allowedListPrice
              ? null
              : errorMinimumListingPrice
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
        _selectedPayments.isNotEmpty &&
        allowedListPrice;
  }

  Future<void> selectImages() async {
    // Pick an image
    try {
      final List<XFile> selectedImages = await imagePermissionHandler(
          true, null, context, ImageSource.gallery);
      if ((selectedImages.length + imageFileList.length) <= 6) {
        scaleDownXFile(selectedImages);
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

  Future<void> scaleDownXFile(List<XFile> xFiles,
      {int maxWidth = 800, int maxHeight = 800, int quality = 75}) async {
    for (final image in xFiles) {
      final index = xFiles.indexOf(image);

      final filePath = xFiles[index].path;
      final bytes = await xFiles[index].readAsBytes();

      final compressedBytes = await FlutterImageCompress.compressWithList(
        bytes,
        minHeight: maxHeight,
        minWidth: maxWidth,
        quality: quality,
      );

      final file = File(filePath);
      await file.writeAsBytes(compressedBytes);

      imageFileList.add(file);
    }
    setState(() {});
  }
}
