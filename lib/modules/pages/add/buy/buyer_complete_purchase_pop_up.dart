import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:simple_rich_text/simple_rich_text.dart';
import 'package:swagapp/modules/common/ui/primary_button.dart';
import 'package:swagapp/modules/common/utils/palette.dart';

import '../../../../generated/l10n.dart';
import '../../../common/ui/clickable_text.dart';
import '../../../common/ui/cupertino_custom_picker.dart';
import '../../../common/ui/custom_text_form_field.dart';
import '../../../common/utils/utils.dart';
import '../../../data/shared_preferences/shared_preferences_service.dart';
import '../../../di/injector.dart';
import '../../../models/profile/profile_model.dart';
import '../../../models/settings/peer_to_peer_payments_get_model.dart';
import '../../../models/update_profile/addresses_payload_model.dart';

class BuyerCompletePurchasePopUp extends StatefulWidget {
  const BuyerCompletePurchasePopUp({super.key, this.name});
  final String? name;

  @override
  State<BuyerCompletePurchasePopUp> createState() =>
      _BuyerCompletePurchasePopUpState();
}

class _BuyerCompletePurchasePopUpState
    extends State<BuyerCompletePurchasePopUp> {
  ProfileModel profileData = getIt<PreferenceRepositoryService>().profileData();
  PeerToPeerPaymentsGetModel paymentData =
      getIt<PreferenceRepositoryService>().paymanetData();
  final FocusNode _paymentTypeNode = FocusNode();
  final _paymentTypeController = TextEditingController();
  Color _paymentTypeBorder = Palette.current.primaryWhiteSmoke;

  final FocusNode _shippedAddressNode = FocusNode();
  final _shippedAddressController = TextEditingController();
  Color _shippedAddressBorder = Palette.current.primaryWhiteSmoke;

  final FocusNode _addressNode = FocusNode();
  final _addressController = TextEditingController();
  Color _addressBorder = Palette.current.primaryWhiteSmoke;

  final FocusNode _cityNode = FocusNode();
  final _cityController = TextEditingController();
  Color _cityBorder = Palette.current.primaryWhiteSmoke;

  final FocusNode _stateNode = FocusNode();
  final _stateController = TextEditingController();
  Color _stateBorder = Palette.current.primaryWhiteSmoke;

  final FocusNode _zipNode = FocusNode();
  final _zipController = TextEditingController();
  Color _zipBorder = Palette.current.primaryWhiteSmoke;

  String _defaultPaymentType = 'Payment Type';
  String _defaultShippedAddress = 'Shiped Address';
  String _defaultAddress = 'Calle 11 Cra 9';
  String _defaultCity = 'Miami';
  String _defaultState = 'State';
  bool checkBoxValue = false;

  late AddressesPayloadModel newCollectionList;

  List<AddressesPayloadModel> addresses = [];

  var paymentTypes = ['Payment Type'];

  var shippedAddress = ['Shiped Address'];

  String? paymentTypeErrorText;
  String? shippedAddressErrorText;
  String? addressErrorText;
  String? cityErrorText;
  String? stateErrorText;
  String? zipErrorText;

  final _states = ['State'];

  int value = 0;

  @override
  void initState() {
    if (paymentData.peerToPeerPayments!.venmoUser != null) {
      paymentTypes.add('Venmo');
    }
    if (paymentData.peerToPeerPayments!.cashTag != null) {
      paymentTypes.add('Cashapp');
    }

    if (paymentData.peerToPeerPayments!.payPalEmail != null) {
      paymentTypes.add('PayPal');
    }
    for (final address in profileData.addresses!) {
      final index = profileData.addresses!.indexOf(address);
      shippedAddress.add('${profileData.addresses![index].address1}');
    }

    setState(() {
      addresses = profileData.addresses!;
    });

    _defaultShippedAddress = shippedAddress[1];
    _addressController.text = shippedAddress[1];
    _cityController.text = '${profileData.addresses![0].city}';
    _zipController.text = '${profileData.addresses![0].postalCode}';
    _defaultState = '${profileData.addresses![0].state}';

    _paymentTypeNode.addListener(() {
      setState(() {
        _paymentTypeBorder = _paymentTypeNode.hasFocus
            ? Palette.current.primaryNeonGreen
            : Palette.current.primaryWhiteSmoke;
      });
    });

    _shippedAddressNode.addListener(() {
      setState(() {
        _shippedAddressBorder = _shippedAddressNode.hasFocus
            ? Palette.current.primaryNeonGreen
            : Palette.current.primaryWhiteSmoke;
      });
    });

    _addressNode.addListener(() {
      setState(() {
        _addressBorder = _addressNode.hasFocus
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
    super.initState();
  }

  void _getStates() async {
    var responseSatate = await getStates();
    setState(() {
      _states.addAll(responseSatate as Iterable<String>);
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Dialog(
        insetPadding: const EdgeInsets.all(15),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
        child: GestureDetector(
          onTap: () {
            _paymentTypeNode.unfocus();
            _shippedAddressNode.unfocus();
            _addressNode.unfocus();
            _cityNode.unfocus();
            _stateNode.unfocus();
            _zipNode.unfocus();
          },
          child: SingleChildScrollView(
            physics: const ClampingScrollPhysics(),
            child: Stack(
              children: [
                Container(
                  color: Palette.current.blackSmoke,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(horizontal: 30),
                    child: Column(
                      mainAxisSize: MainAxisSize.min,
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Column(
                          children: [
                            const SizedBox(
                              height: 50,
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                  S
                                      .of(context)
                                      .complete_purchase_title
                                      .toUpperCase(),
                                  textAlign: TextAlign.left,
                                  style: Theme.of(context)
                                      .textTheme
                                      .displayMedium!
                                      .copyWith(
                                        fontFamily: "KnockoutCustom",
                                        fontSize: 44,
                                        fontWeight: FontWeight.w300,
                                        color: Palette.current.primaryNeonGreen,
                                      )),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(S.of(context).complete_purchase_sub_title,
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineLarge!
                                    .copyWith(
                                        color:
                                            Palette.current.primaryWhiteSmoke,
                                        fontSize: 16)),
                            const SizedBox(
                              height: 10,
                            ),
                            CustomTextFormField(
                                borderColor: _paymentTypeBorder,
                                autofocus: false,
                                labelText: S.of(context).payment_types,
                                errorText: paymentTypeErrorText,
                                dropdownForm: true,
                                dropdownFormItems: paymentTypes,
                                dropdownvalue: _defaultPaymentType,
                                dropdownOnChanged: (String? newValue) {
                                  setState(() {
                                    setState(() {
                                      _defaultPaymentType = newValue!;
                                    });
                                  });
                                },
                                focusNode: _paymentTypeNode,
                                controller: _paymentTypeController,
                                inputType: TextInputType.text),
                            const SizedBox(
                              height: 10,
                            ),
                            Text(S.of(context).shipped_input_title,
                                style: Theme.of(context)
                                    .textTheme
                                    .headlineLarge!
                                    .copyWith(
                                        color:
                                            Palette.current.primaryWhiteSmoke,
                                        fontSize: 16)),
                            const SizedBox(
                              height: 10,
                            ),
                            CustomTextFormField(
                                borderColor: _shippedAddressBorder,
                                autofocus: false,
                                labelText: S.of(context).payment_types,
                                errorText: shippedAddressErrorText,
                                dropdownForm: true,
                                dropdownFormItems: shippedAddress,
                                dropdownvalue: _defaultShippedAddress,
                                dropdownOnChanged: (String? newValue) {
                                  setState(() {
                                    setState(() {
                                      _defaultShippedAddress = newValue!;

                                      AddressesPayloadModel? targetAddress =
                                          addresses.firstWhere((address) =>
                                              address.address1 ==
                                              _defaultShippedAddress);

                                      setState(() {
                                        _addressController.text =
                                            '${targetAddress.address1}';
                                        _cityController.text =
                                            '${targetAddress.city}';
                                        _zipController.text =
                                            '${targetAddress.postalCode}';
                                        _defaultState =
                                            '${targetAddress.state}';
                                      });
                                    });
                                  });
                                },
                                focusNode: _paymentTypeNode,
                                controller: _shippedAddressController,
                                inputType: TextInputType.text),
                            const SizedBox(
                              height: 10,
                            ),
                            CustomTextFormField(
                                inputFormatters: [
                                  FilteringTextInputFormatter.allow(
                                      RegExp("^.{0,50}\$")),
                                ],
                                borderColor: _addressBorder,
                                autofocus: false,
                                labelText: 'Address',
                                errorText: addressErrorText,
                                focusNode: _addressNode,
                                controller: _addressController,
                                inputType: TextInputType.text),
                            const SizedBox(
                              height: 10,
                            ),
                            CustomTextFormField(
                                inputFormatters: [
                                  FilteringTextInputFormatter.allow(
                                      RegExp("^.{0,50}\$")),
                                ],
                                borderColor: _cityBorder,
                                autofocus: false,
                                labelText: 'City',
                                errorText: cityErrorText,
                                focusNode: _cityNode,
                                controller: _cityController,
                                inputType: TextInputType.text),
                            const SizedBox(
                              height: 10,
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
                                        inputType: const TextInputType
                                            .numberWithOptions(
                                          decimal: true,
                                          signed: false,
                                        ),
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
                            Row(
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                SizedBox(
                                  height: 24.0,
                                  width: 24.0,
                                  child: Checkbox(
                                    checkColor: Palette.current.black,
                                    value: checkBoxValue,
                                    onChanged: (value) {
                                      setState(
                                          () => checkBoxValue = value ?? false);
                                    },
                                    side: BorderSide(
                                        color:
                                            Palette.current.primaryNeonGreen),
                                  ),
                                ),
                                const SizedBox(width: 10),
                                Flexible(
                                  child: Padding(
                                      padding: const EdgeInsets.only(top: 0.0),
                                      child: Text(
                                        S.of(context).save_address,
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodySmall!
                                            .copyWith(
                                              color: Palette
                                                  .current.primaryNeonGreen,
                                            ),
                                      )),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            PrimaryButton(
                              title:
                                  S.of(context).razon_remove_btn.toUpperCase(),
                              onPressed: () {},
                              type: PrimaryButtonType.green,
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                          ],
                        )
                      ],
                    ),
                  ),
                ),
                Positioned(
                  right: 0,
                  top: 3,
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
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
