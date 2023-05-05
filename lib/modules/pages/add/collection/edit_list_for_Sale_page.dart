import 'dart:developer';
import 'dart:io';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:image_picker/image_picker.dart';
import 'package:intl/intl.dart';
import 'package:swagapp/modules/pages/add/collection/widgets/slider_custom_widget.dart';
import '../../../../generated/l10n.dart';
import '../../../common/ui/custom_text_form_field.dart';
import '../../../common/ui/popup_image_guidelines.dart';
import '../../../common/ui/primary_button.dart';
import '../../../common/ui/pushed_header.dart';
import '../../../common/utils/custom_route_animations.dart';
import '../../../common/utils/palette.dart';

import '../../../constants/constants.dart';
import '../../../cubits/listing_for_sale/get_listing_for_sale_cubit.dart';
import '../../../di/injector.dart';
import '../../../models/detail/detail_collection_model.dart';
import '../../../models/listing_for_sale/listing_for_sale_model.dart';
import 'list_item_preview_page.dart';

class EditListForSalePage extends StatefulWidget {
  static const name = '/ListForSalePage';

  const EditListForSalePage(
      {super.key,
      this.collectionData,
      this.productItemId,
      required this.catalogItemName,
      this.imageUrls});

  final DetailCollectionModel? collectionData;
  final String? productItemId;
  final String catalogItemName;
  final List<dynamic>? imageUrls;

  static Route route(DetailCollectionModel? collectionData, String? productItemId,
          String catalogItemName, List<dynamic>? imageUrls) =>
      PageRoutes.slideUp(
        settings: const RouteSettings(name: name),
        builder: (context) => EditListForSalePage(
          productItemId: productItemId,
          collectionData: collectionData,
          catalogItemName: catalogItemName,
          imageUrls: imageUrls,
        ),
      );

  @override
  State<EditListForSalePage> createState() => _EditListForSalePageState();
}

class _EditListForSalePageState extends State<EditListForSalePage> {
  final ImagePicker imagePicker = ImagePicker();
  List<dynamic> imageFileList = [];
  List<XFile>  tempFiles = [];

  bool isPostListing = false;
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

  bool isFirst = true;
  double _price = 100.0;
  bool validPrice = false;

  @override
  void dispose() {
    _listPriceItemNode.dispose();
    _conditionNode.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    if (widget.collectionData != null) {
      _price = widget.collectionData?.purchasePrice ?? 0.0;
      _listDescriptionItemController.text =
          widget.collectionData?.description ?? '';
      _defaultCondition =
          "${widget.collectionData?.itemCondition[0].toUpperCase()}${widget.collectionData?.itemCondition.substring(1).toLowerCase()}";
    }

    imageFileList = widget.imageUrls ?? [];
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

  getImageFiles(List<XFile> imageFiles){
    setState(() {
      tempFiles = imageFiles;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      // resizeToAvoidBottomInset: false,
      backgroundColor: Palette.current.primaryEerieBlack,
      appBar: PushedHeader(
        showBackButton: false,
        suffixIconButton: IconButton(
          iconSize: 30,
          color: Palette.current.primaryNeonGreen,
          onPressed: () {
              getIt<ListingProfileCubit>().listingService.updateListing(
                                              ListingForSaleModel(
                                                productItemId: widget.productItemId,
                                                forSale: true,
                                                sold: false,                                                
                                                status: 'listed',
                                              )
                                            );
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
        child: LayoutBuilder(builder:
            (BuildContext context, BoxConstraints viewportConstraints) {
          return SingleChildScrollView(
            child: ConstrainedBox(
              constraints: BoxConstraints(
                  minHeight: viewportConstraints.maxHeight -
                      MediaQuery.of(context).padding.top -
                      55),
              child: IntrinsicHeight(
                child: Container(
                  decoration: BoxDecoration(
                    color: Palette.current.primaryEerieBlack,
                  ),
                  child: Column(
                    children: [
                      SizedBox(
                        height: (MediaQuery.of(context).size.height -
                                MediaQuery.of(context).padding.top -
                                150) *
                            0.5,
                        child: SliderCustomWidget(
                          imageUrls: widget.imageUrls,
                          getImageFiles: getImageFiles,
                        ),
                      ),
                      const SizedBox(
                        height: 8,
                      ),
                      Padding(
                        padding: const EdgeInsets.all(19.0),
                        child: Column(
                          children: [
                                  Align(
                        alignment: Alignment.centerLeft,
                        child: Column(                          
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(widget.catalogItemName.toUpperCase(),
                                textAlign: TextAlign.left,
                                style: Theme.of(context)
                                    .textTheme
                                    .displayMedium!
                                    .copyWith(
                                      fontFamily: "Knockout",
                                      fontSize: 30,
                                      fontWeight: FontWeight.w300,
                                      color:
                                          Palette.current.primaryWhiteSmoke,
                                    )),
                            Text("${S.of(context).for_sale}: \$$_price",
                                textAlign: TextAlign.left,
                                overflow: TextOverflow.fade,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall!
                                    .copyWith(
                                        fontWeight: FontWeight.w300,
                                        fontSize: 16,
                                        color: Palette
                                            .current.primaryNeonGreen)),
                          ],
                        ),
                      ),
                      const SizedBox(
                        height: 21,
                      ),
                      Column(
                        children: [
                          CustomTextFormField(
                            suffix: Image.asset(
                              'assets/images/trending-up.png',
                              width: 20,
                              height: 20,
                              scale: 3,
                              color: Palette.current.blackSmoke,
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
                                _listPriceItemController.clear();
                                isFirst = true;
                                return;
                              }
                              double value1 = double.parse(newValue);
                              if (!isFirst) value1 = value1 * 100;
                              value = NumberFormat.currency(
                                      customPattern: '###,###.##')
                                  .format(value1 / 100);
                              _listPriceItemController.value =
                                  TextEditingValue(
                                text: value,
                                selection: TextSelection.collapsed(
                                    offset: value.length),
                              );
                              setState(() {
                                String str =
                                    _listPriceItemController.value.text;
                                String result = str.replaceAll(',', '');
                                _price = double.parse(result);
                              });
                            },
                            borderColor: _listPriceItemBorder,
                            autofocus: false,
                            errorText: listPriceItemErrorText,
                            labelText: S.of(context).list_price_input,
                            focusNode: _listPriceItemNode,
                            controller: _listPriceItemController,
                            inputType: const TextInputType.numberWithOptions(
                              decimal: true,
                              signed: false,
                            ),
                          ),
                           const SizedBox(
                        height: 21,
                      ),
                          CustomTextFormField(
                              borderColor: _conditionBorder,
                              autofocus: false,
                              errorText: conditionErrorText,
                              dropdownForm: true,
                              dropdownFormItems: itemConditions,
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
                        ],
                      ),
                       const SizedBox(
                        height: 21,
                      ),
                      Column(
                        children: [
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
                                  color: Palette.current.primaryWhiteSmoke),
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
                        ],
                      ),
                       const SizedBox(
                        height: 21,
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
                            } else if (_defaultCondition != "Sealed" &&
                                imageFileList.length < 4) {
                              showDialog(
                                  context: context,
                                  barrierDismissible: false,
                                  builder: (BuildContext context) {
                                    return const PopUpImageGuideline();
                                  });
                            } else {
                              Navigator.of(context, rootNavigator: true).push(
                                    ListItemPreviewPage.route(
                                              isUpdate: true,
                                              catalogItemId: widget.collectionData!
                                                    .catalogItemId,
                                              imgList:tempFiles,                                             
                                              itemCondition: _defaultCondition,
                                              itemDescription:  _listDescriptionItemController
                                                    .text
                                                    .toString(),
                                              itemName:widget.catalogItemName ,
                                              itemPrice: _price ,
                                              productItemId:  widget.productItemId,                  
                                              profileCollectionItemId:  widget.collectionData!
                                                    .profileCollectionItemId,                                                    
                                              onClose:() {
                                          Navigator.pop(context);
                                      }));                       
                            }
                          }
                        },
                        type: PrimaryButtonType.green,
                      )
                          ],
                        ),
                        )                
                    ],
                  ),
                ),
              ),
            ),
          );
        }),
      ),
    );
  }

  bool areFieldsValid() {
    return _listPriceItemController.text.isNotEmpty &&
        _defaultCondition != 'Condition' &&
        _listDescriptionItemController.text.isNotEmpty;
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
}
