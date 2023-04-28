import 'package:flutter/material.dart';
import 'package:simple_rich_text/simple_rich_text.dart';

import '../../../../generated/l10n.dart';
import '../../../common/ui/clickable_text.dart';
import '../../../common/ui/cupertino_custom_date_picker.dart';
import '../../../common/ui/custom_text_form_field.dart';

import '../../../common/ui/popup_info_guideline.dart';
import '../../../common/ui/popup_item_to_collection_error.dart';
import '../../../common/ui/primary_button.dart';
import '../../../common/utils/custom_route_animations.dart';
import '../../../common/utils/palette.dart';
import 'product_image_slide.dart';

class CollectionUnknownProductPage extends StatefulWidget {
  static const name = '/CollectionUnknownProductPage';
  const CollectionUnknownProductPage({super.key});

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
        builder: (context) => const CollectionUnknownProductPage(),
        context: context,
      );

  @override
  State<CollectionUnknownProductPage> createState() =>
      _CollectionUnknownProductPageState();
}

class _CollectionUnknownProductPageState
    extends State<CollectionUnknownProductPage> {
  DateTime _defaultDateTime = DateTime.now();

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

  String _defaultCondition = 'Condition';
  String _defaultSource = 'Source';

  var Conditions = [
    'Condition',
    'Condition 1',
    'Condition 2',
    'Condition 3',
    'Condition 4',
  ];

  var Sources = [
    'Source',
    'Source 1',
    'Source 2',
    'Source 3',
    'Source 4',
  ];

  @override
  void dispose() {
    _purchaseNode.dispose();
    _conditionNode.dispose();
    _sourceNode.dispose();
    super.dispose();
  }

  final List<String> imgList = [
    'https://firebasestorage.googleapis.com/v0/b/platzitrips-c4e10.appspot.com/o/Rectangle%2012%20(4).png?alt=media&token=8e099a54-c286-48d5-8519-45e9a2284a24',
    'https://firebasestorage.googleapis.com/v0/b/platzitrips-c4e10.appspot.com/o/Rectangle%2012%20(5).png?alt=media&token=d0b79d55-5b70-499c-84f7-28019337d84a',
    'https://firebasestorage.googleapis.com/v0/b/platzitrips-c4e10.appspot.com/o/Rectangle%2012.png?alt=media&token=47e348c2-35a6-488d-b715-300752b0f52b',
    'https://firebasestorage.googleapis.com/v0/b/platzitrips-c4e10.appspot.com/o/Rectangle%2012%20(3).png?alt=media&token=9b1f35c7-41a9-48dd-8a08-52f58b1751bf',
    'https://firebasestorage.googleapis.com/v0/b/platzitrips-c4e10.appspot.com/o/Rectangle%2012%20(1).png?alt=media&token=00355e6f-7046-4f5f-9797-cc7610cab9fe',
  ];

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
                physics: const ClampingScrollPhysics(),
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
                            Padding(
                              padding: const EdgeInsets.all(20),
                              child: Column(
                                children: [
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(S.of(context).we_can_help,
                                        textAlign: TextAlign.left,
                                        style: Theme.of(context)
                                            .textTheme
                                            .displayMedium!
                                            .copyWith(
                                              fontFamily: "Knockout",
                                              fontSize: 44,
                                              fontWeight: FontWeight.w300,
                                              color: Palette
                                                  .current.primaryNeonGreen,
                                            )),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                        S.of(context).we_can_help_description,
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodySmall!
                                            .copyWith(
                                              fontSize: 15,
                                              letterSpacing: 0.3,
                                              color: Palette
                                                  .current.primaryWhiteSmoke,
                                            )),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Align(
                                    alignment: Alignment.centerLeft,
                                    child: Text(
                                        S.of(context).we_can_help_sub_title,
                                        textAlign: TextAlign.left,
                                        style: Theme.of(context)
                                            .textTheme
                                            .displayMedium!
                                            .copyWith(
                                              fontFamily: "Knockout",
                                              fontSize: 25,
                                              fontWeight: FontWeight.w300,
                                              color: Palette
                                                  .current.primaryNeonGreen,
                                            )),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  Padding(
                                    padding: const EdgeInsets.only(left: 10),
                                    child: Column(
                                      children: [
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: RichText(
                                            text: TextSpan(children: [
                                              TextSpan(
                                                  text: S
                                                      .of(context)
                                                      .photo_condition_one,
                                                  style: TextStyle(
                                                    fontSize: 14,
                                                    color: Palette.current
                                                        .primaryWhiteSmoke,
                                                  )),
                                              TextSpan(
                                                  text: '(if open)',
                                                  style: TextStyle(
                                                    fontSize: 14,
                                                    color: Palette.current.grey,
                                                  )),
                                            ]),
                                          ),
                                        ),
                                        const SizedBox(
                                          height: 7,
                                        ),
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                              S.of(context).photo_condition_two,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodySmall!
                                                  .copyWith(
                                                    fontSize: 14,
                                                    letterSpacing: 0.3,
                                                    color: Palette.current
                                                        .primaryWhiteSmoke,
                                                  )),
                                        ),
                                        const SizedBox(
                                          height: 7,
                                        ),
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                              S
                                                  .of(context)
                                                  .photo_condition_three,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodySmall!
                                                  .copyWith(
                                                    fontSize: 14,
                                                    letterSpacing: 0.3,
                                                    color: Palette.current
                                                        .primaryWhiteSmoke,
                                                  )),
                                        ),
                                        const SizedBox(
                                          height: 7,
                                        ),
                                        Align(
                                          alignment: Alignment.centerLeft,
                                          child: Text(
                                              S
                                                  .of(context)
                                                  .photo_condition_four,
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodySmall!
                                                  .copyWith(
                                                    fontSize: 14,
                                                    letterSpacing: 0.3,
                                                    color: Palette.current
                                                        .primaryWhiteSmoke,
                                                  )),
                                        ),
                                      ],
                                    ),
                                  ),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                  GestureDetector(
                                    onTap: () {},
                                    child: Center(
                                      child: Container(
                                          height: 60,
                                          width:
                                              MediaQuery.of(context).size.width,
                                          decoration: BoxDecoration(
                                              border: Border.all(
                                                  color: Palette.current
                                                      .primaryNeonGreen),
                                              color: Colors.transparent),
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
                                                              FontWeight.w300,
                                                          color: Palette
                                                              .current.white)),
                                            ],
                                          )),
                                    ),
                                  ),
                                ],
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
                          ],
                        ),
                        CarouselWithDotsPage(imgList: imgList),
                        const SizedBox(
                          height: 50,
                        ),
                        Padding(
                          padding: const EdgeInsets.symmetric(horizontal: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.stretch,
                            children: [
                              CupertinoDatePickerView(
                                cupertinoDatePickervalue: _defaultDateTime,
                                onDone: (DateTime newValue) {
                                  setState(() {
                                    setState(() {
                                      _defaultDateTime = newValue;
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
                                  inputType: TextInputType.text),
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
                              Container(
                                decoration: BoxDecoration(
                                    border: Border.all(
                                        width: 0.5,
                                        color: Palette.current.grey)),
                                child: TextField(
                                  maxLines: 8,
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
                                    contentPadding:
                                        const EdgeInsets.only(top: 8, left: 8),
                                    border: InputBorder.none,
                                    hintText: "Additional details...",
                                  ),
                                ),
                              ),
                              const SizedBox(
                                height: 20,
                              ),
                              ClickableText(
                                  title: SimpleRichText(
                                    S.of(context).see_info,
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall!
                                        .copyWith(
                                            fontSize: 14,
                                            color: Palette.current.grey,
                                            fontWeight: FontWeight.w300),
                                  ),
                                  onPressed: () {
                                    showDialog(
                                        context: context,
                                        barrierDismissible: false,
                                        builder: (BuildContext context) {
                                          return const PopUpInfoGuideline();
                                        });
                                  }),
                              const SizedBox(
                                height: 20,
                              ),
                              PrimaryButton(
                                title: S.of(context).send_info,
                                onPressed: () {
                                  showErrors();
                                  if (areFieldsValid()) {
                                    showDialog(
                                        context: context,
                                        barrierDismissible: false,
                                        builder: (BuildContext context) {
                                          return const PopUpExistingItemErro();
                                        });
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
