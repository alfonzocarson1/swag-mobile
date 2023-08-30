import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import '../../../../generated/l10n.dart';
import '../../../api/stripe_api.dart';
import '../../../common/ui/cupertino_custom_picker.dart';
import '../../../common/ui/custom_text_form_field.dart';
import '../../../common/ui/loading.dart';
import '../../../common/ui/primary_button.dart';
import '../../../common/ui/pushed_header.dart';
import '../../../common/utils/custom_route_animations.dart';
import '../../../common/utils/palette.dart';
import '../../../common/utils/utils.dart';
import '../../../constants/constants.dart';
import '../../../cubits/cards/cards_cubits.dart';
import '../../../di/injector.dart';
import '../../explore/account_info.dart';

class AddCardPage extends StatefulWidget {
  static const name = '/AddCardPage';

  const AddCardPage({super.key});

  static Route route() => PageRoutes.material(
        settings: const RouteSettings(name: name),
        builder: (context) => const AddCardPage(),
      );

  @override
  State<AddCardPage> createState() => _AddCardPageState();
}

class _AddCardPageState extends State<AddCardPage> {
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
  bool billingAndShippingAddressesAreSame = true;
  String? stateErrorText;
  String? zipErrorText;

  DateTime _defaultDateTime = DateTime.now();

  bool billingCountryFirstUse = true;

  String _defaultCountry = 'United States';
  String _defaultState = 'State';
  String _billingDefaultCountry = 'United States';
  String _billingdefaultState = 'State';
  List<String> _states = ['State'];
  List<String> _billingStates = ['State'];
  int value = 0;
  bool updateAllFlow = false;
  late String userName;

  String _formatCardNumber(String value) {
    value = value.replaceAll(RegExp(r'\D'), '');
    if (value.length > 19) {
      value = value.substring(0, 19);
    }
    final formattedValue = value.replaceAllMapped(
        RegExp(r'.{4}'), (match) => '${match.group(0)} ');
    return formattedValue.trim();
  }

  @override
  void initState() {
    super.initState();
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

    getBillingStatesForSelectedCountry();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PushedHeader(
        showBackButton: true,
        title: Align(
          alignment: Alignment.centerRight,
          child: Text(
            S
                .of(context)
                .premium_memberatomic_drop_payments_title
                .toUpperCase(),
            style: Theme.of(context).textTheme.displayLarge!.copyWith(
                  letterSpacing: 1,
                  fontWeight: FontWeight.w300,
                  fontFamily: "KnockoutCustom",
                  fontSize: 30,
                  color: Palette.current.primaryNeonGreen,
                ),
          ),
        ),
        height: 70,
      ),
      backgroundColor: Palette.current.primaryNero,
      body: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              RichText(
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
              ),
              const SizedBox(
                height: 20,
              ),
              // Name On Card Field
              CustomTextFormField(
                inputType: TextInputType.text,
                inputFormatters: [
                  FilteringTextInputFormatter.allow(RegExp(r'[a-zA-Z. ]')),
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
                  FilteringTextInputFormatter.allow(RegExp("^.{0,50}\$")),
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
                    _cardController.selection = TextSelection.fromPosition(
                        TextPosition(offset: _cardController.text.length));
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
                            CardExpirationInputFormatter(),
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
                              final month = int.parse(p0.split('/').first);
                              final year = int.parse('20${p0.split('/').last}');
                              final monthYear = DateTime(year, month);
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
                              _billingStateController.text =
                                  _billingdefaultState;
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
                                          color:
                                              Palette.current.primaryNeonPink)),
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
                            FilteringTextInputFormatter.allow(
                                RegExp(r'[a-zA-Z0-9 ]')),
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
                          visible:
                              stateErrorText != null && zipErrorText == null,
                          child: const SizedBox(
                            height: 20,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
              const SizedBox(
                height: 20,
              ),
              PrimaryButton(
                title: S.of(context).next_btn,
                onPressed: () async {
                  showErrors();
                  if (areFieldsValid()) {
                    debugPrint('All Fields Are Valid');
                    final created = await createCardToken();

                    if (created) {
                      Navigator.of(context).pop();
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
  }

  void showErrors() {
    setState(() {
      stateErrorText =
          _defaultState != defaultState ? null : S.of(context).required_field;

      cardNameErrorText = _cardNameController.text.isNotEmpty
          ? null
          : S.of(context).required_field;
      cardErrorText =
          _cardController.text.isNotEmpty && _cardNumberLength() != 0
              ? null
              : S.of(context).required_field;

      if (_cardNumberLength() > 23) {
        cardErrorText = S.of(context).card_number_max_error(23);
      }

      if (_cardNumberLength() < 8) {
        cardErrorText = S.of(context).card_number_min_error(8);
      }

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

  int _cardNumberLength() {
    return _cardController.text.replaceAll(" ", "").length;
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

    var cardCheck = false;
    if (_cardController.text.isNotEmpty &&
        _cardNumberLength() >= 8 &&
        _cardNumberLength() <= 19 &&
        _cvcController.text.isNotEmpty &&
        _defaultDateTime.isAfter(DateTime.now())) {
      cardCheck = true;
    }

    return cardCheck && billingOverAllCheck;
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

  Future<bool> createCardToken() async {
    Loading.show(context);

    final String addressCity;
    final String addressLine1;
    final String addressLine2;
    final String addressZip;
    final String addressState;
    final String addressCountry;

    addressCity = _billingCityController.text;
    addressLine1 = _billingFirstAddressController.text;
    addressLine2 = _billingSecondAddressController.text;
    addressZip = _billingZippController.text;
    addressState = _billingdefaultState;
    addressCountry =
        getCountryCodeFromCountryName(_billingDefaultCountry) ?? ' ';

    final request = CardTokenRequest(
      expMonth: '${_defaultDateTime.month}',
      expYear: '${_defaultDateTime.year}',
      cvc: _cvcController.text,
      number: _cardController.text,
      name: _cardNameController.text.trim(),
      addressCity: addressCity,
      addressLine1: addressLine1,
      addressLine2: addressLine2,
      addressZip: addressZip,
      addressState: addressState,
      addressCountry: addressCountry,
    );

    bool done = false;
    try {
      await getIt<CardsCubit>().addCard(request);
    } catch (e) {
      done = false;
      if (e is StripeError) {
        handleStripeError(e);
      }
    }
    await Future.delayed(const Duration(milliseconds: 800));
    Loading.hide(context);
    return done;
  }

  void handleStripeError(StripeError stripeErrorModel) {
    debugPrint(stripeErrorModel.code);
    showSnackBar(
        context, stripeErrorModel.message ?? S.of(context).stripe_error);
    if (stripeErrorModel.code == StripeErrors.INVALID_CARD) {
      setState(() {
        cardErrorText = 'Invalid Card Number';
      });
    } else if (stripeErrorModel.code == StripeErrors.INVALID_EXPIRY_MONTH) {
      setState(() {
        expirationErrorText = 'Invalid Month';
      });
    } else if (stripeErrorModel.code == StripeErrors.INVALID_EXPIRY_YEAR) {
      setState(() {
        expirationErrorText = 'Invalid Year';
      });
    } else if (stripeErrorModel.code == StripeErrors.INVALID_CVC) {
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

  void _getBillingStates(String country) async {
    _billingStates.clear();
    _billingdefaultState = 'State';
    var responseSatate = await getStates(country);
    _billingStates.addAll(responseSatate as Iterable<String>);
    setState(() {});
  }
}
