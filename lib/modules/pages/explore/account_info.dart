import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swagapp/generated/l10n.dart';
import 'package:swagapp/modules/common/ui/custom_app_bar.dart';
import 'package:swagapp/modules/common/ui/primary_button.dart';
import 'package:swagapp/modules/common/utils/palette.dart';

import '../../blocs/update_profile_bloc/update_profile_bloc.dart';
import '../../common/ui/cupertino_custom_picker.dart';
import '../../common/ui/custom_text_form_field.dart';
import '../../common/ui/account_info_head.dart';
import '../../common/ui/dynamic_toast_messages.dart';
import '../../common/ui/loading.dart';
import '../../common/ui/popup_screen.dart';
import '../../common/utils/custom_route_animations.dart';
import '../../common/utils/size_helper.dart';
import '../../common/utils/utils.dart';
import '../../data/secure_storage/storage_repository_service.dart';
import '../../data/shared_preferences/shared_preferences_service.dart';
import '../../di/injector.dart';
import '../../models/update_profile/addresses_payload_model.dart';
import '../../models/update_profile/update_profile_payload_model.dart';

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
  String firstName = '';
  String lastName = '';
  String address1 = '';
  String address2 = '';
  bool hasImportableData = false;
  bool verificationEmailSent = false;

  late ResponsiveDesign _responsiveDesign;

  String _defaultCountry = 'United States';
  String _defaultState = 'State';

  var countries = ['United States'];
  final _states = ['State'];

  int value = 0;

  bool updateAllFlow = false;
  late String userName;

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

  void _getStates() async {
    var responseSatate = await getStates();

    setState(() {
      _states.addAll(responseSatate as Iterable<String>);
    });
  }

  @override
  void initState() {
    super.initState();

    hasImportableData =
        getIt<PreferenceRepositoryService>().hasImportableData();

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
    _getStates();
  }

  getStoredInfo() async {
    userName = (getIt<PreferenceRepositoryService>().profileData().username);
    firstName = (await getIt<StorageRepositoryService>().getFirstName() ?? '');
    lastName = (await getIt<StorageRepositoryService>().getLastName() ?? '');
    var addresses = (await getIt<StorageRepositoryService>().getAddresses());
    if (addresses.isNotEmpty) {
      address1 = addresses[0] ?? '';
      address2 = addresses[1] ?? '';
    }
  }

  @override
  Widget build(BuildContext context) {
    getStoredInfo();
    
    if (firstName == '' || lastName == '') {
      showPopUp(username: userName);
    }
    _responsiveDesign = ResponsiveDesign(context);
    return Scaffold(
        extendBodyBehindAppBar: true,
        resizeToAvoidBottomInset: true,
        backgroundColor: Colors.transparent,
        appBar: CustomAppBar(),
        body: BlocListener<UpdateProfileBloc, UpdateProfileState>(
            listener: (context, state) => state.maybeWhen(
                  orElse: () {
                    return null;
                  },
                  verifyEmailModalClosed: (modalClosed) {
                      Future.delayed(const Duration(seconds: 1),
                          (() => showPopUp(username: userName)));
                      return null;
                  } ,
                  verificationEmailSent: (verificationSent) {
                    if (verificationSent) {
                      Navigator.of(context).pop();

                      Future.delayed(const Duration(seconds: 3),
                          (() => showPopUp(username: userName)));

                      ScaffoldMessenger.of(context).showSnackBar(SnackBar(
                          duration: const Duration(seconds: 5),
                          behavior: SnackBarBehavior.floating,
                          margin: EdgeInsets.only(
                            bottom: MediaQuery.of(context).size.height / 1.3,
                          ),
                          backgroundColor: Colors.transparent,
                          content: ToastMessage(
                            message: S.of(context).toast_message_create_account,
                          ),
                          dismissDirection: DismissDirection.none));
                    }
                    return null;
                  },
                  dataImported: (emailVerified) {
                    if (emailVerified) {
                      Navigator.of(context).pop();
                      setState(() {
                       // getStoredInfo();
                        _firstNameController.text = firstName;
                        _lastNameController.text = lastName;
                        _defaultCountry = _defaultCountry;
                        _firstAddressController.text = address1;
                        _secondAddressController.text = address2;
                        _cityController.text = '';
                        _defaultState = _defaultState;
                        _zipController.text = '';
                        updateAllFlow = false;
                      });
                    } else {
                      Navigator.of(context).pop();
                      Future.delayed(
                          const Duration(seconds: 1), (() => showPopUp()));
                    }
                    return null;
                  },
                  updated: () {
                    showPopUp(username: userName);
                    if (updateAllFlow) {
                      setState(() {
                        _firstNameController.text = '';
                        _lastNameController.text = '';
                        _defaultCountry = _defaultCountry;
                        _firstAddressController.text = '';
                        _secondAddressController.text = '';
                        _cityController.text = '';
                        _defaultState = _defaultState;
                        _zipController.text = '';
                        updateAllFlow = false;
                      });
                      Navigator.of(context, rootNavigator: true).pop();
                    }
                    Loading.hide(context);
                    return null;
                  },
                  initial: () {
                    
                    return Loading.show(context);
                    
                  },
                  error: (message) => {
                    updateAllFlow = false,
                    Loading.hide(context),
                    // Dialogs.showOSDialog(context, 'Error', message, 'OK', () {})
                  },
                ),
            child: _getBody()));
  }

  GestureDetector _getBody() {
    return GestureDetector(
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
                  style: Theme.of(context).textTheme.displayMedium!.copyWith(
                        fontFamily: "KnockoutCustom",
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
                child: LayoutBuilder(builder: (context, viewportConstraints) {
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
                                      _defaultCountry = newValue??_defaultCountry;
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
                                inputFormatters: [
                                  FilteringTextInputFormatter.allow(
                                      RegExp("^.{0,50}\$")),
                                ],
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
                                inputFormatters: [
                                  FilteringTextInputFormatter.allow(
                                      RegExp("^.{0,50}\$")),
                                ],
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
                                inputFormatters: [
                                  FilteringTextInputFormatter.allow(
                                      RegExp("^.{0,50}\$")),
                                ],
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
                                          cupertinoPickerItems: _states,
                                          cupertinoPickervalue: _defaultState,
                                          onDone: (index) {
                                            setState(() => value = index);
                                            _defaultState = _states[index];
                                            Navigator.pop(context);
                                          }),
                                      Visibility(
                                          visible: stateErrorText != null,
                                          child: Align(
                                            alignment: Alignment.bottomLeft,
                                            child: Text(
                                                S.of(context).required_field,
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodySmall!
                                                    .copyWith(
                                                        color: Palette.current
                                                            .primaryNeonPink)),
                                          )),
                                      Visibility(
                                          visible: stateErrorText == null &&
                                              zipErrorText != null,
                                          child: const SizedBox(
                                            height: 20,
                                          ))
                                    ],
                                  ),
                                ),
                                const SizedBox(
                                  width: 20,
                                ),
                                Expanded(
                                  flex: 2,
                                  child: Column(
                                    children: [
                                      CustomTextFormField(
                                        inputType: TextInputType.text,
                                        inputFormatters: [
                                          FilteringTextInputFormatter.allow(
                                              RegExp(r'[a-zA-Z0-9 ]')),
                                        ],
                                        borderColor: _zipBorder,
                                        autofocus: false,
                                        errorText: zipErrorText,
                                        labelText: S.of(context).zip,
                                        focusNode: _zipNode,
                                        controller: _zipController,
                                      ),
                                      Visibility(
                                          visible: stateErrorText != null &&
                                              zipErrorText == null,
                                          child: const SizedBox(
                                            height: 20,
                                          ))
                                    ],
                                  ),
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
                                if (areFieldsValid()) {
                                  setState(() {
                                    updateAllFlow = true;
                                  });
                                  context
                                      .read<UpdateProfileBloc>()
                                      .add(UpdateProfileEvent.update(
                                          UpdateProfilePayloadModel(addresses: [
                                        AddressesPayloadModel(
                                            addressType: "SHIPPING",
                                            firstName:
                                                _firstNameController.text,
                                            lastName: _lastNameController.text,
                                            country: _defaultCountry,
                                            address1:
                                                _firstAddressController.text,
                                            address2:
                                                _secondAddressController.text,
                                            city: _cityController.text,
                                            state: _defaultState,
                                            postalCode: _zipController.text),
                                      ])));
                                }
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
        ]));
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

  void showPopUp({String? username}) {
    Future.delayed(
      const Duration(milliseconds: 500),
      () {
        if (hasImportableData && username != null) {
          showDialog(
            context: context,
            barrierDismissible: false,
            builder: (BuildContext context) => PopUp(name: username),
          );
        } else if (hasImportableData && username == null) {
          showDialog(
            context: context,
            barrierDismissible: false,
            builder: (BuildContext context) => const PopUp(),
          );
        }
      },
    );
  }
}
