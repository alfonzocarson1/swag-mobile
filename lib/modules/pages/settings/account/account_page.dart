import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swagapp/modules/common/ui/simple_loader.dart';
import 'package:swagapp/modules/pages/settings/account/verification/kyc_splash_dialog.dart';

import '../../../../generated/l10n.dart';
import '../../../common/ui/pushed_header.dart';
import '../../../common/utils/custom_route_animations.dart';
import '../../../common/utils/palette.dart';
import '../../../common/utils/utils.dart';
import '../../../cubits/profile/get_profile_cubit.dart';
import '../../../data/shared_preferences/shared_preferences_service.dart';
import '../../../di/injector.dart';
import '../../../models/profile/profile_model.dart';
import 'cards_page.dart';
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
  late ProfileModel profileData;

  @override
  void initState() {
    super.initState();
    profileData = getIt<PreferenceRepositoryService>().profileData();
  }

  getProfileData() async {
    await getIt<ProfileCubit>().loadProfileResults();
    profileData = getIt<PreferenceRepositoryService>().profileData();
  }

  @override
  Widget build(BuildContext context) {
    getProfileData();

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
      body: BlocBuilder<ProfileCubit, ProfileCubitState>(
        builder: (context, state) {
          return state.maybeWhen(
              loading: (isFirstFetch) => const SimpleLoader(),
              loadedProfileData: (profileData) =>
                  AccountBody(profileData: profileData),
              orElse: () => Container());
        },
      ),
    );
  }
}

class AccountBody extends StatelessWidget {
  const AccountBody({
    super.key,
    required this.profileData,
  });

  final ProfileModel profileData;

  @override
  Widget build(BuildContext context) {
    return Column(
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
                          () async {
                        Navigator.of(context, rootNavigator: true)
                            .push(CardsPage.route());
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
                          'assets/icons/shipping_address_icon.png',
                          S.of(context).shipping_address_title,
                          profileData.addresses!.isNotEmpty
                              ? '${profileData.addresses![0].address1}, ${profileData.addresses![0].city}, ${profileData.addresses![0].postalCode}'
                              : 'Your shipping address is empty', () {
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
                          S.of(context).peer_to_peer_payment_options_sub_title,
                          () {
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
                      selectSettings(
                          context,
                          'assets/icons/KYC_icon.png',
                          S.of(context).kyc_title,
                          profileData.kycverified ?? false
                              ? '${profileData.addresses?.first.firstName ?? ''} ${profileData.addresses?.first.lastName ?? ''}'
                              : ' ',
                          () {
                            if (!(profileData.kycverified ?? false)) {
                              Navigator.of(context)
                                  .push(KycSplashDialog.route(context));
                            }
                          },
                          Text(getKycSting(profileData.kycStatus),
                              style: Theme.of(context)
                                  .textTheme
                                  .displayLarge!
                                  .copyWith(
                                      fontWeight: FontWeight.w300,
                                      fontSize: 16,
                                      color:
                                          getKycColor(profileData.kycStatus))),
                          null),
                      SizedBox(
                        height: 0.2,
                        child: Container(
                          color: Palette.current.grey,
                        ),
                      ),
                      selectSettings(
                          context,
                          'assets/icons/atomic_drop_payments_icon.png',
                          S.of(context).subscription_title,
                          '', () {
                        if (profileData.hasActiveSubscription == false) {
                          showPaywallSplashScreen(
                              context: context,
                              hasUsedFreeTrial:
                                  profileData.hasUsedFreeTrial ?? false,
                              removePaywall: () {});
                        }
                      },
                          const SizedBox(),
                          Text(
                              profileData.hasActiveSubscription!
                                  ? S.of(context).active
                                  : S.of(context).inactive,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(
                                      color: profileData.hasActiveSubscription!
                                          ? Palette.current.primaryNeonGreen
                                          : Palette.current.primaryNeonPink,
                                      fontSize: 14))),
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
    );
  }
}

String getKycSting(String? status) {
  return (status ?? "Unverified").toTitleCase();
}

Color getKycColor(String? status) {
  if (status == null) {
    return Palette.current.darkGray;
  }
  status = status.toLowerCase();
  if (['failed', 'unsupported'].any((x) => status.contains(x))) {
    return Palette.current.primaryNeonPink;
  }
  if (['failed', 'unsupported'].any((x) => status.contains(x))) {
    return Palette.current.primaryNeonPink;
  }
  if (['unverified', 'started', 'processing'].any((x) => status.contains(x))) {
    return Palette.current.darkGray;
  }
  if (status == "verified") {
    return Palette.current.primaryNeonGreen;
  }
  return Palette.current.darkGray;
}

extension StringCasingExtension on String {
  String toCapitalized() =>
      length > 0 ? '${this[0].toUpperCase()}${substring(1).toLowerCase()}' : '';
  String toTitleCase() => replaceAll(RegExp(' +'), ' ')
      .split(' ')
      .map((str) => str.toCapitalized())
      .join(' ');
}
