import 'package:flutter/material.dart';

import '../../../../generated/l10n.dart';
import '../../../common/ui/pushed_header.dart';
import '../../../common/utils/custom_route_animations.dart';
import '../../../common/utils/palette.dart';
import '../../../common/utils/utils.dart';
import '../../../data/shared_preferences/shared_preferences_service.dart';
import '../../../di/injector.dart';
import '../../../models/profile/profile_model.dart';
import 'peer_to_peer_payments_page.dart';
import 'shipping_address_page.dart';

class AccountPage extends StatefulWidget {
  static const name = '/AccountPage';

  const AccountPage({super.key});

  static Route route() => PageRoutes.material(
        settings: const RouteSettings(name: name),
        builder: (context) => const AccountPage(),
      );

  @override
  State<AccountPage> createState() => _AccountPageState();
}

class _AccountPageState extends State<AccountPage> {
  @override
  Widget build(BuildContext context) {
    ProfileModel profileData =
        getIt<PreferenceRepositoryService>().profileData();

    return Scaffold(
      appBar: PushedHeader(
        showBackButton: true,
        title: Align(
          alignment: Alignment.centerRight,
          child: Text(S.of(context).account_title.toUpperCase(),
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
                            'assets/icons/atomic_drop_payments_icon.png',
                            S
                                .of(context)
                                .premium_memberatomic_drop_payments_title,
                            S
                                .of(context)
                                .premium_memberatomic_drop_payments_sub_title,
                            () {},
                            Icon(
                              Icons.arrow_forward_ios_sharp,
                              size: 10,
                              color: Palette.current.darkGray,
                            ),
                            null),
                        SizedBox(
                          height: 0.2,
                          child: Container(
                            color: Palette.current.grey,
                          ),
                        ),
                        selectSettings(
                            context,
                            'assets/icons/shipping_address_icon.png',
                            S.of(context).shipping_address_title,
                            '${profileData.addresses![0].address1}, ${profileData.addresses![0].city}, ${profileData.addresses![0].postalCode}',
                            () {
                          Navigator.of(context, rootNavigator: true)
                              .push(ShippingAddressPage.route());
                        },
                            Icon(
                              Icons.arrow_forward_ios_sharp,
                              size: 10,
                              color: Palette.current.darkGray,
                            ),
                            null),
                        SizedBox(
                          height: 0.2,
                          child: Container(
                            color: Palette.current.grey,
                          ),
                        ),
                        selectSettings(
                            context,
                            'assets/icons/peer_to_peer_paymen_options_icon.png',
                            S.of(context).peer_to_peer_payment_options_title,
                            S
                                .of(context)
                                .peer_to_peer_payment_options_sub_title, () {
                          Navigator.of(context, rootNavigator: true)
                              .push(PeerToPeerPaymentsPage.route());
                        },
                            Icon(
                              Icons.arrow_forward_ios_sharp,
                              size: 10,
                              color: Palette.current.darkGray,
                            ),
                            null),
                        SizedBox(
                          height: 0.2,
                          child: Container(
                            color: Palette.current.grey,
                          ),
                        ),
                        //Todo This will be implemented in the future
                        // selectSettings(
                        //     context,
                        //     'assets/icons/KYC_icon.png',
                        //     S.of(context).kyc_title,
                        //     profileData.username,
                        //     () {},
                        //     Text('Verified',
                        //         style: Theme.of(context)
                        //             .textTheme
                        //             .displayLarge!
                        //             .copyWith(
                        //                 fontWeight: FontWeight.w300,
                        //                 fontSize: 16,
                        //                 color:
                        //                     Palette.current.primaryNeonGreen)),
                        //     null),
                        // SizedBox(
                        //   height: 0.2,
                        //   child: Container(
                        //     color: Palette.current.grey,
                        //   ),
                        // ),
                        // selectSettings(
                        //     context,
                        //     'assets/icons/atomic_drop_payments_icon.png',
                        //     S.of(context).subscription_title,
                        //     '',
                        //     () {},
                        //     const SizedBox(),
                        //     Text(S.of(context).active,
                        //         style: Theme.of(context)
                        //             .textTheme
                        //             .bodySmall!
                        //             .copyWith(
                        //                 color: Palette.current.primaryNeonGreen,
                        //                 fontSize: 14))),
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
