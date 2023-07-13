import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swagapp/modules/common/ui/primary_button.dart';

import 'package:swagapp/modules/common/utils/palette.dart';

import '../../../generated/l10n.dart';
import '../../blocs/chat/chat_bloc.dart';
import '../../blocs/collection_bloc/collection_bloc.dart';
import '../../common/ui/loading.dart';
import '../../cubits/buy/buy_cubit.dart';
import '../../di/injector.dart';
import '../../models/buy_for_sale_listing/cancel_purchase_request_model.dart';
import '../../models/buy_for_sale_listing/cancel_purchase_response_model.dart';
import '../../services/local_notifications_service.dart';
import '../settings/purchase_history/purchase_history_details/purchase_history_details_page.dart';

class RatingBuyer extends StatefulWidget {
  const RatingBuyer({
    super.key,
  });

  @override
  State<RatingBuyer> createState() => _RatingBuyerState();
}

class _RatingBuyerState extends State<RatingBuyer> {
  String? listingChatId;
  TextEditingController _textFieldController = TextEditingController();
  var initialText = '';
  bool ratingPositive = false;
  bool ratingNegative = false;

  @override
  void initState() {
    super.initState();
  }

  void _handlerRating(bool positive, bool negative) {
    setState(() {
      ratingPositive = positive;
      ratingNegative = negative;
    });
  }

  Dialog _getBody() {
    return Dialog(
      insetPadding: const EdgeInsets.all(20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
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
                          height: 40,
                        ),
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text('How’d it go?',
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
                        Align(
                          alignment: Alignment.centerLeft,
                          child: Text('How was your experience  with @mrcarl?',
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(
                                    fontSize: 15,
                                    letterSpacing: 0.3,
                                    color: Palette.current.primaryWhiteSmoke,
                                  )),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Row(
                      children: [
                        Expanded(
                            flex: 1,
                            child: Align(
                              alignment: Alignment.centerRight,
                              child: InkWell(
                                onTap: () {
                                  _handlerRating(false, true);
                                },
                                child: ClipRRect(
                                  borderRadius: BorderRadius.circular(
                                      10.0), // Ajusta el valor del radio según tus necesidades
                                  child: SizedBox(
                                    width: 80.0,
                                    height: 80.0,
                                    child: DecoratedBox(
                                      decoration: BoxDecoration(
                                          color: ratingNegative
                                              ? Palette.current.primaryNeonGreen
                                              : Palette.current.black),
                                      child: Padding(
                                        padding: const EdgeInsets.all(20.0),
                                        child: ImageIcon(
                                          const AssetImage(
                                              'assets/images/negative_rating.png'),
                                          size: 20,
                                          color: ratingNegative
                                              ? Palette.current.black
                                              : Colors.grey,
                                        ),
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            )),
                        const SizedBox(
                          width: 20,
                        ),
                        Expanded(
                          flex: 1,
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: InkWell(
                              onTap: () {
                                _handlerRating(true, false);
                              },
                              child: ClipRRect(
                                borderRadius: BorderRadius.circular(
                                    10.0), // Ajusta el valor del radio según tus necesidades
                                child: SizedBox(
                                  width: 80.0,
                                  height: 80.0,
                                  child: DecoratedBox(
                                    decoration: BoxDecoration(
                                        color: ratingPositive
                                            ? Palette.current.primaryNeonGreen
                                            : Palette.current.black),
                                    child: Padding(
                                      padding: const EdgeInsets.all(20.0),
                                      child: ImageIcon(
                                        const AssetImage(
                                            'assets/images/positive_rating.png'),
                                        size: 20,
                                        color: ratingPositive
                                            ? Palette.current.black
                                            : Colors.grey,
                                      ),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                          ),
                        )
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Visibility(
                      visible: ratingNegative,
                      child: Container(
                        decoration: BoxDecoration(
                            border: Border.all(
                                width: 0.5, color: Palette.current.grey)),
                        child: TextField(
                          keyboardType: TextInputType.text,
                          controller: _textFieldController,
                          textCapitalization: TextCapitalization.sentences,
                          maxLines: 6,
                          onChanged: (value) {
                            if (value.length > initialText.length) {
                              final text = value;
                              if (text.endsWith('.') ||
                                  text.endsWith('!') ||
                                  text.endsWith('?')) {
                                final newText = '$text ';
                                _textFieldController.value =
                                    _textFieldController.value.copyWith(
                                  text: newText,
                                  selection: TextSelection.collapsed(
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
                              color: Palette.current.primaryWhiteSmoke),
                          decoration: InputDecoration(
                            hintText:
                                'Additional details here \n(not seen by users)...',
                            hintStyle: const TextStyle(
                              color: Colors.grey,
                            ),
                            contentPadding: const EdgeInsets.only(
                                top: 8, left: 8, right: 8),
                            focusedBorder: OutlineInputBorder(
                              borderSide: BorderSide(
                                color: Palette.current.primaryNeonGreen,
                              ),
                            ),
                          ),
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    PrimaryButton(
                      title: 'Submit rating',
                      onPressed: () {
                        setState(() {
                          Navigator.of(context).pop();
                        });
                      },
                      type: PrimaryButtonType.green,
                    ),
                    const SizedBox(
                      height: 30,
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
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<BuyCubit, BuyStateCubit>(
        listener: (context, state) => state.maybeWhen(
              orElse: () {
                return null;
              },
              initial: () {
                return Loading.show(context);
              },
              error: (message) => {
                Loading.hide(context),
                // Dialogs.showOSDialog(context, 'Error', message, 'OK', () {})
              },
              deliveredItemRequest:
                  (CancelPurchaseResponseModel itemDeliveredResponse) {
                print(itemDeliveredResponse);
              },
            ),
        child: Center(child: _getBody()));
  }
}
