import 'package:flutter/material.dart';

import '../../../../generated/l10n.dart';
import '../../../common/ui/pushed_header.dart';
import '../../../common/utils/custom_route_animations.dart';
import '../../../common/utils/palette.dart';
import '../../../common/utils/utils.dart';
import 'peer_to_peer_payments_save_widget.dart';

class PeerToPeerPaymentsPage extends StatefulWidget {
  static const name = '/peerToPeerPaymentsPage';

  const PeerToPeerPaymentsPage({super.key});

  static Route route() => PageRoutes.material(
        settings: const RouteSettings(name: name),
        builder: (context) => const PeerToPeerPaymentsPage(),
      );

  @override
  State<PeerToPeerPaymentsPage> createState() => _PeerToPeerPaymentsPageState();
}

class _PeerToPeerPaymentsPageState extends State<PeerToPeerPaymentsPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: PushedHeader(
        showBackButton: true,
        title: Align(
          alignment: Alignment.centerRight,
          child: Text(
              S.of(context).peer_to_peer_payment_options_title.toUpperCase(),
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
                        selectSettings(context, 'assets/icons/venmo_icon.png',
                            S.of(context).venmo, '', () {
                          Navigator.of(context, rootNavigator: true).push(
                              PeerToPeerPaymentsSaveWidget.route(
                                  venmo: true, cashTag: false, payPal: false));
                        },
                            Icon(
                              Icons.arrow_forward_ios_sharp,
                              size: 10,
                              color: Palette.current.darkGray,
                            ),
                            Text(S.of(context).active,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall!
                                    .copyWith(
                                        color: Palette.current.primaryNeonGreen,
                                        fontSize: 14))),
                        SizedBox(
                          height: 0.2,
                          child: Container(
                            color: Palette.current.grey,
                          ),
                        ),
                        selectSettings(
                            context,
                            'assets/icons/cash_app_icon.png',
                            S.of(context).cash_app,
                            '', () {
                          Navigator.of(context, rootNavigator: true).push(
                              PeerToPeerPaymentsSaveWidget.route(
                                  venmo: false, cashTag: true, payPal: false));
                        },
                            Icon(
                              Icons.arrow_forward_ios_sharp,
                              size: 10,
                              color: Palette.current.darkGray,
                            ),
                            Text(S.of(context).active,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall!
                                    .copyWith(
                                        color: Palette.current.primaryNeonGreen,
                                        fontSize: 14))),
                        SizedBox(
                          height: 0.2,
                          child: Container(
                            color: Palette.current.grey,
                          ),
                        ),
                        selectSettings(context, 'assets/icons/pay_pal_icon.png',
                            S.of(context).payPal, '', () {
                          Navigator.of(context, rootNavigator: true).push(
                              PeerToPeerPaymentsSaveWidget.route(
                                  venmo: false, cashTag: false, payPal: true));
                        },
                            Icon(
                              Icons.arrow_forward_ios_sharp,
                              size: 10,
                              color: Palette.current.darkGray,
                            ),
                            Text(S.of(context).active,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall!
                                    .copyWith(
                                        color: Palette.current.primaryNeonGreen,
                                        fontSize: 14))),
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
