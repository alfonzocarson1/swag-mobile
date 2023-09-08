import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:sendbird_chat_sdk/sendbird_chat_sdk.dart';
import 'package:simple_rich_text/simple_rich_text.dart';
import 'package:swagapp/generated/l10n.dart';
import 'package:swagapp/modules/common/ui/pushed_header.dart';
import 'package:swagapp/modules/common/utils/stateful_wrapper.dart';
import 'package:swagapp/modules/common/utils/utils.dart';
import 'package:swagapp/modules/cubits/purchase_history_detail/purchase_history_detail_cubit.dart';
import 'package:swagapp/modules/models/purchase_history/purchase_history_detail_model.dart';

import '../../../../common/ui/clickable_text.dart';
import '../../../../common/ui/loading.dart';
import '../../../../common/utils/custom_route_animations.dart';
import '../../../../common/utils/palette.dart';
import '../../../../common/utils/sendbird_utils.dart';
import '../../../../cubits/chat/chat_cubit.dart';
import '../../../../data/shared_preferences/shared_preferences_service.dart';
import '../../../../di/injector.dart';
import '../../../../models/purchase_history/purchase_history_model.dart';
import '../../../chat/chatPage.dart';

class PurchaseHistoryDetailsPage extends StatelessWidget {
  static const name = '/PurchaseHistoryDetails';

  final String id;

  const PurchaseHistoryDetailsPage({super.key, required this.id});

  static Route route(String id) => PageRoutes.slideUp(
        settings: const RouteSettings(name: name),
        builder: (context) => PurchaseHistoryDetailsPage(id: id),
      );

  @override
  Widget build(BuildContext context) {
    return StatefulWrapper(
      onInit: (context) {
        final cubit = context.read<PurchaseHistoryDetailCubit>();
        cubit.loadHistoryDetail(id);
      },
      child: Scaffold(
        extendBodyBehindAppBar: true,
        backgroundColor: Palette.current.primaryNero,
        appBar: const _PageAppBar(),
        body: SizedBox(
          width: double.infinity,
          height: double.infinity,
          child: BlocListener<PurchaseHistoryDetailCubit,
              PurchaseHistoryDetailState>(
            listener: (context, state) {
              if (state.isLoading && !Loading.isVisible()) {
                Loading.show(context);
              } else if (!state.isLoading && Loading.isVisible()) {
                Loading.hide(context);
              }
            },
            child: Builder(builder: (context) {
              final cubit = context.watch<PurchaseHistoryDetailCubit>();
              return cubit.state.when(
                loaded: (model) => _PageBody(model),
                loading: () => const SizedBox(),
                error: (error) => Center(
                  child: Text(
                    error ?? "Error",
                    style: Theme.of(context).textTheme.bodyLarge!.copyWith(
                          color: Palette.current.primaryNeonPink,
                        ),
                  ),
                ),
              );
            }),
          ),
        ),
      ),
    );
  }
}

class _PageAppBar extends StatelessWidget implements PreferredSizeWidget {
  const _PageAppBar({super.key});

  static const double height = 55;

  @override
  Widget build(BuildContext context) {
    return PushedHeader(
      showBackButton: false,
      suffixIconButton: IconButton(
        iconSize: 30,
        color: Palette.current.primaryNeonGreen,
        onPressed: () {
          Navigator.of(context, rootNavigator: true).pop();
        },
        icon: const Icon(
          Icons.clear_outlined,
          size: 25,
        ),
      ),
      height: height,
      backgroundColor: Colors.transparent,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(height);
}

class _PageBody extends StatefulWidget {
  final PurchaseHistoryDetailModel model;
  const _PageBody(this.model, {super.key});

  @override
  State<_PageBody> createState() => _PageBodyState();
}

class _PageBodyState extends State<_PageBody> {
  late List<GroupChannel> channels;
  Future<void> onTapSubmit(String channelUrl) async {
    late GroupChannel chatData;
    try {
      await Future.delayed(const Duration(milliseconds: 500));
      chatData = await getIt<ChatCubit>().startChat(channelUrl);

      Loading.hide(context);

      getIt<PreferenceRepositoryService>().saveShowNotification(false);
      await Future.delayed(const Duration(milliseconds: 500));
      await Navigator.of(context, rootNavigator: true).push(
        MaterialPageRoute(
            builder: (BuildContext context) => ChatPage(channel: chatData)),
      );

      Navigator.of(context).pop();
    } catch (e) {
      print(e);
    }
  }

  getChatChannels() async {
    channels = await getIt<ChatCubit>().loadGroupChannels();
  }

  @override
  Widget build(BuildContext context) {
    getChatChannels();
    return SingleChildScrollView(
      padding: MediaQuery.of(context).padding,
      child: Column(
        children: [
          Text(
            S.of(context).purchase_history_detail_title,
            style: Theme.of(context).textTheme.displayLarge!.copyWith(
                  fontSize: 30,
                  fontWeight: FontWeight.w300,
                  fontFamily: "KnockoutCustom",
                  color: Palette.current.primaryNeonGreen,
                ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16),
          Text(
            S.of(context).purchase_order_number("X-X-X!TODO!X-X-X"),
            style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                  color: Palette.current.darkGray,
                ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(height: 16),
          _ItemImages(widget.model.purchaseItems),
          const SizedBox(height: 32),
          _PriceList(widget.model.purchaseItems, widget.model.purchaseTotal),
          const SizedBox(height: 48),
          _PaymentCard(widget.model),
          const SizedBox(height: 16),
          _ShippingCard(shipping: widget.model.purchaseShippingInfo),
          const SizedBox(height: 23),
          Text.rich(
            TextSpan(
                text: S.of(context).purchase_item_purchased_from,
                children: [
                  TextSpan(
                    text: " ${widget.model.sourcePurchase}",
                    style: TextStyle(
                      color: Palette.current.neonTeal,
                    ),
                  )
                ]),
            style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                  color: Palette.current.darkGray,
                ),
          ),
          const SizedBox(
            height: 15,
          ),
          Visibility(
            visible:
                widget.model.purchaseItems.first.purchaseProductItemId != null,
            child: ClickableText(
                title: SimpleRichText(
                  S.of(context).see_listing_chat,
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      fontSize: 14,
                      letterSpacing: 0.015,
                      color: Palette.current.blueNeon,
                      fontWeight: FontWeight.w300),
                ),
                onPressed: () async {
                  String productItemId =
                      widget.model.purchaseItems.first.purchaseProductItemId ??
                          '';

                  String channelUrl = SendBirdUtils.getListingChatUrlInProfile(
                      channels, productItemId);
                  Loading.show(context);
                  onTapSubmit(channelUrl);
                }),
          ),
          const SizedBox(
            height: 20,
          ),
        ],
      ),
    );
  }
}

class _ItemImages extends StatelessWidget {
  final List<PurchaseItemModel> purchaseItems;
  const _ItemImages(this.purchaseItems, {super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: SingleChildScrollView(
        scrollDirection: Axis.horizontal,
        child: Row(
          children: purchaseItems.map((item) {
            final image = item.purchaseItemImage == null
                ? const AssetImage("assets/images/placeholder_image.jpg")
                    as ImageProvider
                : NetworkImage(item.purchaseItemImage!);

            return Padding(
              padding: const EdgeInsets.symmetric(horizontal: 4),
              child: Image(
                image: image,
                width: 75,
                height: 71,
              ),
            );
          }).toList(),
        ),
      ),
    );
  }
}

class _PriceList extends StatelessWidget {
  final List<PurchaseItemModel> purchaseItems;
  final double total;
  const _PriceList(this.purchaseItems, this.total, {super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 32),
      child: Column(
        children: [
          ...purchaseItems.map((item) => _PriceListItem(
                name: item.purchaseItemTitle ?? "NULL",
                price: item.purchaseItemPrice.toStringAsFixed(2),
                color: Palette.current.primaryWhiteSmoke,
              )),
          SizedBox(
            height: 0.2,
            child: Container(
              color: Palette.current.grey,
            ),
          ),
          const SizedBox(height: 16),
          _PriceListItem(
            name: S.of(context).purchase_total_item,
            price: "\$${total.toStringAsFixed(2)}",
            color: Palette.current.primaryNeonGreen,
          )
        ],
      ),
    );
  }
}

class _PriceListItem extends StatelessWidget {
  final String name;
  final String price;
  final Color color;
  const _PriceListItem({
    super.key,
    required this.name,
    required this.price,
    required this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 16),
      child: Row(
        children: [
          Expanded(
            child: Text(
              name.toUpperCase(),
              style: Theme.of(context).textTheme.displayMedium!.copyWith(
                    fontSize: 14,
                    fontWeight: FontWeight.w300,
                    color: color,
                  ),
              textAlign: TextAlign.start,
            ),
          ),
          const SizedBox(width: 16),
          Text(
            price,
            style: Theme.of(context).textTheme.displayMedium!.copyWith(
                  fontSize: 14,
                  fontWeight: FontWeight.w300,
                  color: color,
                ),
          ),
        ],
      ),
    );
  }
}

class _PageCard extends StatelessWidget {
  final Widget child;
  const _PageCard({super.key, required this.child});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 25),
      child: Container(
        decoration: BoxDecoration(
          color: Palette.current.primaryEerieBlack,
          borderRadius: const BorderRadius.all(Radius.circular(8)),
        ),
        width: double.infinity,
        child: child,
      ),
    );
  }
}

class _PaymentCard extends StatelessWidget {
  final PurchaseHistoryDetailModel model;

  const _PaymentCard(this.model, {super.key});

  @override
  Widget build(BuildContext context) {
    return _PageCard(
      child: Padding(
        padding: const EdgeInsets.only(
          top: 48,
          bottom: 14,
          right: 14,
          left: 14,
        ),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          children: [
            Text(
              S.of(context).purchase_payment_card_total(
                    model.purchaseTotal.toStringAsFixed(2),
                  ),
              style: Theme.of(context).textTheme.displayLarge!.copyWith(
                    fontSize: 54,
                    fontFamily: "KnockoutCustom",
                    fontWeight: FontWeight.w300,
                    color: Palette.current.primaryNeonGreen,
                  ),
              textAlign: TextAlign.center,
            ),
            const SizedBox(height: 32),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ImageIcon(
                  const AssetImage("assets/icons/card_icon.png"),
                  size: 20,
                  color: Palette.current.primaryWhiteSmoke,
                ),
                const SizedBox(width: 16),
                Text(
                  S.of(context).purchase_payment_card_via(
                        getPaymentMethodString(context),
                      ),
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                        color: Palette.current.primaryWhiteSmoke,
                      ),
                )
              ],
            ),
            const SizedBox(height: 32),
            Align(
              alignment: AlignmentDirectional.centerEnd,
              child: Text(
                S.of(context).purchase_paid_status.toUpperCase(),
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                      fontSize: 16,
                      fontFamily: "KnockoutCustom",
                      fontWeight: FontWeight.w300,
                      color: Palette.current.neonTeal,
                    ),
              ),
            )
          ],
        ),
      ),
    );
  }

  String getPaymentMethodString(BuildContext context) {
    if (model.purchasePaymentMethod == null) {
      return "NULL";
    }
    try {
      final paymentMethod =
          json.decode(model.purchasePaymentMethod!) as Map<String, dynamic>;
      if (paymentMethod.containsKey("venmoUser")) {
        return S.of(context).paymetVenmo;
      } else if (paymentMethod.containsKey("cashTag")) {
        return S.of(context).paymetCashApp;
      } else if (paymentMethod.containsKey("payPalEmail")) {
        return S.of(context).paymetPaypal;
      } else {
        return model.purchasePaymentMethod!;
      }
    } catch (e) {
      debugPrint(e.toString());
      return model.purchasePaymentMethod!;
    }
  }
}

class _ShippingCard extends StatelessWidget {
  final PurchaseHistoryDetailShippingModel shipping;
  const _ShippingCard({super.key, required this.shipping});

  @override
  Widget build(BuildContext context) {
    return _PageCard(
      child: Padding(
        padding: const EdgeInsets.all(32),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              crossAxisAlignment: CrossAxisAlignment.center,
              children: [
                ImageIcon(
                  const AssetImage("assets/icons/truck.png"),
                  size: 20,
                  color: Palette.current.primaryWhiteSmoke,
                ),
                const SizedBox(width: 16),
                Text(
                  S.of(context).purchase_ship_to,
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontSize: 15,
                        fontWeight: FontWeight.w300,
                        color: Palette.current.primaryWhiteSmoke,
                      ),
                )
              ],
            ),
            const SizedBox(height: 10),
            Text(
              _buildAddressString(),
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    fontSize: 15,
                    fontWeight: FontWeight.w300,
                    color: Palette.current.primaryWhiteSmoke,
                  ),
            ),
            const SizedBox(height: 18),
            _buildShippingStatusString(context),
          ],
        ),
      ),
    );
  }

  String _buildAddressString() {
    String addressString = "";

    if (shipping.address.address1.isNotEmptyOrNull) {
      addressString += shipping.address.address1 ?? "";
    }

    if (shipping.address.address2.isNotEmptyOrNull) {
      addressString += ", ${shipping.address.address2}";
    }

    if (shipping.address.city.isNotEmptyOrNull) {
      addressString += ", ${shipping.address.city}";
    }
    if (shipping.address.state.isNotEmptyOrNull) {
      addressString += " ${shipping.address.state}";
    }
    if (shipping.address.postalCode.isNotEmptyOrNull) {
      addressString += " ${shipping.address.postalCode}";
    }

    if (shipping.address.country.isNotEmptyOrNull) {
      addressString += " ${shipping.address.country}";
    }

    return addressString;
  }

  Text _buildShippingStatusString(BuildContext context) {
    late String text;
    late Color color;
    if (shipping.statusShipping == "PENDING_SHIPPED") {
      text = S.of(context).purchase_pending_shipping;
      color = Palette.current.darkGray;
    } else if (shipping.statusShipping == "SHIPPED") {
      if (shipping.trackingNumber != null) {
        text = S.of(context).purchase_tracking_number(shipping.trackingNumber!);
      } else {
        text = S.of(context).purchase_item_shipped;
      }
      color = Palette.current.neonTeal;
    } else {
      text = "Status: ${shipping.statusShipping}";
      color = Palette.current.darkGray;
    }

    return Text(
      text,
      style: Theme.of(context).textTheme.bodySmall!.copyWith(
            fontSize: 14,
            fontWeight: FontWeight.w300,
            color: color,
          ),
    );
  }
}
