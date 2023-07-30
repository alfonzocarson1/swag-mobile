import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sendbird_chat_sdk/sendbird_chat_sdk.dart';
import 'package:swagapp/modules/common/ui/primary_button.dart';

import 'package:swagapp/modules/common/utils/palette.dart';

import '../../../generated/l10n.dart';

import '../../blocs/collection_bloc/collection_bloc.dart';
import '../../common/ui/loading.dart';
import '../../cubits/buy/buy_cubit.dart';
import '../../cubits/chat/chat_cubit.dart';
import '../../di/injector.dart';
import '../../models/buy_for_sale_listing/cancel_purchase_request_model.dart';
import '../../models/buy_for_sale_listing/cancel_purchase_response_model.dart';
import '../../notifications_providers/local_notifications_providers.dart';
import '../settings/purchase_history/purchase_history_details/purchase_history_details_page.dart';
import 'rating_buyer.dart';

class DeliveredPopUp extends StatefulWidget {
  final String userName;
  final String productItemId;
  final String purchaseHistoryId;
  final String itemName;
  const DeliveredPopUp(
      {super.key,
      required this.userName,
      required this.productItemId,
      required this.purchaseHistoryId,
      required this.itemName});

  @override
  State<DeliveredPopUp> createState() => _DeliveredPopUpState();
}

class _DeliveredPopUpState extends State<DeliveredPopUp> {
  String? listingChatId;

  @override
  void initState() {
    getListingId();
    super.initState();
  }

  getListingId() async {
    List<GroupChannel> channels = await getIt<ChatCubit>().loadGroupChannels();
    for (int i = 0; i < channels.length; i++) {
      if (channels[i].data!.isNotEmpty) {
        String jsonString = channels[i].data!;
        jsonString = jsonString.replaceAll("'", '"');
        Map<String, dynamic> json = jsonDecode(jsonString);
        String productItemId = json['productItemId'];
        if (widget.productItemId == productItemId) {
          setState(() {
            listingChatId = channels[i].channelUrl;
          });
          break;
        }
      }
    }
  }

  Dialog _getBody() {
    return Dialog(
      insetPadding: const EdgeInsets.all(20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
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
                        child: Text(S.of(context).delivered_title.toUpperCase(),
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
                        child: Text(
                            S.of(context).delivered_sub_title(
                                widget.itemName, widget.userName),
                            style:
                                Theme.of(context).textTheme.bodySmall!.copyWith(
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
                  PrimaryButton(
                    title: S.of(context).delivered_yes,
                    onPressed: () async {
                      await getIt<BuyCubit>().confirmReceivedItem(
                        CancelPurchaseRequestModel(
                            productItemId: widget.productItemId,
                            listingChatId: listingChatId ?? '',
                            received: true),
                      );
                      setState(() {
                        Navigator.of(context).pop();

                        showDialog(
                            context: context,
                            barrierDismissible: false,
                            builder: (BuildContext context) {
                              return RatingBuyer(
                                productItemId: widget.productItemId,
                                purchaseHistoryId: widget.purchaseHistoryId,
                                userName: widget.userName,
                                seller: false,
                              );
                            });
                      });
                    },
                    type: PrimaryButtonType.green,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  PrimaryButton(
                    title: S.of(context).delivered_not_yes,
                    onPressed: () async {
                      await getIt<BuyCubit>().confirmReceivedItem(
                        CancelPurchaseRequestModel(
                            productItemId: widget.productItemId,
                            listingChatId: listingChatId ?? '',
                            received: false),
                      );
                      setState(() {
                        LocalNotificationProvider.showInAppAllert(
                            S.of(context).delivered_not_yet_alert);

                        Navigator.of(context).pop();
                      });
                    },
                    type: PrimaryButtonType.pink,
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
                return null;
              },
            ),
        child: Center(child: _getBody()));
  }
}
