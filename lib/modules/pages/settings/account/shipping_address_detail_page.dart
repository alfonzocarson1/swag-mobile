import 'package:flutter/material.dart';
import '../../../../generated/l10n.dart';
import '../../../common/ui/clickable_text.dart';
import '../../../common/ui/pushed_header.dart';
import '../../../common/utils/custom_route_animations.dart';
import '../../../common/utils/palette.dart';
import '../../../common/utils/utils.dart';

import '../../../models/update_profile/addresses_payload_model.dart';

// ignore: must_be_immutable
class ShippingAddressDetailPage extends StatefulWidget {
  static const name = '/ShippingAddressDetailPage';

  ShippingAddressDetailPage({super.key, required this.address});

  AddressesPayloadModel address;

  static Route route(AddressesPayloadModel address) => PageRoutes.material(
        settings: const RouteSettings(name: name),
        builder: (context) => ShippingAddressDetailPage(address: address),
      );

  @override
  State<ShippingAddressDetailPage> createState() =>
      _ShippingAddressDetailPageState();
}

class _ShippingAddressDetailPageState extends State<ShippingAddressDetailPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PushedHeader(
        showBackButton: true,
        title: Align(
          alignment: Alignment.centerRight,
          child: Text(S.of(context).shipping_address_title.toUpperCase(),
              style: Theme.of(context).textTheme.displayLarge!.copyWith(
                  letterSpacing: 1,
                  fontWeight: FontWeight.w300,
                  fontFamily: "KnockoutCustom",
                  fontSize: 30,
                  color: Palette.current.primaryNeonGreen)),
        ),
        height: 70,
      ),
      backgroundColor: Palette.current.primaryEerieBlack,
      body: Column(
        children: [
          Expanded(
            child: LayoutBuilder(builder: (context, viewportConstraints) {
              return SingleChildScrollView(
                physics: const ClampingScrollPhysics(),
                child: ConstrainedBox(
                    constraints: BoxConstraints(
                      minHeight: viewportConstraints.maxHeight,
                    ),
                    child: Column(
                      children: [
                        selectSettings(
                            context,
                            'assets/icons/shipping_address_icon.png',
                            '${widget.address.address1}',
                            '${widget.address.city}, ${widget.address.postalCode}',
                            () {},
                            Text(S.of(context).remove_address,
                                style: Theme.of(context)
                                    .textTheme
                                    .displayLarge!
                                    .copyWith(
                                        fontWeight: FontWeight.w300,
                                        fontSize: 16,
                                        color:
                                            Palette.current.primaryNeonPink)),
                            null),
                        Padding(
                          padding: const EdgeInsets.only(left: 57),
                          child: Align(
                            alignment: Alignment.centerLeft,
                            child: ClickableText(
                                title: Text(
                                  S.of(context).edit_address,
                                  textAlign: TextAlign.start,
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall!
                                      .copyWith(
                                          color:
                                              Palette.current.primaryNeonGreen),
                                ),
                                onPressed: () {}),
                          ),
                        ),
                      ],
                    )),
              );
            }),
          ),
        ],
      ),
    );
  }
}
