import 'package:flutter/material.dart';
import 'package:swagapp/modules/cubits/purchase_history/purchase_history_cubit.dart';
import 'package:swagapp/modules/pages/profile/profile_detail_page.dart';
import 'package:swagapp/modules/pages/settings/communication/communication_page.dart';
import 'package:swagapp/modules/pages/settings/help_center/help_center_page.dart';
import 'package:swagapp/modules/pages/settings/purchase_history/purchase_history_page.dart';
import 'package:swagapp/modules/pages/profile/profile_page.dart';

import '../../../generated/l10n.dart';
import '../../common/ui/pushed_header.dart';
import '../../common/utils/custom_route_animations.dart';
import '../../common/utils/palette.dart';
import '../../common/utils/send_mail_contact.dart';
import '../../cubits/peer_to_peer_payments/peer_to_peer_payments_cubit.dart';
import '../../di/injector.dart';
import '../../models/profile/profile_model.dart';
import 'account/account_page.dart';
import 'nft_wallet/nft_wallet_page.dart';
import 'profile/profile_settings_page.dart';
import 'shared_widgetds.dart';

class SettingsPage extends StatefulWidget {
  static const name = '/SettingsPage';

  const SettingsPage({super.key});

  static Route route(ProfileModel profile) => PageRoutes.material(
        settings: RouteSettings(name: name, arguments: profile),
        builder: (context) => const SettingsPage(),
      );

  @override
  State<SettingsPage> createState() => _SettingsPageState();
}

class _SettingsPageState extends State<SettingsPage> {
  @override
  void initState() {
    // TODO: implement initState
    super.initState();
    getIt<PeerToPeerPaymentsCubit>().getPyments();
    getIt<PurchaseHistoryCubit>().loadPurchaseHistory();
  }

  @override
  Widget build(BuildContext context) {
    final profile = ModalRoute.of(context)?.settings.arguments as ProfileModel;
    return Scaffold(
      appBar: PushedHeader(
        showBackButton: true,
        title: Align(
          alignment: Alignment.centerRight,
          child: Text(S.of(context).settings,
              style: Theme.of(context).textTheme.displayLarge!.copyWith(
                  letterSpacing: 1,
                  fontWeight: FontWeight.w300,
                  fontFamily: "KnockoutCustom",
                  fontSize: 30,
                  color: Palette.current.primaryNeonGreen)),
        ),
        height: 70,
        actions: [
          //Todo This will be implemented in the future
          profile.hasActiveSubscription! ? Padding(padding: const EdgeInsets.only(right: 15),
          child: HeaderActionButton(
            buttonText: S.of(context).premium_member_title,
            onPressed: () {},
          )) : Container(),
        ],
      ),
      backgroundColor: Palette.current.primaryNero,
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
                        _selectSettings(
                            'assets/icons/account_icon.png',
                            S.of(context).account_title,
                            S.of(context).account_sub_title, () {
                          Navigator.of(context, rootNavigator: true)
                              .push(AccountPage.route());
                        }),
                        SizedBox(
                          height: 0.2,
                          child: Container(
                            color: Palette.current.grey,
                          ),
                        ),
                        _selectSettings(
                            'assets/icons/BlockUserWhite.png',
                            S.of(context).profile_title,
                            S.of(context).profile_sub_title, () {
                          Navigator.of(context, rootNavigator: true)
                              .push(ProfileDetailPage.route());
                        }),
                        SizedBox(
                          height: 0.2,
                          child: Container(
                            color: Palette.current.grey,
                          ),
                        ),
                        _selectSettings(
                          'assets/icons/store_icon.png',
                          S.of(context).purchase_title,
                          S.of(context).purchase_sub_title,
                          () {
                            Navigator.of(
                              context,
                              rootNavigator: true,
                            ).push(PurchaseHistoryPage.route());
                          },
                        ),
                        SizedBox(
                          height: 0.2,
                          child: Container(
                            color: Palette.current.grey,
                          ),
                        ),
                        //Todo This will be implemented in the future
                        // _selectSettings(
                        //     'assets/icons/security_icon.png',
                        //     S.of(context).security_title,
                        //     S.of(context).security_sub_title,
                        //     () {}),
                        SizedBox(
                          height: 0.2,
                          child: Container(
                            color: Palette.current.grey,
                          ),
                        ),
                        _selectSettings(
                          'assets/icons/nft_wallet_icon.png',
                          S.of(context).nft_wallet_title,
                          S.of(context).nft_wallet_sub_title,
                          () {
                            Navigator.of(
                              context,
                              rootNavigator: true,
                            ).push(NftWalletPage.route());
                          },
                        ),
                        SizedBox(
                          height: 0.2,
                          child: Container(
                            color: Palette.current.grey,
                          ),
                        ),
                        _selectSettings(
                            'assets/icons/communications_icon.png',
                            S.of(context).communications_title,
                            S.of(context).communications_sub_title,
                            () {
                              Navigator.of(context, rootNavigator: true)
                                  .push(CommunicationPage.route());
                            }),
                        SizedBox(
                          height: 0.2,
                          child: Container(
                            color: Palette.current.grey,
                          ),
                        ),
                        _selectSettings(
                            'assets/icons/contact_us_icon.png',
                            S.of(context).contact_us_title,
                            S.of(context).contact_us_sub_title, () {
                          SendMailContact.send(
                            context: context,
                            subject:
                                '${S.of(context).swag_app_support_request} ${profile.username}',
                            body: 'Requester username: ${profile.username}\n'
                                'Requester account ID: ${profile.accountId}\n'
                                'Requester email: ${profile.email}\n',
                          );
                        }),
                        SizedBox(
                          height: 0.2,
                          child: Container(
                            color: Palette.current.grey,
                          ),
                        ),
                        _selectSettings(
                            'assets/icons/help_center_icon.png',
                            S.of(context).help_center_title,
                            S.of(context).help_center_sub_title,
                            () {
                              Navigator.of(context, rootNavigator: true).push(HelpCenterPage.route());
                            }),
                        SizedBox(
                          height: 0.2,
                          child: Container(
                            color: Palette.current.grey,
                          ),
                        ),
                      ],
                    )),
              );
            }),
          ),
        ],
      ),
      bottomNavigationBar: const SocialFooter(),
    );
  }

  Widget _selectSettings(
      String iconUrl, String title, String subTitle, Function()? onTap) {
    return InkWell(
      onTap: onTap,
      splashColor: Palette.current.primaryNero,
      child: ListTile(
        leading: ImageIcon(
          AssetImage(iconUrl),
          size: 25,
          color: Colors.white,
        ),
        title: Text(title,
            style: Theme.of(context).textTheme.bodySmall!.copyWith(
                fontWeight: FontWeight.w400,
                color: Palette.current.primaryWhiteSmoke,
                fontSize: 16)),
        subtitle: Text(subTitle,
            style: Theme.of(context)
                .textTheme
                .bodySmall!
                .copyWith(color: Palette.current.grey, fontSize: 14)),
        trailing: Icon(
          Icons.arrow_forward_ios_sharp,
          size: 10,
          color: Palette.current.darkGray,
        ),
      ),
    );
  }
}
