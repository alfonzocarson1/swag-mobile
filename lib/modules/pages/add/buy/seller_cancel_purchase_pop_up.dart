import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swagapp/modules/common/ui/primary_button.dart';
import 'package:swagapp/modules/common/utils/palette.dart';

import '../../../../generated/l10n.dart';

import '../../../cubits/buy/buy_cubit.dart';

import '../../../di/injector.dart';

import '../../../models/buy_for_sale_listing/cancel_purchase_request_model.dart';
import '../../../models/buy_for_sale_listing/cancel_purchase_response_model.dart';

class SellerCancelPurchasePopUp extends StatefulWidget {
  const SellerCancelPurchasePopUp(
      {super.key, this.productItemId, this.listingChatId});

  final String? productItemId;
  final String? listingChatId;

  @override
  State<SellerCancelPurchasePopUp> createState() =>
      _SellerCancelPurchasePopUpState();
}

class _SellerCancelPurchasePopUpState extends State<SellerCancelPurchasePopUp> {
  @override
  void initState() {
    super.initState();
  }

  int _selectedCheckboxIndex = -1;
  TextEditingController _textFieldController = TextEditingController();
  String? cancelReason;
  String? cancelReasonError;

  var initialText = '';

  void _handleCheckboxValueChanged(int index, String? cancelReasonCheckBox) {
    setState(() {
      _selectedCheckboxIndex = index;
      cancelReason = cancelReasonCheckBox;
    });
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<BuyCubit, BuyStateCubit>(
        listener: (context, state) => state.maybeWhen(
              orElse: () {
                return null;
              },
              dataCancelPurchaseRequest:
                  (CancelPurchaseResponseModel cancelPurchaseResponse) {
                Navigator.of(context).pop();
                Navigator.of(context).pop();

                return null;
              },
            ),
        child: Center(
          child: Dialog(
            insetPadding: const EdgeInsets.all(15),
            shape:
                RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
            child: GestureDetector(
              onTap: () {},
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
                                      S.of(context).cancel_sale.toUpperCase(),
                                      textAlign: TextAlign.left,
                                      style: Theme.of(context)
                                          .textTheme
                                          .displayMedium!
                                          .copyWith(
                                            fontFamily: "KnockoutCustom",
                                            fontSize: 44,
                                            fontWeight: FontWeight.w300,
                                            color: Palette
                                                .current.primaryNeonGreen,
                                          )),
                                ),
                                const SizedBox(
                                  height: 10,
                                ),
                                Text(S.of(context).cancel_sale_description,
                                    style: Theme.of(context)
                                        .textTheme
                                        .headlineLarge!
                                        .copyWith(
                                            color: Palette
                                                .current.primaryWhiteSmoke,
                                            fontSize: 16)),
                                const SizedBox(
                                  height: 30,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      width: 18,
                                      height: 18,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(30.0),
                                        border: Border.all(
                                          color: _selectedCheckboxIndex == 0
                                              ? Palette.current.primaryNeonGreen
                                              : Colors.grey,
                                        ),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(2.0),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(30.0),
                                          child: Container(
                                            color: _selectedCheckboxIndex == 0
                                                ? Palette
                                                    .current.primaryNeonGreen
                                                : Colors.transparent,
                                            child: Checkbox(
                                                value:
                                                    _selectedCheckboxIndex == 0,
                                                onChanged: (value) {
                                                  _handleCheckboxValueChanged(
                                                      0, 'Unresponsive buyer');
                                                  cancelReasonError = null;
                                                },
                                                activeColor: Palette
                                                    .current.primaryNeonGreen,
                                                checkColor: Palette
                                                    .current.primaryNeonGreen),
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Text(
                                      'Unresponsive buyer',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall!
                                          .copyWith(
                                            fontSize: 15,
                                            letterSpacing: 0.3,
                                            color: Palette
                                                .current.primaryWhiteSmoke,
                                          ),
                                    ),
                                  ],
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      width: 18,
                                      height: 18,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(30.0),
                                        border: Border.all(
                                          color: _selectedCheckboxIndex == 1
                                              ? Palette.current.primaryNeonGreen
                                              : Colors.grey,
                                        ),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(2.0),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(30.0),
                                          child: Container(
                                            color: _selectedCheckboxIndex == 1
                                                ? Palette
                                                    .current.primaryNeonGreen
                                                : Colors.transparent,
                                            child: Checkbox(
                                                value:
                                                    _selectedCheckboxIndex == 1,
                                                onChanged: (value) {
                                                  _handleCheckboxValueChanged(
                                                      1, 'Sold elsewhere');
                                                  cancelReasonError = null;
                                                },
                                                activeColor: Palette
                                                    .current.primaryNeonGreen,
                                                checkColor: Palette
                                                    .current.primaryNeonGreen),
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Text('Sold elsewhere',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodySmall!
                                            .copyWith(
                                              fontSize: 15,
                                              letterSpacing: 0.3,
                                              color: Palette
                                                  .current.primaryWhiteSmoke,
                                            )),
                                  ],
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      width: 18,
                                      height: 18,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(30.0),
                                        border: Border.all(
                                          color: _selectedCheckboxIndex == 2
                                              ? Palette.current.primaryNeonGreen
                                              : Colors.grey,
                                        ),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(2.0),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(30.0),
                                          child: Container(
                                            color: _selectedCheckboxIndex == 2
                                                ? Palette
                                                    .current.primaryNeonGreen
                                                : Colors.transparent,
                                            child: Checkbox(
                                                value:
                                                    _selectedCheckboxIndex == 2,
                                                onChanged: (value) {
                                                  _handleCheckboxValueChanged(
                                                      2, 'Buyer requested');
                                                  cancelReasonError = null;
                                                },
                                                activeColor: Palette
                                                    .current.primaryNeonGreen,
                                                checkColor: Palette
                                                    .current.primaryNeonGreen),
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Text('Buyer requested',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodySmall!
                                            .copyWith(
                                              fontSize: 15,
                                              letterSpacing: 0.3,
                                              color: Palette
                                                  .current.primaryWhiteSmoke,
                                            )),
                                  ],
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      width: 18,
                                      height: 18,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(30.0),
                                        border: Border.all(
                                          color: _selectedCheckboxIndex == 3
                                              ? Palette.current.primaryNeonGreen
                                              : Colors.grey,
                                        ),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(2.0),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(30.0),
                                          child: Container(
                                            color: _selectedCheckboxIndex == 3
                                                ? Palette
                                                    .current.primaryNeonGreen
                                                : Colors.transparent,
                                            child: Checkbox(
                                                value:
                                                    _selectedCheckboxIndex == 3,
                                                onChanged: (value) {
                                                  _handleCheckboxValueChanged(
                                                      3, 'Item was gifted');
                                                  cancelReasonError = null;
                                                },
                                                activeColor: Palette
                                                    .current.primaryNeonGreen,
                                                checkColor: Palette
                                                    .current.primaryNeonGreen),
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Text('Item was gifted',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodySmall!
                                            .copyWith(
                                              fontSize: 15,
                                              letterSpacing: 0.3,
                                              color: Palette
                                                  .current.primaryWhiteSmoke,
                                            )),
                                  ],
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                Row(
                                  children: [
                                    Container(
                                      width: 18,
                                      height: 18,
                                      decoration: BoxDecoration(
                                        borderRadius:
                                            BorderRadius.circular(30.0),
                                        border: Border.all(
                                          color: _selectedCheckboxIndex == 4
                                              ? Palette.current.primaryNeonGreen
                                              : Colors.grey,
                                        ),
                                      ),
                                      child: Padding(
                                        padding: const EdgeInsets.all(2.0),
                                        child: ClipRRect(
                                          borderRadius:
                                              BorderRadius.circular(30.0),
                                          child: Container(
                                            color: _selectedCheckboxIndex == 4
                                                ? Palette
                                                    .current.primaryNeonGreen
                                                : Colors.transparent,
                                            child: Checkbox(
                                                value:
                                                    _selectedCheckboxIndex == 4,
                                                onChanged: (value) {
                                                  _handleCheckboxValueChanged(
                                                      4, 'Other');
                                                },
                                                activeColor: Palette
                                                    .current.primaryNeonGreen,
                                                checkColor: Palette
                                                    .current.primaryNeonGreen),
                                          ),
                                        ),
                                      ),
                                    ),
                                    const SizedBox(
                                      width: 10,
                                    ),
                                    Text('Other',
                                        style: Theme.of(context)
                                            .textTheme
                                            .bodySmall!
                                            .copyWith(
                                              fontSize: 15,
                                              letterSpacing: 0.3,
                                              color: Palette
                                                  .current.primaryWhiteSmoke,
                                            )),
                                  ],
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                Visibility(
                                  visible: _selectedCheckboxIndex == 4,
                                  child: Container(
                                    decoration: BoxDecoration(
                                        border: Border.all(
                                            width: 0.5,
                                            color: Palette.current.grey)),
                                    child: TextField(
                                      keyboardType: TextInputType.text,
                                      controller: _textFieldController,
                                      textCapitalization:
                                          TextCapitalization.sentences,
                                      maxLines: 6,
                                      onChanged: (value) {
                                        if (value.length > initialText.length) {
                                          final text = value;
                                          if (text.endsWith('.') ||
                                              text.endsWith('!') ||
                                              text.endsWith('?')) {
                                            final newText = '$text ';
                                            _textFieldController.value =
                                                _textFieldController.value
                                                    .copyWith(
                                              text: newText,
                                              selection:
                                                  TextSelection.collapsed(
                                                      offset: newText.length),
                                            );
                                            setState(() {
                                              initialText = value;
                                            });
                                          }
                                        } else {
                                          setState(() {
                                            initialText = value;
                                          });
                                        }
                                      },
                                      style: TextStyle(
                                          fontSize: 16.0,
                                          color: Palette
                                              .current.primaryWhiteSmoke),
                                      decoration: InputDecoration(
                                        hintText:
                                            'Please provide more information...',
                                        hintStyle: const TextStyle(
                                          color: Colors.grey,
                                        ),
                                        contentPadding: const EdgeInsets.only(
                                            top: 8, left: 8, right: 8),
                                        focusedBorder: OutlineInputBorder(
                                          borderSide: BorderSide(
                                            color: Palette
                                                .current.primaryNeonGreen,
                                          ),
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                                Align(
                                  alignment: Alignment.centerLeft,
                                  child: Text(cancelReasonError ?? '',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall!
                                          .copyWith(
                                              color: Palette
                                                  .current.primaryNeonPink)),
                                ),
                                const SizedBox(
                                  height: 30,
                                ),
                                PrimaryButton(
                                  title: S
                                      .of(context)
                                      .razon_remove_btn
                                      .toUpperCase(),
                                  onPressed: () {
                                    showErrors();
                                    if (areFieldsValid()) {
                                      getIt<BuyCubit>().cancelPurchase(
                                          CancelPurchaseRequestModel(
                                              productItemId:
                                                  widget.productItemId,
                                              cancelReason: cancelReason,
                                              listingChatId:
                                                  widget.listingChatId));
                                    }
                                  },
                                  type: PrimaryButtonType.green,
                                ),
                                const SizedBox(
                                  height: 30,
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
        ));
  }

  void showErrors() {
    setState(() {
      if (_selectedCheckboxIndex == 4 &&
          _textFieldController.value.text.isNotEmpty) {
        cancelReason = _textFieldController.value.text;
        cancelReasonError = null;
      } else if (_selectedCheckboxIndex == 4 &&
          _textFieldController.value.text.isEmpty) {
        cancelReasonError = null;
      } else if (cancelReason == null) {
        cancelReasonError = S.of(context).reason_required;
      } else {
        cancelReasonError = null;
      }
    });
  }

  bool areFieldsValid() {
    return cancelReason != null;
  }
}
