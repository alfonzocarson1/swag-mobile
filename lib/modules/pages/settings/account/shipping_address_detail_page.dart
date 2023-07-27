import 'package:flutter/material.dart';
import '../../../../generated/l10n.dart';
import '../../../common/ui/clickable_text.dart';
import '../../../common/ui/pushed_header.dart';
import '../../../common/utils/custom_route_animations.dart';
import '../../../common/utils/palette.dart';
import '../../../common/utils/utils.dart';

import '../../../data/shared_preferences/shared_preferences_service.dart';
import '../../../di/injector.dart';
import '../../../models/profile/profile_model.dart';
import '../../../models/update_profile/addresses_payload_model.dart';
import 'add_shipping_address_page.dart';

// ignore: must_be_immutable
class ShippingAddressDetailPage extends StatefulWidget {
  static const name = '/ShippingAddressDetailPage';

  ShippingAddressDetailPage({super.key, required this.addressIndex});

  int addressIndex;

  static Route route(int idx) => PageRoutes.material(
        settings: const RouteSettings(name: name),
        builder: (context) => ShippingAddressDetailPage(
          addressIndex: idx,
        ),
      );

  @override
  State<ShippingAddressDetailPage> createState() =>
      _ShippingAddressDetailPageState();
}

class _ShippingAddressDetailPageState extends State<ShippingAddressDetailPage> {
  ProfileModel profileData = getIt<PreferenceRepositoryService>().profileData();
  @override
  Widget build(BuildContext context) {
    WidgetsBinding.instance.addPostFrameCallback((_) => setState(() {
          profileData = getIt<PreferenceRepositoryService>().profileData();
        }));
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
                            '${profileData.addresses![widget.addressIndex].address1}',
                            '',
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
                            Text(
                                '${profileData.addresses![widget.addressIndex].city}, ${profileData.addresses![widget.addressIndex].postalCode}',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall!
                                    .copyWith(
                                        fontWeight: FontWeight.w400,
                                        color:
                                            Palette.current.primaryWhiteSmoke,
                                        fontSize: 16))),
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
                                onPressed: () {
                                  Navigator.of(context, rootNavigator: true)
                                      .push(AddShippingAddressPage.route(
                                          profileData
                                              .addresses![widget.addressIndex],
                                          () {}));
                                }),
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
