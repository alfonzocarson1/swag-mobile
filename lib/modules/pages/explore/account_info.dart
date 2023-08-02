// ignore_for_file: unnecessary_null_comparison

import 'dart:convert';
import 'dart:io';
import 'package:http/http.dart' as http;
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swagapp/generated/l10n.dart';
import 'package:swagapp/modules/api/api.dart';
import 'package:swagapp/modules/common/ui/custom_app_bar.dart';
import 'package:swagapp/modules/common/ui/primary_button.dart';
import 'package:swagapp/modules/common/utils/palette.dart';
import 'package:swagapp/modules/stripe/models/card_token_input_model.dart';
import 'package:swagapp/modules/stripe/models/customer_input_model.dart';
import 'package:swagapp/modules/stripe/models/payment_method_input_model.dart';
import 'package:swagapp/modules/stripe/models/stripe_error_model.dart';

import '../../blocs/update_profile_bloc/update_profile_bloc.dart';
import '../../common/ui/cupertino_custom_date_picker.dart';
import '../../common/ui/cupertino_custom_picker.dart';
import '../../common/ui/cupertino_month_year_picker.dart';
import '../../common/ui/custom_text_form_field.dart';
import '../../common/ui/account_info_head.dart';
import '../../common/ui/dynamic_toast_messages.dart';
import '../../common/ui/loading.dart';
import '../../common/ui/popup_screen.dart';
import '../../common/utils/custom_route_animations.dart';
import '../../common/utils/size_helper.dart';
import '../../common/utils/utils.dart';
import '../../constants/constants.dart';
import '../../data/secure_storage/storage_repository_service.dart';
import '../../data/shared_preferences/shared_preferences_service.dart';
import '../../di/injector.dart';
import '../../models/profile/profile_model.dart';
import '../../models/update_profile/addresses_payload_model.dart';
import '../../models/update_profile/update_profile_payload_model.dart';
import '../../stripe/constants.dart';
import '../../stripe/stripe_service.dart';

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
  ProfileModel profileData = getIt<PreferenceRepositoryService>().profileData();

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

  // New Data Starts From Here
  final FocusNode _cardNameNode = FocusNode();
  final _cardNameController = TextEditingController();
  Color _cardNameBorder = Palette.current.primaryWhiteSmoke;

  final FocusNode _cardNode = FocusNode();
  final _cardController = TextEditingController();
  Color _cardBorder = Palette.current.primaryWhiteSmoke;

  final FocusNode _cvcNode = FocusNode();
  final _cvcController = TextEditingController();
  Color _cvcBorder = Palette.current.primaryWhiteSmoke;

  final FocusNode _expirationNode = FocusNode();
  final _expirationController = TextEditingController();
  Color _expirationBorder = Palette.current.primaryWhiteSmoke;

  final FocusNode _billingCountryNode = FocusNode();
  final _billingCountryController = TextEditingController();
  Color _billingCountryBorder = Palette.current.primaryWhiteSmoke;

  final FocusNode _billingFirstAddressNode = FocusNode();
  final _billingFirstAddressController = TextEditingController();
  Color __billingFirstAddressBorder = Palette.current.primaryWhiteSmoke;

  final FocusNode _billingSecondAddressNode = FocusNode();
  final _billingSecondAddressController = TextEditingController();
  Color _billingSecondAddressBorder = Palette.current.primaryWhiteSmoke;

  final FocusNode _billingCityNode = FocusNode();
  final _billingCityController = TextEditingController();
  Color _billingCityBorder = Palette.current.primaryWhiteSmoke;

  final FocusNode _billingZipNode = FocusNode();
  final _billingZippController = TextEditingController();
  Color _billingZippBorder = Palette.current.primaryWhiteSmoke;

  final FocusNode _billingStateNode = FocusNode();
  final _billingStateController = TextEditingController();
  Color _billingStateBorder = Palette.current.primaryWhiteSmoke;

  String? nameErrorText;
  String? lastNameErrorText;
  String? countryErrorText;
  String? addressErrorText;
  String? cityErrorText;
  String? stateErrorText;
  String? zipErrorText;
  String? cardNameErrorText;
  String? cardErrorText;
  String? cvcErrorText;
  String? expirationErrorText;
  String? billingCountryErrorText;
  String? billingFirstAddressError;
  String? billingCityErrorText;
  String? billingZippErrorText;
  String? billingStateErrorText;
  String firstName = '';
  String lastName = '';
  String address1 = '';
  String address2 = '';
  String city = '';
  String zipp = '';
  bool hasImportableData = false;
  bool verificationEmailSent = false;
  bool billingAndShippingAddressesAreSame = false;

  late ResponsiveDesign _responsiveDesign;

  String _defaultCountry = 'United States';
  String _defaultState = 'State';
  String _billingDefaultCountry = 'United States';
  String _billingdefaultState = 'State';
  List<String> _states = ['State'];
  List<String> _billingStates = ['State'];
  int value = 0;
  StripeService stripeService = StripeService();
  bool updateAllFlow = false;
  bool billingCountryFirstUse = true;
  late String userName;
  DateTime _defaultDateTime = DateTime.now();
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

  void _getStates(String country) async {
    // _states = ['State'];
    _states.clear();
    _defaultState = 'State';
    var responseSatate = await getStates(country);
    _states.addAll(responseSatate as Iterable<String>);
    setState(() {});
  }

  void _getBillingStates(String country) async {
    _states.clear();
    _billingdefaultState = 'State';
    var responseSatate = await getStates(country);
    _billingStates.addAll(responseSatate as Iterable<String>);
    setState(() {});
  }

  @override
  void initState() {
    super.initState();

    hasImportableData =
        getIt<PreferenceRepositoryService>().hasImportableData();

    _firstNameNode.addListener(() {
      setState(() {
        if (_firstNameNode.hasFocus) {
          setState(() {
            nameErrorText = null;
          });
        }
        _firstNameBorder = _firstNameNode.hasFocus
            ? Palette.current.primaryNeonGreen
            : Palette.current.primaryWhiteSmoke;
      });
    });

    _lastNameNode.addListener(() {
      if (_lastNameNode.hasFocus) {
        setState(() {
          lastNameErrorText = null;
        });
      }
      setState(() {
        _lastNameBorder = _lastNameNode.hasFocus
            ? Palette.current.primaryNeonGreen
            : Palette.current.primaryWhiteSmoke;
      });
    });

    _countryNode.addListener(() {
      if (_countryNode.hasFocus) {
        setState(() {
          countryErrorText = null;
        });
      }
      setState(() {
        _countryBorder = _countryNode.hasFocus
            ? Palette.current.primaryNeonGreen
            : Palette.current.primaryWhiteSmoke;
      });
    });

    _firstAddressNode.addListener(() {
      if (_firstAddressNode.hasFocus) {
        setState(() {
          addressErrorText = null;
        });
      }
      setState(() {
        _firstAddressBorder = _firstAddressNode.hasFocus
            ? Palette.current.primaryNeonGreen
            : Palette.current.primaryWhiteSmoke;
      });
    });

    _expirationNode.addListener(() {
      if (_expirationNode.hasFocus) {
        setState(() {
          expirationErrorText = null;
        });
      }
      setState(() {
        _expirationBorder = _expirationNode.hasFocus
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
      if (_cityNode.hasFocus) {
        setState(() {
          cityErrorText = null;
        });
      }
      setState(() {
        _cityBorder = _cityNode.hasFocus
            ? Palette.current.primaryNeonGreen
            : Palette.current.primaryWhiteSmoke;
      });
    });

    _stateNode.addListener(() {
      if (_stateNode.hasFocus) {
        setState(() {
          stateErrorText = null;
        });
      }
      setState(() {
        _stateBorder = _stateNode.hasFocus
            ? Palette.current.primaryNeonGreen
            : Palette.current.primaryWhiteSmoke;
      });
    });

    _zipNode.addListener(() {
      if (_zipNode.hasFocus) {
        setState(() {
          zipErrorText = null;
        });
      }
      setState(() {
        _zipBorder = _zipNode.hasFocus
            ? Palette.current.primaryNeonGreen
            : Palette.current.primaryWhiteSmoke;
      });
    });

    _cardNameNode.addListener(() {
      if (_cardNameNode.hasFocus) {
        setState(() {
          cardNameErrorText = null;
        });
      }
      setState(() {
        _cardNameBorder = _cardNameNode.hasFocus
            ? Palette.current.primaryNeonGreen
            : Palette.current.primaryWhiteSmoke;
      });
    });

    _cardNode.addListener(() {
      if (_cardNode.hasFocus) {
        setState(() {
          cardErrorText = null;
        });
      }
      setState(() {
        _cardBorder = _cardNode.hasFocus
            ? Palette.current.primaryNeonGreen
            : Palette.current.primaryWhiteSmoke;
      });
    });

    _cvcNode.addListener(() {
      setState(() {
        cvcErrorText = null;
        _cvcBorder = _cvcNode.hasFocus
            ? Palette.current.primaryNeonGreen
            : Palette.current.primaryWhiteSmoke;
      });
    });

    _billingFirstAddressNode.addListener(() {
      setState(() {
        if (_billingFirstAddressNode.hasFocus) {
          billingFirstAddressError = null;
        }
        __billingFirstAddressBorder = _billingFirstAddressNode.hasFocus
            ? Palette.current.primaryNeonGreen
            : Palette.current.primaryWhiteSmoke;
      });
    });

    _billingCityNode.addListener(() {
      setState(() {
        if (_billingCityNode.hasFocus) {
          billingCityErrorText = null;
        }
        _billingCityBorder = _billingCityNode.hasFocus
            ? Palette.current.primaryNeonGreen
            : Palette.current.primaryWhiteSmoke;
      });
    });

    _billingZipNode.addListener(() {
      setState(() {
        if (_billingZipNode.hasFocus) {
          billingZippErrorText = null;
        }
        _billingZippBorder = _billingZipNode.hasFocus
            ? Palette.current.primaryNeonGreen
            : Palette.current.primaryWhiteSmoke;
      });
    });

    getStatesForProvidedCountry();
    getBillingStatesForSelectedCountry();
    getStoredInfo();
    if (firstName == '' || lastName == '') {
      showPopUp(username: userName);
    }
  }

  getStoredInfo() async {
    userName = (getIt<PreferenceRepositoryService>().profileData().username);
    firstName = (await getIt<StorageRepositoryService>().getFirstName() ?? '');
    lastName = (await getIt<StorageRepositoryService>().getLastName() ?? '');
    _defaultCountry = (await getIt<StorageRepositoryService>().getCountry() ??
        'United States');
    _defaultState =
        (await getIt<StorageRepositoryService>().getState() ?? 'State');
    city = (await getIt<StorageRepositoryService>().getCity() ?? '');
    zipp = (await getIt<StorageRepositoryService>().getZip() ?? '');
    var addresses = (await getIt<StorageRepositoryService>().getAddresses());

    if (addresses.isNotEmpty) {
      address1 = addresses[0] ?? '';
      address2 = addresses[1] ?? '';
    }
  }

  @override
  Widget build(BuildContext context) {
    _responsiveDesign = ResponsiveDesign(context);
    return Scaffold(
        extendBodyBehindAppBar: true,
        resizeToAvoidBottomInset: true,
        backgroundColor: Colors.transparent,
        appBar: CustomAppBar(
          isAccountInfo: true,
        ),
        body: BlocListener<UpdateProfileBloc, UpdateProfileState>(
            listener: (context, state) => state.maybeWhen(
                  orElse: () {
                    return null;
                  },
                  verifyEmailModalClosed: (modalClosed) {
                    Future.delayed(const Duration(seconds: 1),
                        (() => showPopUp(username: userName)));
                    return null;
                  },
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
                        _cityController.text = city;
                        _defaultState = _defaultState;
                        _zipController.text = zipp;
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
                                textCapitalization: TextCapitalization.words,
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
                                textCapitalization: TextCapitalization.words,
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
                            CupertinoPickerView(
                                errorText: stateErrorText,
                                cupertinoPickerItems: countries,
                                cupertinoPickervalue: _defaultCountry,
                                onDone: (index) {
                                  setState(() => value = index);
                                  setState(() {
                                    _defaultCountry = countries[index];
                                  });
                                  _countryController.text = _defaultCountry;
                                  countryErrorText = null;
                                  getStatesForProvidedCountry();
                                  if (billingCountryFirstUse) {
                                    setState(() {
                                      _billingDefaultCountry = _defaultCountry;
                                    });
                                    getBillingStatesForSelectedCountry();
                                  }
                                  // if (_defaultCountry != defaultCountry)
                                  //   _defaultState = defaultState;
                                  Navigator.pop(context);
                                }),
                            const SizedBox(
                              height: 20,
                            ),
                            CustomTextFormField(
                                inputFormatters: [
                                  FilteringTextInputFormatter.allow(
                                      RegExp("^.{0,50}\$")),
                                ],
                                textCapitalization: TextCapitalization.words,
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
                                textCapitalization: TextCapitalization.words,
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
                                textCapitalization: TextCapitalization.words,
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
                                          key: const Key('State-Picker'),
                                          errorText: stateErrorText,
                                          cupertinoPickerItems: _states,
                                          cupertinoPickervalue: _defaultState,
                                          onDone: (index) {
                                            setState(() => value = index);
                                            _defaultState = _states[index]
                                                .split('-')
                                                .last
                                                .trim();
                                            _stateController.text =
                                                _defaultState;
                                            stateErrorText = null;
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
                                        textCapitalization:
                                            TextCapitalization.characters,
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

                            // TO DO change Properties
                            txxt(),
                            const SizedBox(
                              height: 20,
                            ),
                            // Name On Card Field
                            CustomTextFormField(
                              inputType: TextInputType.text,
                              inputFormatters: [
                                FilteringTextInputFormatter.allow(
                                    RegExp(r'[a-zA-Z. ]')),
                              ],
                              textCapitalization: TextCapitalization.words,
                              borderColor: _cardNameBorder,
                              autofocus: false,
                              errorText: cardNameErrorText,
                              labelText: S.of(context).name,
                              focusNode: _cardNameNode,
                              controller: _cardNameController,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            // Card Number
                            CustomTextFormField(
                              inputFormatters: [
                                FilteringTextInputFormatter.allow(
                                    RegExp("^.{0,50}\$")),
                              ],
                              maxLength: 23,
                              borderColor: _cardBorder,
                              autofocus: false,
                              errorText: cardErrorText,
                              labelText: S.of(context).card,
                              focusNode: _cardNode,
                              controller: _cardController,
                              inputType: TextInputType.number,
                              onChanged: (v) {
                                setState(() {
                                  _cardController.text = _formatCardNumber(v);
                                  _cardController.selection =
                                      TextSelection.fromPosition(TextPosition(
                                          offset: _cardController.text.length));
                                });
                              },
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            // Expiration and CVC

                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  flex: 2,
                                  child: Column(
                                    children: [
                                      CustomTextFormField(
                                        inputType: TextInputType.number,
                                        borderColor: _expirationBorder,
                                        inputFormatters: [
                                          _CardExpirationInputFormatter(),
                                        ],
                                        maxLength: 5,
                                        autofocus: false,
                                        errorText: expirationErrorText,
                                        labelText: S.of(context).expiration,
                                        focusNode: _expirationNode,
                                        controller: _expirationController,
                                        onChanged: (p0) {
                                          debugPrint("length: ${p0.length}");
                                          if (p0.length == 5) {
                                            final month =
                                                int.parse(p0.split('/').first);
                                            final year = int.parse(
                                                '20${p0.split('/').last}');
                                            final monthYear =
                                                DateTime(year, month);
                                            setState(() {
                                              _defaultDateTime = monthYear;
                                              expirationErrorText = null;
                                            });
                                          }
                                        },
                                      )
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
                                        inputType: TextInputType.number,
                                        borderColor: _cvcBorder,
                                        maxLength: 4,
                                        autofocus: false,
                                        errorText: cvcErrorText,
                                        labelText: S.of(context).cvc,
                                        focusNode: _cvcNode,
                                        controller: _cvcController,
                                        onChanged: (p0) {},
                                      ),
                                    ],
                                  ),
                                )
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            // Check Box And Description
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 24.0,
                                  width: 24.0,
                                  child: Checkbox(
                                    checkColor: Palette.current.black,
                                    value: billingAndShippingAddressesAreSame,
                                    activeColor:
                                        Palette.current.primaryNeonGreen,
                                    onChanged: (value) {
                                      setState(() =>
                                          billingAndShippingAddressesAreSame =
                                              value ?? false);
                                    },
                                    side: BorderSide(
                                        color:
                                            Palette.current.primaryNeonGreen),
                                  ),
                                ),
                                const SizedBox(width: 10),
                                Flexible(
                                  child: RichText(
                                      maxLines: 2,
                                      softWrap: false,
                                      overflow: TextOverflow.ellipsis,
                                      textAlign: TextAlign.left,
                                      text: TextSpan(children: [
                                        TextSpan(
                                          text:
                                              'Billing address same as shipping address',
                                          style: Theme.of(context)
                                              .textTheme
                                              .bodySmall!
                                              .copyWith(
                                                  color: Palette
                                                      .current.primaryNeonGreen,
                                                  fontSize: 14),
                                        ),
                                      ])),
                                ),
                              ],
                            ),
                            billingAndShippingAddressesAreSame
                                ? Container()
                                : billingAddressPortion(),

                            const SizedBox(
                              height: 20,
                            ),
                            PrimaryButton(
                              title: S.of(context).next_btn,
                              onPressed: () async {
                                showErrors();
                                if (areFieldsValid()) {
                                  debugPrint('All Fields Are Valid');
                                  final response = await createCardToken();

                                  if (response != null &&
                                      response.statusCode == 200) {
                                    setState(() {
                                      updateAllFlow = true;
                                    });
                                    context
                                        .read<UpdateProfileBloc>()
                                        .add(UpdateProfileEvent.update(
                                            UpdateProfilePayloadModel(
                                                firstName:
                                                    _firstNameController.text,
                                                lastName:
                                                    _lastNameController.text,
                                                addresses: [
                                              AddressesPayloadModel(
                                                  addressType: "SHIPPING",
                                                  country: _defaultCountry,
                                                  address1:
                                                      _firstAddressController
                                                          .text,
                                                  address2:
                                                      _secondAddressController
                                                          .text,
                                                  city: _cityController.text,
                                                  state: _defaultState,
                                                  postalCode:
                                                      _zipController.text),
                                            ])));
                                    getIt<PreferenceRepositoryService>()
                                        .saveProfileDataState(false);
                                  }
                                } else {
                                  debugPrint('All Fields Are Not Valid');
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

  getStatesForProvidedCountry() {
    _states.clear();
    _defaultState = defaultState;
    setState(() {});
    if (_defaultCountry == defaultCountry) {
      _states
          .addAll(usStates.map((e) => '${e['short']} - ${e['name']}').toList());
    } else if (_defaultCountry == "Canada") {
      _states
          .addAll(caStates.map((e) => '${e['short']} - ${e['name']}').toList());
    } else if (_defaultCountry == "Hong Kong") {
      _states.addAll(hongKongStates);
    } else if (_defaultCountry == "South Korea") {
      _states.addAll(southKoreaStates);
    } else if (_defaultCountry == "Singapore") {
      _states.addAll(singaporeRegions);
    } else {
      _getStates(_defaultCountry);
    }
  }

  getBillingStatesForSelectedCountry() {
    _billingStates.clear();
    _billingdefaultState = defaultState;
    setState(() {});
    if (_billingDefaultCountry == defaultCountry) {
      _billingStates
          .addAll(usStates.map((e) => '${e['short']} - ${e['name']}').toList());
    } else if (_billingDefaultCountry == "Canada") {
      _billingStates
          .addAll(caStates.map((e) => '${e['short']} - ${e['name']}').toList());
    } else if (_billingDefaultCountry == "Hong Kong") {
      _billingStates.addAll(hongKongStates);
    } else if (_billingDefaultCountry == "South Korea") {
      _billingStates.addAll(southKoreaStates);
    } else if (_billingDefaultCountry == "Singapore") {
      _billingStates.addAll(singaporeRegions);
    } else {
      _getBillingStates(_billingDefaultCountry);
    }
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
          _defaultState != defaultState ? null : S.of(context).required_field;

      zipErrorText =
          _zipController.text.isNotEmpty ? null : S.of(context).required_field;
      cardNameErrorText = _cardNameController.text.isNotEmpty
          ? null
          : S.of(context).required_field;
      cardErrorText = _cardController.text.isNotEmpty &&
              _cardController.text.length >= 19 &&
              _cardController.text.length <= 23
          ? null
          : S.of(context).required_field;
      cvcErrorText =
          _cvcController.text.isNotEmpty ? null : S.of(context).required_field;
      expirationErrorText = _defaultDateTime.isAfter(DateTime.now())
          ? null
          : S.of(context).invalid_date;
      billingCountryErrorText = _billingDefaultCountry != 'Country'
          ? null
          : S.of(context).required_field;
      billingStateErrorText = _billingDefaultCountry != 'Country'
          ? null
          : S.of(context).required_field;
    });

    if (!billingAndShippingAddressesAreSame) {
      setState(() {
        billingCountryErrorText = _billingDefaultCountry != 'Country'
            ? null
            : S.of(context).required_field;
        billingFirstAddressError =
            _billingFirstAddressController.text.isNotEmpty
                ? null
                : S.of(context).required_field;
        billingCityErrorText = _billingCityController.text.isNotEmpty
            ? null
            : S.of(context).required_field;
        billingStateErrorText = _billingdefaultState != defaultState
            ? null
            : S.of(context).required_field;
        billingZippErrorText = _billingZippController.text.isNotEmpty
            ? null
            : S.of(context).required_field;
      });
    }
  }

  String _formatCardNumber(String value) {
    value = value.replaceAll(RegExp(r'\D'), '');
    if (value.length > 19) {
      value = value.substring(0, 19);
    }
    final formattedValue = value.replaceAllMapped(
        RegExp(r'.{4}'), (match) => '${match.group(0)} ');
    return formattedValue.trim();
  }

  bool validateState() {
    if (_defaultCountry == 'United States' && _defaultState != 'State') {
      return true;
    } else if (_defaultCountry != 'United States' && _defaultState == 'State') {
      return true;
    } else {
      return false;
    }
  }

  bool validateBillingState() {
    if (_billingDefaultCountry == 'United States' &&
        _billingdefaultState != 'State') {
      return true;
    } else if (_billingDefaultCountry != 'United States' &&
        _billingdefaultState == 'State') {
      return true;
    } else {
      return false;
    }
  }

  bool areFieldsValid() {
    var billingOverAllCheck = false;

    if (!billingAndShippingAddressesAreSame) {
      billingOverAllCheck = _billingCityController.text.isNotEmpty &&
          _billingFirstAddressController.text.isNotEmpty &&
          _billingDefaultCountry != 'Country' &&
          _billingZippController.text.isNotEmpty &&
          _billingdefaultState != defaultState;
    } else {
      billingOverAllCheck = true;
    }

    return _firstNameController.text.isNotEmpty &&
        _lastNameController.text.isNotEmpty &&
        _defaultCountry != 'Country' &&
        _firstAddressController.text.isNotEmpty &&
        _cityController.text.isNotEmpty &&
        _defaultState != defaultState &&
        _zipController.text.isNotEmpty &&
        _cardController.text.isNotEmpty &&
        _cardController.text.length >= 19 &&
        _cardController.text.length <= 23 &&
        _cvcController.text.isNotEmpty &&
        _defaultDateTime.isAfter(DateTime.now()) &&
        billingOverAllCheck;
  }

  Future<http.Response?> createCardToken() async {
    http.Response? response;
    Loading.show(context);

    CardTokenInputModel cardTokenInputModel = billingAndShippingAddressesAreSame
        ? CardTokenInputModel(
            expMonth: '${_defaultDateTime.month}',
            expYear: '${_defaultDateTime.year}',
            cvc: _cvcController.text,
            cardNumber: _cardController.text,
            name: _cardNameController.text.trim(),
            city: _cityController.text,
            address1: _firstAddressController.text,
            address2: _secondAddressController.text ?? ' ',
            zip: _zipController.text,
            state: _defaultState,
            country: getCountryCodeFromCountryName(_defaultCountry) ?? ' ',
          )
        : CardTokenInputModel(
            expMonth: '${_defaultDateTime.month}',
            expYear: '${_defaultDateTime.year}',
            cvc: _cvcController.text,
            cardNumber: _cardController.text,
            name: _cardNameController.text.trim(),
            city: _billingCityController.text,
            address1: _billingFirstAddressController.text,
            address2: _billingSecondAddressController.text ?? ' ',
            zip: _billingZippController.text,
            state: _billingdefaultState,
            country:
                getCountryCodeFromCountryName(_billingDefaultCountry) ?? ' ',
          );
    response = await stripeService.createCardToken(cardTokenInputModel);
    if (response.statusCode != 200) {
      StripeErrorModel stripeErrorModel =
          StripeErrorModel.fromJson(jsonDecode(response.body)['error']);
      // Card Related Error handlings
      handleCardErrors(stripeErrorModel);
      showSnackBar(
          context, stripeErrorModel.message ?? S.of(context).stripe_error);
      debugPrint('Card Token Creation Failed: ${response.body}');
    } else {
      debugPrint('Card Token Created: ${response.body}');
      final tokenId = jsonDecode(response.body)['id'];
      saveCardToken(tokenId);
    }
    await Future.delayed(const Duration(milliseconds: 800));
    Loading.hide(context);
    return response;
  }

  Future<http.Response?> saveCardToken(String cardToken) async {
    http.Response? response;
    final uri = getIt.get<API>().scheme.encodeUri(
      getIt.get<API>().host,
      "api/v1/profile/settings/addPaymentMethod/$cardToken",
    );
    final token = await getIt<StorageRepositoryService>().getToken();
    final headers = {
      "Content-Type": "application/json",
      HttpHeaders.authorizationHeader: 'Bearer $token',
    };
    response = await http.post(uri, headers: headers);
    if (response != null && response.statusCode == 200) {
      debugPrint('Card Token Saved On B.E: ${response.body}');
    } else {
      debugPrint('Failed To Save Card Token On B.E: ${response.body}');
    }
    return response;
  }

  Future<http.Response?> createAndAttachPaymentMethod() async {
    http.Response? response;
    Loading.show(context);
    CustomerInputModel customerInputModel = billingAndShippingAddressesAreSame
        ? CustomerInputModel(
            name: _firstNameController.text + _lastNameController.text,
            email: profileData.email,
            phone: profileData.phoneNumber,
            city: _cityController.text,
            country: getCountryCodeFromCountryName(_defaultCountry) ?? ' ',
            line1: _firstAddressController.text,
            line2: _secondAddressController.text ?? ' ',
            postalCode: _zipController.text,
            state: _defaultState)
        : CustomerInputModel(
            name: _cardNameController.text,
            email: profileData.email,
            phone: profileData.phoneNumber,
            city: _billingCityController.text,
            country:
                getCountryCodeFromCountryName(_billingDefaultCountry) ?? ' ',
            line1: _billingFirstAddressController.text,
            line2: _billingSecondAddressController.text ?? ' ',
            postalCode: _billingZippController.text,
            state: _billingdefaultState);

    PaymentMethodInputModel paymentMethodInputModel =
        billingAndShippingAddressesAreSame
            ? PaymentMethodInputModel(
                city: _cityController.text,
                country: getCountryCodeFromCountryName(_defaultCountry) ?? ' ',
                line1: _firstAddressController.text,
                line2: _secondAddressController.text,
                postalCode: _zipController.text,
                state: _defaultState,
                email: profileData.email,
                name:
                    '${_firstNameController.text} ${_lastNameController.text}',
                phone: profileData.phoneNumber,
                expMonth: '${_defaultDateTime.month}',
                expYear: '${_defaultDateTime.year}',
                cvc: _cvcController.text,
                cardNumber: _cardController.text)
            : PaymentMethodInputModel(
                city: _billingCityController.text,
                country:
                    getCountryCodeFromCountryName(_billingDefaultCountry) ??
                        ' ',
                line1: _billingFirstAddressController.text,
                line2: _billingSecondAddressController.text,
                postalCode: _billingZippController.text,
                state: _billingdefaultState,
                email: profileData.email,
                name:
                    '${_firstNameController.text} ${_lastNameController.text}',
                phone: profileData.phoneNumber,
                expMonth: '${_defaultDateTime.month}',
                expYear: '${_defaultDateTime.year}',
                cvc: _cvcController.text,
                cardNumber: _cardController.text);

    final customerCreationResponse =
        await stripeService.createCustomer(customerInputModel);
    if (customerCreationResponse.statusCode == 200) {
      debugPrint('New Stripe User Created: ${customerCreationResponse.body}');
      final customerId = jsonDecode(customerCreationResponse.body)['id'];
      final paymentMethodCreationResponse =
          await stripeService.createPaymentMethod(paymentMethodInputModel);
      if (paymentMethodCreationResponse.statusCode != 200) {
        StripeErrorModel stripeErrorModel = StripeErrorModel.fromJson(
            jsonDecode(paymentMethodCreationResponse.body)['error']);
        // Card Related Error handlings
        handleCardErrors(stripeErrorModel);
      } else if (paymentMethodCreationResponse.statusCode == 200) {
        debugPrint(
            'New Payment Method Created: ${paymentMethodCreationResponse.body}');
        final paymentMethodId =
            jsonDecode(paymentMethodCreationResponse.body)["id"];
        final paymentMethodAttachmentResponse =
            await stripeService.attachPaymentMethod(
                customerId: customerId, paymentMethodId: paymentMethodId);
        response = paymentMethodAttachmentResponse;
        if (paymentMethodAttachmentResponse.statusCode == 200) {
          debugPrint(
              'Newly Created payment method attached to the newly created stripe customer: ${paymentMethodAttachmentResponse.body}');
          // SAVING THE NEWLY CREATED PAYMENT METHOD ID FOR FUTURE USE
          final paymentMethodId =
              jsonDecode(paymentMethodAttachmentResponse.body)['id'];
          getIt<StorageRepositoryService>().saveStripeToken(paymentMethodId);
        } else {
          //HANDLING STRIPE PAYMENT METHOD ATTACHMENT FAILURE SCENARIO
          StripeErrorModel stripeErrorModel = StripeErrorModel.fromJson(
              jsonDecode(paymentMethodAttachmentResponse.body)['error']);
          final errorMessage = stripeErrorModel.message;
          showSnackBar(context, errorMessage ?? S.of(context).stripe_error);
          debugPrint(
              'Failed  to Attache newly created paymnet methode to the newly created stripe customer: ${paymentMethodAttachmentResponse.body}');
        }
      } else {
        //HANDLING STRIPE PAYMENT METHOD CREATION FAILED SCENARIO
        StripeErrorModel stripeErrorModel = StripeErrorModel.fromJson(
            jsonDecode(paymentMethodCreationResponse.body)['error']);
        final errorMessage = stripeErrorModel.message;
        showSnackBar(context, errorMessage ?? S.of(context).stripe_error);
        debugPrint(
            'New Payment Method Creation Failed: ${paymentMethodCreationResponse.body}');
      }
    } else {
      //HANDLING STRIPE USER CREATION FAILED SCENARIO
      StripeErrorModel stripeErrorModel = StripeErrorModel.fromJson(
          jsonDecode(customerCreationResponse.body)['error']);
      final errorMessage = stripeErrorModel.message;
      showSnackBar(context, errorMessage ?? S.of(context).stripe_error);
      debugPrint(
          'New Stripe Customer Creation Failed: ${customerCreationResponse.body}');
    }
    Loading.hide(context);
    return response;
  }

  void handleCardErrors(StripeErrorModel stripeErrorModel) {
    debugPrint(stripeErrorModel.code);
    if (stripeErrorModel.code == INVALID_CARD) {
      setState(() {
        cardErrorText = 'Invalid Card Number';
      });
    } else if (stripeErrorModel.code == INVALID_EXPIRY_MONTH) {
      setState(() {
        expirationErrorText = 'Invalid Month';
      });
    } else if (stripeErrorModel.code == INVALID_EXPIRY_YEAR) {
      setState(() {
        expirationErrorText = 'Invalid Year';
      });
    } else if (stripeErrorModel.code == INVALID_CVC) {
      setState(() {
        cvcErrorText = 'Invalid CVC';
      });
    } else {
      return;
    }
  }

  String? getCountryCodeFromCountryName(String countryName) {
    final countryIndex = countries.indexOf(countryName);
    if (countryIndex != -1) {
      return countriesCode[countryIndex];
    }
    return null;
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

  Widget billingAddressPortion() {
    return Column(crossAxisAlignment: CrossAxisAlignment.start, children: [
      const SizedBox(
        height: 20,
      ),
      // Billing Address Text
      Text(
        S.of(context).billing_address,
        style: Theme.of(context)
            .textTheme
            .bodySmall!
            .copyWith(color: Palette.current.primaryWhiteSmoke),
      ),

      // Billing Address Portion Starts From Here
      const SizedBox(
        height: 20,
      ),
      CupertinoPickerView(
          errorText: billingCountryErrorText,
          cupertinoPickerItems: countries,
          cupertinoPickervalue: _billingDefaultCountry,
          onDone: (index) {
            setState(() => value = index);
            _billingDefaultCountry = countries[index];
            _billingCountryController.text = _billingDefaultCountry;
            setState(() {
              billingCountryFirstUse = false;
            });
            // if (_billingDefaultCountry != defaultCountry)
            //   _billingdefaultState = defaultState;
            getBillingStatesForSelectedCountry();
            Navigator.pop(context);
          }),
      const SizedBox(
        height: 20,
      ),
      CustomTextFormField(
          inputFormatters: [
            FilteringTextInputFormatter.allow(RegExp("^.{0,50}\$")),
          ],
          textCapitalization: TextCapitalization.words,
          borderColor: __billingFirstAddressBorder,
          autofocus: false,
          labelText: '${S.of(context).billing_address} 1',
          errorText: billingFirstAddressError,
          focusNode: _billingFirstAddressNode,
          controller: _billingFirstAddressController,
          inputType: TextInputType.text),
      const SizedBox(
        height: 20,
      ),
      CustomTextFormField(
          inputFormatters: [
            FilteringTextInputFormatter.allow(RegExp("^.{0,50}\$")),
          ],
          textCapitalization: TextCapitalization.words,
          borderColor: _billingSecondAddressBorder,
          autofocus: false,
          labelText: S.of(context).second_address,
          focusNode: _billingSecondAddressNode,
          controller: _billingSecondAddressController,
          inputType: TextInputType.text),
      const SizedBox(
        height: 20,
      ),
      CustomTextFormField(
          inputFormatters: [
            FilteringTextInputFormatter.allow(RegExp("^.{0,50}\$")),
          ],
          textCapitalization: TextCapitalization.words,
          borderColor: _billingCityBorder,
          autofocus: false,
          errorText: billingCityErrorText,
          labelText: S.of(context).city,
          focusNode: _billingCityNode,
          controller: _billingCityController,
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
                    key: const Key('State-Picker2'),
                    errorText: billingStateErrorText,
                    cupertinoPickerItems: _billingStates,
                    cupertinoPickervalue: _billingdefaultState,
                    onDone: (index) {
                      setState(() => value = index);
                      _billingdefaultState =
                          _billingStates[index].split('-').last.trim();
                      _billingStateController.text = _billingdefaultState;
                      billingStateErrorText = null;
                      setState(() {
                        billingCountryFirstUse = false;
                      });
                      Navigator.pop(context);
                    }),
                Visibility(
                    visible: billingStateErrorText != null,
                    child: Align(
                      alignment: Alignment.bottomLeft,
                      child: Text(S.of(context).required_field,
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall!
                              .copyWith(
                                  color: Palette.current.primaryNeonPink)),
                    )),
                Visibility(
                    visible: billingStateErrorText == null &&
                        billingZippErrorText != null,
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
                    FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z0-9 ]')),
                  ],
                  textCapitalization: TextCapitalization.characters,
                  borderColor: _billingZippBorder,
                  autofocus: false,
                  errorText: billingZippErrorText,
                  labelText: S.of(context).zip,
                  focusNode: _billingZipNode,
                  controller: _billingZippController,
                ),
                Visibility(
                    visible: stateErrorText != null && zipErrorText == null,
                    child: const SizedBox(
                      height: 20,
                    ))
              ],
            ),
          )
        ],
      ),
    ]);
  }

  Widget txxt() {
    return RichText(
      maxLines: 5,
      softWrap: false,
      overflow: TextOverflow.ellipsis,
      textAlign: TextAlign.left,
      text: TextSpan(children: [
        TextSpan(
          text: S.of(context).creditcard_and_billing_info,
          style: Theme.of(context).textTheme.bodySmall!.copyWith(
                color: Palette.current.primaryWhiteSmoke,
              ),
        ),
        TextSpan(
          text: S.of(context).note,
          style: Theme.of(context).textTheme.bodySmall!.copyWith(
                fontWeight: FontWeight.w400,
                color: Palette.current.primaryWhiteSmoke,
              ),
        ),
        TextSpan(
          text: S.of(context).card_description,
          style: Theme.of(context).textTheme.bodySmall!.copyWith(
                color: Palette.current.primaryWhiteSmoke,
              ),
        )
      ]),
    );
  }
}

class _CardExpirationInputFormatter extends TextInputFormatter {
  @override
  TextEditingValue formatEditUpdate(
      TextEditingValue oldValue, TextEditingValue newValue) {
    String formattedText = _getFormattedText(newValue.text);
    return newValue.copyWith(
      text: formattedText,
      selection: TextSelection.collapsed(offset: formattedText.length),
    );
  }

  String _getFormattedText(String inputText) {
    inputText = inputText.replaceAll(RegExp(r'[^0-9]'), '');
    var month = '';
    var year = '';
    if (inputText.length >= 3) {
      month = inputText.substring(0, 2);
      year = inputText.substring(2);
      if (int.parse(month) > 12) {
        month = '12';
      }
      inputText = '$month/$year';
    }
    if (inputText.length == 5) {
      if (int.parse('20${inputText.split('/').last}') < DateTime.now().year) {
        inputText = '$month/${DateTime.now().year.toString().substring(2, 4)}';
      }
    }
    return inputText;
  }
}
