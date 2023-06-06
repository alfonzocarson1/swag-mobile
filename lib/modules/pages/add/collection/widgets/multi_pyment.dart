import 'package:flutter/material.dart';

import '../../../../../generated/l10n.dart';
import '../../../../common/utils/palette.dart';
import '../../../../constants/constants.dart';
import '../../../../data/shared_preferences/shared_preferences_service.dart';
import '../../../../di/injector.dart';
import '../../../../models/settings/peer_to_peer_payments_get_model.dart';
import 'payment_setup_error.dart';

class MultiCheckboxDropdown extends StatefulWidget {
  MultiCheckboxDropdown({
    super.key,
    this.borderColor,
    this.errorText,
    required this.focusNode,
    this.inputType = TextInputType.text,
    this.onPaymentChange,
    this.helperText,
  });

  final Color? borderColor;
  final String? errorText;
  final FocusNode focusNode;
  final TextInputType inputType;
  void Function(List<String>)? onPaymentChange;
  final String? helperText;

  @override
  _MultiCheckboxDropdownState createState() => _MultiCheckboxDropdownState();
}

class _MultiCheckboxDropdownState extends State<MultiCheckboxDropdown> {
  PeerToPeerPaymentsGetModel paymentData =
      getIt<PreferenceRepositoryService>().paymanetData();
  List<String> _items = [];
  List<bool> _selectedItems = [];
  final TextEditingController _textEditingController = TextEditingController();

  @override
  void initState() {
    super.initState();

    if (paymentData.peerToPeerPayments != null) {
      setUpPaymentList();

      var peerToPeerPaymentsJson = paymentData.peerToPeerPayments!.toJson();

      if (peerToPeerPaymentsJson.length == 1) {
        if (paymentData.peerToPeerPayments!
            .toJson()
            .keys
            .first
            .contains('payPalEmail')) {
          _textEditingController.text = 'PayPal';
          _selectedItems[0] = true;
        }

        if (paymentData.peerToPeerPayments!
            .toJson()
            .keys
            .first
            .contains('cashTag')) {
          _textEditingController.text = 'Cashapp';
          _selectedItems[0] = true;
        }

        if (paymentData.peerToPeerPayments!
            .toJson()
            .keys
            .first
            .contains('venmoUser')) {
          _textEditingController.text = 'Venmo';
          _selectedItems[0] = true;
        }
      }
    }
  }

  void setUpPaymentList() {
    addPaymentIfNotNull(paymentData.peerToPeerPayments!.venmoUser, 'Venmo');
    addPaymentIfNotNull(paymentData.peerToPeerPayments!.cashTag, 'Cashapp');
    addPaymentIfNotNull(paymentData.peerToPeerPayments!.payPalEmail, 'PayPal');

    _selectedItems = List.generate(_items.length, (index) => false);
  }

  void addPaymentIfNotNull(String? payment, String itemName) {
    if (payment != null) {
      _items.add(itemName);
    }
  }

  void _handleSelection(int index, bool value) {
    setState(() {
      _selectedItems[index] = value;
      _updateSelectedItemsText();
    });
  }

  void _updateSelectedItemsText() {
    List<String> selectedItems = _items
        .asMap()
        .entries
        .where((entry) => _selectedItems[entry.key])
        .map((entry) => entry.value)
        .toList();

    widget.onPaymentChange!(selectedItems);
    _textEditingController.text = selectedItems.join(", ");
  }

  @override
  void dispose() {
    _textEditingController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          decoration: BoxDecoration(
            color: Colors.transparent,
            border: widget.borderColor != null
                ? Border.all(
                    color: widget.errorText != null
                        ? Palette.current.primaryNeonPink
                        : widget.borderColor!,
                  )
                : null,
          ),
          child: Padding(
            padding: const EdgeInsets.only(bottom: 6),
            child: Column(
              children: [
                Container(
                  height: 55,
                  decoration:
                      BoxDecoration(color: Palette.current.primaryWhiteSmoke),
                  child: Padding(
                    padding: const EdgeInsets.only(left: 16, top: 4),
                    child: TextFormField(
                      autofocus: false,
                      readOnly: true,
                      controller: _textEditingController,
                      decoration: InputDecoration(
                        counterText: "",
                        labelStyle:
                            Theme.of(context).textTheme.bodySmall!.copyWith(
                              letterSpacing: 0.05,
                                  fontFamily: "Ringside",
                                  color: Palette.current.primaryNero,
                                ),
                        contentPadding: const EdgeInsets.only(top: 8),
                        border: InputBorder.none,
                        labelText: S.of(context).accepted_payment_types,
                      ),
                      onTap: () async {
                        PeerToPeerPaymentsGetModel paymentDataNew =
                            getIt<PreferenceRepositoryService>().paymanetData();
                        if ((paymentDataNew.peerToPeerPayments != null) &&
                            (paymentData.peerToPeerPayments !=
                                paymentDataNew.peerToPeerPayments)) {
                          setState(() {
                            paymentData = getIt<PreferenceRepositoryService>()
                                .paymanetData();
                            _items = [];
                            setUpPaymentList();
                          });
                        }

                        if (paymentData.peerToPeerPayments == null) {
                          showDialog(
                              context: context,
                              barrierDismissible: false,
                              builder: (BuildContext context) {
                                return PaymentSetupError();
                              });
                        } else {
                          List<int> tempSelectedIndices = List<int>.from(
                              _selectedItems
                                  .asMap()
                                  .entries
                                  .where((entry) => entry.value)
                                  .map((entry) => entry.key));

                          await showDialog(
                            context: context,
                            builder: (BuildContext context) {
                              return StatefulBuilder(
                                builder: (BuildContext context,
                                    StateSetter setState) {
                                  return Dialog(
                                    insetPadding: const EdgeInsets.all(20),
                                    shape: RoundedRectangleBorder(
                                        borderRadius: BorderRadius.circular(0)),
                                    child: Stack(
                                      children: [
                                        Container(
                                          color: Palette.current.blackSmoke,
                                          child: Padding(
                                            padding: const EdgeInsets.symmetric(
                                                horizontal: 20),
                                            child: Column(
                                              mainAxisSize: MainAxisSize.min,
                                              crossAxisAlignment:
                                                  CrossAxisAlignment.stretch,
                                              children: [
                                                const SizedBox(
                                                  height: 40,
                                                ),
                                                Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: Text(
                                                      S
                                                          .of(context)
                                                          .accepted_payment_types
                                                          .toUpperCase(),
                                                      textAlign: TextAlign.left,
                                                      style: Theme.of(context)
                                                          .textTheme
                                                          .displayMedium!
                                                          .copyWith(
                                                            fontFamily:
                                                                "KnockoutCustom",
                                                            fontSize: 40,
                                                            fontWeight:
                                                                FontWeight.w300,
                                                            color: Palette
                                                                .current
                                                                .primaryNeonGreen,
                                                          )),
                                                ),
                                                const SizedBox(
                                                  height: 10,
                                                ),
                                                Align(
                                                  alignment:
                                                      Alignment.centerLeft,
                                                  child: SizedBox(
                                                    child: ListView.builder(
                                                      shrinkWrap: true,
                                                      itemCount: _items.length,
                                                      itemBuilder:
                                                          (BuildContext context,
                                                              int index) {
                                                        return Theme(
                                                          data: ThemeData(
                                                            unselectedWidgetColor:
                                                                Palette.current
                                                                    .primaryWhiteSmoke,
                                                            checkboxTheme:
                                                                CheckboxThemeData(
                                                              fillColor: MaterialStateProperty
                                                                  .resolveWith<
                                                                      Color>((Set<
                                                                          MaterialState>
                                                                      states) {
                                                                if (states.contains(
                                                                    MaterialState
                                                                        .selected)) {
                                                                  return Palette
                                                                      .current
                                                                      .primaryNeonGreen; // Color de fondo cuando está seleccionado
                                                                }
                                                                return Palette
                                                                    .current
                                                                    .primaryWhiteSmoke;
                                                              }),
                                                            ),
                                                          ),
                                                          child:
                                                              CheckboxListTile(
                                                            contentPadding:
                                                                EdgeInsets.zero,
                                                            controlAffinity:
                                                                ListTileControlAffinity
                                                                    .leading,
                                                            title: Text(
                                                                _items[index],
                                                                style: Theme.of(
                                                                        context)
                                                                    .textTheme
                                                                    .bodySmall!
                                                                    .copyWith(
                                                                      fontSize:
                                                                          14,
                                                                      letterSpacing:
                                                                          0.3,
                                                                      color: Palette
                                                                          .current
                                                                          .primaryWhiteSmoke,
                                                                    )),
                                                            value:
                                                                tempSelectedIndices
                                                                    .contains(
                                                                        index),
                                                            onChanged:
                                                                (bool? value) {
                                                              if (value !=
                                                                  null) {
                                                                setState(() {
                                                                  if (value) {
                                                                    tempSelectedIndices
                                                                        .add(
                                                                            index);
                                                                  } else {
                                                                    tempSelectedIndices
                                                                        .remove(
                                                                            index);
                                                                  }
                                                                });
                                                                _handleSelection(
                                                                    index,
                                                                    value);
                                                              }
                                                            },
                                                          ),
                                                        );
                                                      },
                                                    ),
                                                  ),
                                                ),
                                                const SizedBox(
                                                  height: 40,
                                                ),
                                              ],
                                            ),
                                          ),
                                        ),
                                        Positioned(
                                          right: 0,
                                          top: 3,
                                          child: IconButton(
                                            iconSize: 30,
                                            color: Palette
                                                .current.primaryNeonGreen,
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
                                  );
                                },
                              );
                            },
                          );
                          setState(() {
                            _selectedItems =
                                List.generate(_items.length, (index) => false);
                            for (int index in tempSelectedIndices) {
                              _selectedItems[index] = true;
                            }
                            _updateSelectedItemsText();
                          });
                        }
                      },
                    ),
                  ),
                ),
                Container(
                  height: widget.errorText != null ? 1.5 : 0,
                  width: MediaQuery.of(context).size.width,
                  color: Palette.current.primaryNeonPink,
                )
              ],
            ),
          ),
        ),
        widget.errorText != null
            ? Text(
                widget.errorText!,
                style: Theme.of(context)
                    .textTheme
                    .bodySmall!
                    .copyWith(color: Palette.current.primaryNeonPink),
              )
            : Container(),
        Padding(
          padding: const EdgeInsets.only(left: 10.0, top: 10.0),
          child: Text(
            widget.helperText!,
            style: Theme.of(context)
                .textTheme
                .labelSmall!
                .copyWith(
                  letterSpacing: 0.02,
                  color: Palette.current.primaryWhiteSmoke),
          ),
        )
      ],
    );
  }
}
