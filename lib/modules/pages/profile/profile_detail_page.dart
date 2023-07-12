import 'package:flutter/material.dart';
import '../../../generated/l10n.dart';
import '../../common/ui/pushed_header.dart';
import '../../common/utils/custom_route_animations.dart';
import '../../common/utils/palette.dart';

class ProfileDetailPage extends StatefulWidget {
  static const name = '/ProfileDetailPage';

  const ProfileDetailPage({super.key});

  static Route route() => PageRoutes.material(
    settings: RouteSettings(name: name),
    builder: (context) => const ProfileDetailPage(),
  );

  @override
  State<ProfileDetailPage> createState() => _ProfileDetailPage();
}

class _ProfileDetailPage extends State<ProfileDetailPage> {
  @override
  void initState() {
    super.initState();
  }

  @override
  Widget build(BuildContext context) {

    return Scaffold(
      appBar: PushedHeader(
        showBackButton: true,
        title: Align(
          alignment: Alignment.centerRight,
          child: Text("PROFILE",
              style: Theme.of(context).textTheme.displayLarge!.copyWith(
                  letterSpacing: 1,
                  fontWeight: FontWeight.w300,
                  fontFamily: "KnockoutCustom",
                  fontSize: 30,
                  color: Palette.current.primaryNeonGreen)),
        ),
        height: 70,
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
                        _selectTile(
                            'assets/icons/BlockUserWhite.png',
                            'Name',
                            'Doug Hardman',
                                () {},
                            true,
                            '',
                          '',
                          true

                        ),
                        SizedBox(
                          height: 0.2,
                          child: Container(
                            color: Palette.current.grey,
                          ),
                        ),
                        _selectTile(
                            'assets/icons/account_icon.png',
                            'Username',
                            '@mrdoug',
                                () {},
                            true,
                            '',
                            'assets/icons/checkmark.png',
                            false

                        ),
                        SizedBox(
                          height: 0.2,
                          child: Container(
                            color: Palette.current.grey,
                          ),
                        ),
                        _selectTile(
                          'assets/icons/security_icon.png',
                          'Password',
                          '*************',
                              () {},
                            true,
                            '',
                            '',
                            true
                        ),
                        SizedBox(
                          height: 0.2,
                          child: Container(
                            color: Palette.current.grey,
                          ),
                        ),
                        SizedBox(
                          height: 0.2,
                          child: Container(
                            color: Palette.current.grey,
                          ),
                        ),
                        _selectTile(
                          'assets/icons/nft_wallet_icon.png',
                          'Email',
                          'doug@swag.com',
                              () {},
                            false,
                            'Verified',
                            '',
                            false
                        ),
                        SizedBox(
                          height: 0.2,
                          child: Container(
                            color: Palette.current.grey,
                          ),
                        ),
                        _selectTile(
                            'assets/icons/contact_us_icon.png',
                            'Mobile Number',
                            '1.555.555.5555',
                                () {},
                            true,
                            '',
                            '',
                            true
                        ),
                        SizedBox(
                          height: 0.2,
                          child: Container(
                            color: Palette.current.grey,
                          ),
                        ),
                        _selectTile(
                            'assets/icons/trash.png',
                            'Delete My Swag Account',
                            '',
                                () {},
                            true,
                            '',
                            '',
                            true
                        ),
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

    );
  }

  Widget _selectTile(
      String iconUrl,
      String title,
      String subTitle,
      Function()? onTap,
      bool showRightIcon,
      String status,
      String rightIconUrl,
      bool hasArrowIcon
      ) {
    return InkWell(
      onTap: onTap,
      splashColor: Palette.current.primaryNero,
      child: ListTile(
        leading: ImageIcon(
          AssetImage(iconUrl),
          size: 25,
          color: Colors.white,
        ),
        title: Padding(
          padding: const EdgeInsets.only(bottom: 3),
          child: Text(title,
              style: Theme.of(context).textTheme.bodySmall!.copyWith(
                  fontWeight: FontWeight.w400,
                  color: Palette.current.primaryWhiteSmoke,
                  fontSize: 16)),
        ),
        subtitle: Text(subTitle,
            style: Theme.of(context)
                .textTheme
                .bodySmall!
                .copyWith(color: Palette.current.grey, fontSize: 14)),
        trailing: showRightIcon ?
        hasArrowIcon ? Icon(Icons.arrow_forward_ios_sharp ,
          size: 10,
          color: Palette.current.darkGray,
        )
            :
          Image.asset(rightIconUrl, width: 23, height: 23)
         :
        Text(status,
            style: Theme.of(context).textTheme.bodySmall!.copyWith(
                fontWeight: FontWeight.w300,
                color: Palette.current.primaryNeonGreen,
                fontSize: 16))
      ),
    );
  }
}
