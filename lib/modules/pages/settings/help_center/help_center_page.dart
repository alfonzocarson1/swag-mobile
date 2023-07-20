import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:swagapp/modules/common/ui/pushed_header.dart';
import 'package:swagapp/modules/common/utils/custom_route_animations.dart';
import 'package:swagapp/modules/common/utils/palette.dart';
import 'package:swagapp/modules/common/utils/utils.dart';
import 'package:swagapp/modules/constants/constants.dart';
import 'package:url_launcher/url_launcher_string.dart';
import '../../../../generated/l10n.dart';

class HelpCenterPage extends StatefulWidget {
  static const name = '/HelpCenterPage';

  static Route route() => PageRoutes.material(
    settings: const RouteSettings(name: name),
    builder: (context) => const HelpCenterPage(),
  );

  const HelpCenterPage({super.key});

  @override
  State<HelpCenterPage> createState() => _HelpCenterPage();
}

class _HelpCenterPage extends State<HelpCenterPage> {

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
          child: Text(S.of(context).help_center_title.toUpperCase(),
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
                            'assets/icons/help_center_icon.png',
                            S.of(context).help_center_faq, () {
                              launchBrowserAppFromLink(faqsUrl);
                        }),
                        SizedBox(
                          height: 0.2,
                          child: Container(
                            color: Palette.current.grey,
                          ),
                        ),
                        _selectTile(
                            'assets/icons/terms.png',
                            S.of(context).help_center_terms_title, () {
                              launchBrowserAppFromLink(termsAndConditionsUrl);
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
    );
  }

  Widget _selectTile(
      String iconUrl, String title,  Function()? onTap) {
    return InkWell(
      onTap: onTap,
      splashColor: Palette.current.primaryNero,
      child: ListTile(
        visualDensity: const VisualDensity(vertical: 3),
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
        trailing: Icon(
          Icons.arrow_forward_ios_sharp,
          size: 10,
          color: Palette.current.darkGray,
        ),
      ),
    );
  }
}