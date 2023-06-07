import 'package:flutter/material.dart';

import '../../../../../generated/l10n.dart';
import '../../../../common/utils/palette.dart';
import '../../../../data/shared_preferences/shared_preferences_service.dart';
import '../../../../di/injector.dart';
import '../../../../models/settings/peer_to_peer_payments_get_model.dart';
import '../../../settings/account/peer_to_peer_payments_page.dart';
import 'payment_setup_error.dart';

// ignore: must_be_immutable
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

  List<String> items = [];

  final TextEditingController _textEditingController = TextEditingController();
  String? _selectedItem;
  bool _showDropdown = false;

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
          selectedOptions.add('PayPal');
        }

        if (paymentData.peerToPeerPayments!
            .toJson()
            .keys
            .first
            .contains('cashTag')) {
          _textEditingController.text = 'CashApp';
          selectedOptions.add('CashApp');
        }

        if (paymentData.peerToPeerPayments!
            .toJson()
            .keys
            .first
            .contains('venmoUser')) {
          _textEditingController.text = 'Venmo';
          selectedOptions.add('Venmo');
        }
      }
    }

    _selectedItem = 'Accepted Payment Types';
    _textEditingController.text = _selectedItem!;
  }

  void setUpPaymentList() {
    addPaymentIfNotNull(paymentData.peerToPeerPayments!.venmoUser, 'Venmo');
    addPaymentIfNotNull(paymentData.peerToPeerPayments!.cashTag, 'CashApp');
    addPaymentIfNotNull(paymentData.peerToPeerPayments!.payPalEmail, 'PayPal');
  }

  void addPaymentIfNotNull(String? payment, String itemName) {
    if (payment != null) {
      items.add(itemName);
    }
  }

  void handlePayment(String payment) {
    if (selectedOptions.contains(payment)) {
      selectedOptions.remove(payment);
    } else {
      selectedOptions.add(payment);
    }
    widget.onPaymentChange!(selectedOptions);
  }

  List<String> selectedOptions = [];
  @override
  Widget build(BuildContext context) {
    Future.delayed(Duration.zero, () {
      setState(() {
        PeerToPeerPaymentsGetModel paymentDataNew =
            getIt<PreferenceRepositoryService>().paymanetData();
        if ((paymentDataNew.peerToPeerPayments != null) &&
            (paymentData.peerToPeerPayments !=
                paymentDataNew.peerToPeerPayments)) {
          setState(() {
            paymentData = getIt<PreferenceRepositoryService>().paymanetData();
            items = [];
            setUpPaymentList();
          });
        }
      });
    });
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Center(
          child: Container(
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
              padding: EdgeInsets.only(bottom: !_showDropdown ? 6 : 0),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Container(
                    height: 55,
                    decoration:
                        BoxDecoration(color: Palette.current.primaryWhiteSmoke),
                    child: Padding(
                      padding: const EdgeInsets.only(left: 16, top: 4),
                      child: InputDecorator(
                        decoration: InputDecoration(
                          suffixIcon: IconButton(
                            icon: Image.asset(
                              'assets/images/IconDropdow.png',
                              width: 20,
                              height: 20,
                            ),
                            onPressed: () {
                              setState(() {
                                if (paymentData.peerToPeerPayments == null) {
                                  showDialog(
                                      context: context,
                                      barrierDismissible: false,
                                      builder: (BuildContext context) {
                                        return PaymentSetupError();
                                      });
                                } else {
                                  _showDropdown = !_showDropdown;
                                }
                              });
                            },
                          ),
                        ),
                        child: TextFormField(
                          readOnly: true,
                          enableInteractiveSelection: false,
                          controller: _textEditingController,
                          decoration: InputDecoration(
                            labelStyle:
                                Theme.of(context).textTheme.bodySmall!.copyWith(
                                      fontFamily: "Ringside",
                                      fontWeight: FontWeight.bold,
                                      color: Palette.current.primaryNero,
                                    ),
                            border: InputBorder.none,
                          ),
                          onTap: () {
                            setState(() {
                              if (paymentData.peerToPeerPayments == null) {
                                showDialog(
                                    context: context,
                                    barrierDismissible: false,
                                    builder: (BuildContext context) {
                                      return PaymentSetupError();
                                    });
                              } else {
                                _showDropdown = !_showDropdown;
                              }
                            });
                          },
                        ),
                      ),
                    ),
                  ),
                  if (_showDropdown)
                    Container(
                      padding: const EdgeInsets.only(top: 6),
                      decoration: const BoxDecoration(
                        border: Border(
                          bottom: BorderSide.none,
                        ),
                      ),
                      child: Material(
                        elevation: 4.0,
                        child: SizedBox(
                          height: 150.0,
                          child: ListView.builder(
                            padding: const EdgeInsets.all(8.0),
                            itemCount: 1,
                            itemBuilder: (BuildContext context, int index) {
                              return GestureDetector(
                                  onTap: () {},
                                  child: Column(
                                    children: [
                                      ListTile(
                                        contentPadding: const EdgeInsets.only(
                                            left: 0.0, right: 10.0),
                                        visualDensity: const VisualDensity(
                                            horizontal: -4, vertical: -4),
                                        onTap: () {
                                          items.contains('Venmo')
                                              ? () {}
                                              : Navigator.of(context,
                                                      rootNavigator: true)
                                                  .push(PeerToPeerPaymentsPage
                                                      .route());
                                        },
                                        leading: Theme(
                                          data: ThemeData(
                                            unselectedWidgetColor: Palette
                                                .current.primaryWhiteSmoke,
                                            checkboxTheme: CheckboxThemeData(
                                              side: MaterialStateBorderSide
                                                  .resolveWith(
                                                (Set<MaterialState> states) {
                                                  if (states.contains(
                                                      MaterialState.selected)) {
                                                    return BorderSide(
                                                        width: 1,
                                                        color: Palette
                                                            .current.grey);
                                                  }
                                                  return BorderSide(
                                                      width: 1,
                                                      color:
                                                          Palette.current.grey);
                                                },
                                              ),
                                              fillColor: MaterialStateProperty
                                                  .resolveWith<Color>(
                                                      (Set<MaterialState>
                                                          states) {
                                                if (states.contains(
                                                    MaterialState.selected)) {
                                                  return Palette
                                                      .current.primaryNeonGreen;
                                                }
                                                return Palette.current.grey;
                                              }),
                                            ),
                                          ),
                                          child: Checkbox(
                                            visualDensity: const VisualDensity(
                                                horizontal: -4, vertical: -4),
                                            value: selectedOptions
                                                .contains(S.of(context).venmo),
                                            onChanged: (value) {
                                              setState(() {
                                                if (items.contains('Venmo')) {
                                                  handlePayment('Venmo');
                                                } else {
                                                  Navigator.of(context,
                                                          rootNavigator: true)
                                                      .push(
                                                          PeerToPeerPaymentsPage
                                                              .route());
                                                }
                                              });
                                            },
                                          ),
                                        ),
                                        title: Row(
                                          children: [
                                            SizedBox(
                                              width: 20,
                                              child: Image.asset(
                                                'assets/icons/venmo_icon.png',
                                                scale: 3,
                                              ),
                                            ),
                                            const SizedBox(width: 10.0),
                                            Text(S.of(context).venmo,
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .displayLarge!
                                                    .copyWith(
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        letterSpacing: 0.6,
                                                        color: Palette
                                                            .current.black,
                                                        fontSize: 14)),
                                          ],
                                        ),
                                        trailing: items.contains('Venmo')
                                            ? Text(
                                                'Connected',
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodySmall!
                                                    .copyWith(
                                                      fontSize: 14,
                                                      color: Palette
                                                          .current.blackSmoke,
                                                    ),
                                              )
                                            : SizedBox(
                                                width: 72,
                                                child: Text(
                                                  'Settings',
                                                  textAlign: TextAlign.start,
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .bodySmall!
                                                      .copyWith(
                                                        fontSize: 14,
                                                        color: Palette.current
                                                            .primaryNeonPink,
                                                      ),
                                                ),
                                              ),
                                      ),
                                      ListTile(
                                        contentPadding: const EdgeInsets.only(
                                            left: 0.0, right: 10.0),
                                        visualDensity: const VisualDensity(
                                            horizontal: -4, vertical: -4),
                                        onTap: () {
                                          items.contains('CashApp')
                                              ? () {}
                                              : Navigator.of(context,
                                                      rootNavigator: true)
                                                  .push(PeerToPeerPaymentsPage
                                                      .route());
                                        },
                                        leading: Theme(
                                          data: ThemeData(
                                            unselectedWidgetColor: Palette
                                                .current.primaryWhiteSmoke,
                                            checkboxTheme: CheckboxThemeData(
                                              side: MaterialStateBorderSide
                                                  .resolveWith(
                                                (Set<MaterialState> states) {
                                                  if (states.contains(
                                                      MaterialState.selected)) {
                                                    return BorderSide(
                                                        width: 1,
                                                        color: Palette
                                                            .current.grey);
                                                  }
                                                  return BorderSide(
                                                      width: 1,
                                                      color:
                                                          Palette.current.grey);
                                                },
                                              ),
                                              fillColor: MaterialStateProperty
                                                  .resolveWith<Color>(
                                                      (Set<MaterialState>
                                                          states) {
                                                if (states.contains(
                                                    MaterialState.selected)) {
                                                  return Palette
                                                      .current.primaryNeonGreen;
                                                }
                                                return Palette.current.grey;
                                              }),
                                            ),
                                          ),
                                          child: Checkbox(
                                            visualDensity: const VisualDensity(
                                                horizontal: -4, vertical: -4),
                                            value: selectedOptions.contains(
                                                S.of(context).cash_app),
                                            onChanged: (value) {
                                              setState(() {
                                                if (items.contains('CashApp')) {
                                                  handlePayment('CashApp');
                                                } else {
                                                  Navigator.of(context,
                                                          rootNavigator: true)
                                                      .push(
                                                          PeerToPeerPaymentsPage
                                                              .route());
                                                }
                                              });
                                            },
                                          ),
                                        ),
                                        title: Row(
                                          children: [
                                            SizedBox(
                                              width: 20,
                                              child: Image.asset(
                                                'assets/icons/cash_app_icon.png',
                                                scale: 3,
                                              ),
                                            ),
                                            const SizedBox(width: 10.0),
                                            Text(S.of(context).cash_app,
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .displayLarge!
                                                    .copyWith(
                                                        fontWeight:
                                                            FontWeight.w400,
                                                        letterSpacing: 0.6,
                                                        color: Palette
                                                            .current.black,
                                                        fontSize: 14)),
                                          ],
                                        ),
                                        trailing: items.contains('CashApp')
                                            ? Text('Connected',
                                                style: Theme.of(context)
                                                    .textTheme
                                                    .bodySmall!
                                                    .copyWith(
                                                        fontSize: 14,
                                                        color: Palette.current
                                                            .blackSmoke))
                                            : SizedBox(
                                                width: 72,
                                                child: Text(
                                                  'Settings',
                                                  textAlign: TextAlign.start,
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .bodySmall!
                                                      .copyWith(
                                                        fontSize: 14,
                                                        color: Palette.current
                                                            .primaryNeonPink,
                                                      ),
                                                ),
                                              ),
                                      ),
                                      Container(
                                        margin: EdgeInsets.zero,
                                        padding: EdgeInsets.zero,
                                        child: ListTile(
                                          contentPadding: const EdgeInsets.only(
                                              left: 0.0, right: 10.0),
                                          visualDensity: const VisualDensity(
                                              horizontal: -4, vertical: -4),
                                          onTap: () {
                                            items.contains('PayPal')
                                                ? () {}
                                                : Navigator.of(context,
                                                        rootNavigator: true)
                                                    .push(PeerToPeerPaymentsPage
                                                        .route());
                                          },
                                          leading: Theme(
                                            data: ThemeData(
                                              unselectedWidgetColor: Palette
                                                  .current.primaryWhiteSmoke,
                                              checkboxTheme: CheckboxThemeData(
                                                side: MaterialStateBorderSide
                                                    .resolveWith(
                                                  (Set<MaterialState> states) {
                                                    if (states.contains(
                                                        MaterialState
                                                            .selected)) {
                                                      return BorderSide(
                                                          width: 1,
                                                          color: Palette
                                                              .current.grey);
                                                    }
                                                    return BorderSide(
                                                        width: 1,
                                                        color: Palette
                                                            .current.grey);
                                                  },
                                                ),
                                                fillColor: MaterialStateProperty
                                                    .resolveWith<Color>(
                                                        (Set<MaterialState>
                                                            states) {
                                                  if (states.contains(
                                                      MaterialState.selected)) {
                                                    return Palette.current
                                                        .primaryNeonGreen;
                                                  }
                                                  return Palette.current.grey;
                                                }),
                                              ),
                                            ),
                                            child: Checkbox(
                                              visualDensity:
                                                  const VisualDensity(
                                                      horizontal: -4,
                                                      vertical: -4),
                                              value: selectedOptions.contains(
                                                  S.of(context).payPal),
                                              onChanged: (value) {
                                                setState(() {
                                                  if (items
                                                      .contains('PayPal')) {
                                                    handlePayment('PayPal');
                                                  } else {
                                                    Navigator.of(context,
                                                            rootNavigator: true)
                                                        .push(
                                                            PeerToPeerPaymentsPage
                                                                .route());
                                                  }
                                                });
                                              },
                                            ),
                                          ),
                                          title: Row(
                                            children: [
                                              SizedBox(
                                                width: 20,
                                                child: Image.asset(
                                                  'assets/icons/pay_pal_icon.png',
                                                  scale: 3,
                                                ),
                                              ),
                                              const SizedBox(width: 10.0),
                                              Text(S.of(context).payPal,
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .displayLarge!
                                                      .copyWith(
                                                          fontWeight:
                                                              FontWeight.w400,
                                                          letterSpacing: 0.6,
                                                          color: Palette
                                                              .current.black,
                                                          fontSize: 14)),
                                            ],
                                          ),
                                          trailing: items.contains('PayPal')
                                              ? Text('Connected',
                                                  style: Theme.of(context)
                                                      .textTheme
                                                      .bodySmall!
                                                      .copyWith(
                                                          fontSize: 14,
                                                          color: Palette.current
                                                              .blackSmoke))
                                              : SizedBox(
                                                  width: 72,
                                                  child: Text(
                                                    'Settings',
                                                    textAlign: TextAlign.start,
                                                    style: Theme.of(context)
                                                        .textTheme
                                                        .bodySmall!
                                                        .copyWith(
                                                          fontSize: 14,
                                                          color: Palette.current
                                                              .primaryNeonPink,
                                                        ),
                                                  ),
                                                ),
                                        ),
                                      ),
                                    ],
                                  ));
                            },
                          ),
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
        !_showDropdown
            ? Padding(
                padding: const EdgeInsets.only(left: 10.0, top: 10.0),
                child: Text(
                  widget.helperText!,
                  style: Theme.of(context)
                      .textTheme
                      .labelSmall!
                      .copyWith(color: Palette.current.primaryWhiteSmoke),
                ),
              )
            : Container()
      ],
    );
  }
}
