import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:swagapp/generated/l10n.dart';
import 'package:swagapp/modules/common/ui/custom_app_bar.dart';
import 'package:swagapp/modules/common/ui/primary_button.dart';
import 'package:swagapp/modules/common/utils/palette.dart';

import '../../common/ui/cupertino_custom_picker.dart';
import '../../common/ui/custom_text_form_field.dart';
import '../../common/ui/account_info_head.dart';
import '../../common/utils/custom_route_animations.dart';
import '../../common/utils/size_helper.dart';

class AccountInfoPage extends StatefulWidget {
  static const name = '/AccountInfo';
  const AccountInfoPage({Key? key}) : super(key: key);

  static Route route() => PageRoutes.slideUp(
        settings: const RouteSettings(name: name),
        builder: (context) => const AccountInfoPage(),
      );

  @override
  State<AccountInfoPage> createState() => _AccountInfoPageState();
}

class _AccountInfoPageState extends State<AccountInfoPage> {
  final FocusNode _firstNameNode = FocusNode();
  final _firstNameController = TextEditingController();
  Color _firstNameBorder = Palette.current.primaryWhiteSmoke;

  final FocusNode _lastNameNode = FocusNode();
  final _lastNameController = TextEditingController();
  Color _lastNameBorder = Palette.current.primaryWhiteSmoke;

  final FocusNode _countryNode = FocusNode();
  final _countryController = TextEditingController();
  Color _countryBorder = Palette.current.primaryWhiteSmoke;

  final FocusNode _firstAddressNode = FocusNode();
  final _firstAddressController = TextEditingController();
  Color _firstAddressBorder = Palette.current.primaryWhiteSmoke;

  final FocusNode _secondAddressNode = FocusNode();
  final _secondAddressController = TextEditingController();
  Color _secondAddressBorder = Palette.current.primaryWhiteSmoke;

  final FocusNode _cityNode = FocusNode();
  final _cityController = TextEditingController();
  Color _cityBorder = Palette.current.primaryWhiteSmoke;

  final FocusNode _stateNode = FocusNode();
  final _stateController = TextEditingController();
  Color _stateBorder = Palette.current.primaryWhiteSmoke;

  final FocusNode _zipNode = FocusNode();
  final _zipController = TextEditingController();
  Color _zipBorder = Palette.current.primaryWhiteSmoke;

  String? nameErrorText;
  String? lastNameErrorText;
  String? countryErrorText;
  String? addressErrorText;
  String? cityErrorText;
  String? stateErrorText;
  String? zipErrorText;

  late ResponsiveDesign _responsiveDesign;

  String _defaultCountry = 'Country';
  String _defaultState = 'State';
  var countries = [
    'Country',
    'Country 1',
    'Country 2',
    'Country 3',
    'Country 4',
  ];

  var states = [
    'State',
    'State 1',
    'State 2',
    'State 3',
    'State 4',
  ];
  int value = 0;

  @override
  void dispose() {
    _firstNameNode.dispose();
    _lastNameNode.dispose();
    _firstAddressNode.dispose();
    _secondAddressNode.dispose();
    _cityNode.dispose();
    _zipNode.dispose();
    super.dispose();
  }

  @override
  void initState() {
    super.initState();
    _firstNameNode.addListener(() {
      setState(() {
        _firstNameBorder = _firstNameNode.hasFocus
            ? Palette.current.primaryNeonGreen
            : Palette.current.primaryWhiteSmoke;
      });
    });

    _lastNameNode.addListener(() {
      setState(() {
        _lastNameBorder = _lastNameNode.hasFocus
            ? Palette.current.primaryNeonGreen
            : Palette.current.primaryWhiteSmoke;
      });
    });

    _countryNode.addListener(() {
      setState(() {
        _countryBorder = _countryNode.hasFocus
            ? Palette.current.primaryNeonGreen
            : Palette.current.primaryWhiteSmoke;
      });
    });

    _firstAddressNode.addListener(() {
      setState(() {
        _firstAddressBorder = _firstAddressNode.hasFocus
            ? Palette.current.primaryNeonGreen
            : Palette.current.primaryWhiteSmoke;
      });
    });

    _secondAddressNode.addListener(() {
      setState(() {
        _secondAddressBorder = _secondAddressNode.hasFocus
            ? Palette.current.primaryNeonGreen
            : Palette.current.primaryWhiteSmoke;
      });
    });

    _cityNode.addListener(() {
      setState(() {
        _cityBorder = _cityNode.hasFocus
            ? Palette.current.primaryNeonGreen
            : Palette.current.primaryWhiteSmoke;
      });
    });

    _stateNode.addListener(() {
      setState(() {
        _stateBorder = _stateNode.hasFocus
            ? Palette.current.primaryNeonGreen
            : Palette.current.primaryWhiteSmoke;
      });
    });

    _zipNode.addListener(() {
      setState(() {
        _zipBorder = _zipNode.hasFocus
            ? Palette.current.primaryNeonGreen
            : Palette.current.primaryWhiteSmoke;
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    _responsiveDesign = ResponsiveDesign(context);
    return Scaffold(
        extendBodyBehindAppBar: true,
        resizeToAvoidBottomInset: true,
        backgroundColor: Colors.transparent,
        appBar: CustomAppBar(),
        body: GestureDetector(
            behavior: HitTestBehavior.translucent,
            onTap: () {
              _firstNameNode.unfocus();
              _lastNameNode.unfocus();
              _countryNode.unfocus();
              _firstAddressNode.unfocus();
              _secondAddressNode.unfocus();
              _cityNode.unfocus();
              _stateNode.unfocus();
              _zipNode.unfocus();
            },
            child: Stack(children: [
              ColorFiltered(
                colorFilter:
                    const ColorFilter.mode(Colors.black38, BlendMode.darken),
                child: Container(
                    decoration: const BoxDecoration(
                      image: DecorationImage(
                        image: AssetImage("assets/images/background.png"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: null),
              ),
              Column(
                children: [
                  const SizedBox(
                    height: 100,
                  ),
                  Text(S.of(context).title_welcome,
                      style:
                          Theme.of(context).textTheme.displayMedium!.copyWith(
                                fontFamily: "Knockout",
                                fontSize: 50,
                                wordSpacing: 1,
                                fontWeight: FontWeight.w300,
                                color: Palette.current.primaryNeonGreen,
                              )),
                  Padding(
                    padding: const EdgeInsets.only(right: 20.0),
                    child: Text(S.of(context).subtitle_welcome,
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                              fontSize: 15,
                              color: Palette.current.primaryWhiteSmoke,
                            )),
                  ),
                  const SizedBox(
                    height: 20,
                  ),
                  Expanded(
                    child:
                        LayoutBuilder(builder: (context, viewportConstraints) {
                      return SingleChildScrollView(
                        child: ConstrainedBox(
                          constraints: BoxConstraints(
                            minHeight: viewportConstraints.maxHeight,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 20),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              children: [
                                const AccountInfoHeaderWidget(),
                                const SizedBox(
                                  height: 20,
                                ),
                                CustomTextFormField(
                                    inputFormatters: [
                                      FilteringTextInputFormatter.allow(
                                          RegExp('[a-zA-Z ]')),
                                    ],
                                    errorText: nameErrorText,
                                    borderColor: _firstNameBorder,
                                    autofocus: false,
                                    labelText: S.of(context).first_name,
                                    focusNode: _firstNameNode,
                                    controller: _firstNameController,
                                    inputType: TextInputType.text),
                                const SizedBox(
                                  height: 20,
                                ),
                                CustomTextFormField(
                                    inputFormatters: [
                                      FilteringTextInputFormatter.allow(
                                          RegExp('[a-zA-Z ]')),
                                    ],
                                    errorText: lastNameErrorText,
                                    borderColor: _lastNameBorder,
                                    autofocus: false,
                                    labelText: S.of(context).last_name,
                                    focusNode: _lastNameNode,
                                    controller: _lastNameController,
                                    inputType: TextInputType.text),
                                const SizedBox(
                                  height: 20,
                                ),
                                CustomTextFormField(
                                    borderColor: _countryBorder,
                                    autofocus: false,
                                    labelText: S.of(context).country,
                                    errorText: countryErrorText,
                                    dropdownForm: true,
                                    dropdownFormItems: countries,
                                    dropdownvalue: _defaultCountry,
                                    dropdownOnChanged: (String? newValue) {
                                      setState(() {
                                        setState(() {
                                          _defaultCountry = newValue!;
                                        });
                                      });
                                    },
                                    focusNode: _countryNode,
                                    controller: _countryController,
                                    inputType: TextInputType.text),
                                const SizedBox(
                                  height: 20,
                                ),
                                CustomTextFormField(
                                    borderColor: _firstAddressBorder,
                                    autofocus: false,
                                    labelText: S.of(context).first_address,
                                    errorText: addressErrorText,
                                    focusNode: _firstAddressNode,
                                    controller: _firstAddressController,
                                    inputType: TextInputType.text),
                                const SizedBox(
                                  height: 20,
                                ),
                                CustomTextFormField(
                                    borderColor: _secondAddressBorder,
                                    autofocus: false,
                                    labelText: S.of(context).second_address,
                                    focusNode: _secondAddressNode,
                                    controller: _secondAddressController,
                                    inputType: TextInputType.text),
                                const SizedBox(
                                  height: 20,
                                ),
                                CustomTextFormField(
                                    borderColor: _cityBorder,
                                    autofocus: false,
                                    errorText: cityErrorText,
                                    labelText: S.of(context).city,
                                    focusNode: _cityNode,
                                    controller: _cityController,
                                    inputType: TextInputType.text),
                                const SizedBox(
                                  height: 20,
                                ),
                                Row(
                                  children: [
                                    Expanded(
                                      flex: 2,
                                      child: Column(
                                        children: [
                                          CupertinoPickerView(
                                              errorText: stateErrorText,
                                              cupertinoPickerItems: states,
                                              cupertinoPickervalue:
                                                  _defaultState,
                                              onDone: (index) {
                                                setState(() => value = index);
                                                _defaultState = states[index];
                                                Navigator.pop(context);
                                              }),
                                          Visibility(
                                              visible: stateErrorText != null,
                                              child: Align(
                                                alignment: Alignment.bottomLeft,
                                                child: Text(
                                                    S
                                                        .of(context)
                                                        .required_field,
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .bodySmall!
                                                        .copyWith(
                                                            color: Palette
                                                                .current
                                                                .primaryNeonPink)),
                                              ))
                                        ],
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 20,
                                    ),
                                    Expanded(
                                      flex: 2,
                                      child: CustomTextFormField(
                                          inputFormatters: [
                                            FilteringTextInputFormatter.allow(
                                                RegExp("[0-9a-zA-Z ]")),
                                          ],
                                          borderColor: _zipBorder,
                                          autofocus: false,
                                          errorText: zipErrorText,
                                          labelText: S.of(context).zip,
                                          focusNode: _zipNode,
                                          controller: _zipController,
                                          inputType: TextInputType.text),
                                    )
                                  ],
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                                PrimaryButton(
                                  title: S.of(context).next_btn,
                                  onPressed: () {
                                    showErrors();
                                    if (areFieldsValid()) {}
                                  },
                                  type: PrimaryButtonType.green,
                                ),
                                const SizedBox(
                                  height: 20,
                                ),
                              ],
                            ),
                          ),
                        ),
                      );
                    }),
                  ),
                ],
              ),
            ])));
  }

  void showErrors() {
    setState(() {
      nameErrorText = _firstNameController.text.isNotEmpty
          ? null
          : S.of(context).required_field;

      lastNameErrorText = _lastNameController.text.isNotEmpty
          ? null
          : S.of(context).required_field;

      countryErrorText =
          _defaultCountry != 'Country' ? null : S.of(context).required_field;

      addressErrorText = _firstAddressController.text.isNotEmpty
          ? null
          : S.of(context).required_field;

      cityErrorText =
          _cityController.text.isNotEmpty ? null : S.of(context).required_field;

      stateErrorText =
          _defaultState != 'State' ? null : S.of(context).required_field;

      zipErrorText =
          _zipController.text.isNotEmpty ? null : S.of(context).required_field;
    });
  }

  bool areFieldsValid() {
    return _firstNameController.text.isNotEmpty &&
        _lastNameController.text.isNotEmpty &&
        _defaultCountry != 'Country' &&
        _firstAddressController.text.isNotEmpty &&
        _cityController.text.isNotEmpty &&
        _defaultState != 'State' &&
        _zipController.text.isNotEmpty;
  }
}
