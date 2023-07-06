import 'package:flutter/material.dart';
import 'package:swagapp/modules/pages/settings/account/shipping_address_detail_page.dart';

import '../../../../generated/l10n.dart';
import '../../../common/ui/pushed_header.dart';
import '../../../common/utils/custom_route_animations.dart';
import '../../../common/utils/palette.dart';
import '../../../common/utils/utils.dart';
import '../../../data/shared_preferences/shared_preferences_service.dart';
import '../../../di/injector.dart';
import '../../../models/profile/profile_model.dart';
import 'add_shipping_address_page.dart';

class ShippingAddressPage extends StatefulWidget {
  static const name = '/ShippingAddressPage';

  const ShippingAddressPage({super.key});

  static Route route() => PageRoutes.material(
        settings: const RouteSettings(name: name),
        builder: (context) => const ShippingAddressPage(),
      );

  @override
  State<ShippingAddressPage> createState() => _ShippingAddressPageState();
}

class _ShippingAddressPageState extends State<ShippingAddressPage> {
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
                        Column(
                            children: List.generate(
                                profileData.addresses!.length,
                                (index) => Column(
                                      children: [
                                        selectSettings(
                                          context,
                                          'assets/icons/shipping_address_icon.png',
                                          '${profileData.addresses![index].address1}',
                                          '',
                                          () {
                                            Navigator.of(context,
                                                    rootNavigator: true)
                                                .push(ShippingAddressDetailPage
                                                    .route(index));
                                          },
                                          Icon(
                                            Icons.arrow_forward_ios_sharp,
                                            size: 10,
                                            color: Palette.current.darkGray,
                                          ),
                                          Text(
                                              '${profileData.addresses![index].city}, ${profileData.addresses![index].postalCode}',
                                              style: Theme.of(context)
                                                  .textTheme
                                                  .bodySmall!
                                                  .copyWith(
                                                      fontWeight:
                                                          FontWeight.w400,
                                                      color: Palette.current
                                                          .primaryWhiteSmoke,
                                                      fontSize: 16)),
                                        ),
                                        SizedBox(
                                          height: 0.2,
                                          child: Container(
                                            color: Palette.current.grey,
                                          ),
                                        ),
                                      ],
                                    ))),
                        InkWell(
                          onTap: () {
                            Navigator.of(context, rootNavigator: true)
                                .push(AddShippingAddressPage.route(null));
                          },
                          splashColor: Palette.current.primaryNero,
                          child: ListTile(
                            leading: Icon(
                              Icons.add,
                              color: Palette.current.primaryNeonGreen,
                            ),
                            title: Text(S.of(context).add_new_address,
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall!
                                    .copyWith(
                                        fontWeight: FontWeight.w400,
                                        color: Palette.current.primaryNeonGreen,
                                        fontSize: 16)),
                          ),
                        )
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
