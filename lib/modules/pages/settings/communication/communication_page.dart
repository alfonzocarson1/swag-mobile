import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:swagapp/modules/common/ui/pushed_header.dart';
import '../../../../generated/l10n.dart';
import 'package:swagapp/modules/common/utils/custom_route_animations.dart';
import 'package:swagapp/modules/common/utils/palette.dart';

class CommunicationPage extends StatefulWidget {
  static const name = '/CommunicationPage';

  const CommunicationPage({super.key});

  static Route route() => PageRoutes.material(
    settings: const RouteSettings(name: name),
    builder: (context) => const CommunicationPage(),
  );

  @override
  State<CommunicationPage> createState() => _CommunicationPage();
}

class _CommunicationPage extends State<CommunicationPage> {

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
          child: Text(S
              .of(context)
              .communications_title
              .toUpperCase(),
              style: Theme
                  .of(context)
                  .textTheme
                  .displayLarge!
                  .copyWith(
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
                            'assets/icons/bell_icon.png',
                            S.of(context).notifications_title,
                          S.of(context).notification_subtitle,
                                () {},
                            ),
                        SizedBox(
                          height: 0.2,
                          child: Container(
                            color: Palette.current.grey,
                          ),
                        ),
                        _selectTile(
                            'assets/icons/blocked_user_icon.png',
                          S.of(context).blocked_title,
                            '',
                                () {},
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
      Function()? onTap) {
    return InkWell(
      onTap: onTap,
      splashColor: Palette.current.primaryNero,
      child: ListTile(
          leading: ImageIcon(
            AssetImage(iconUrl),
            size: 25,
            color: Colors.white,
          ),
          visualDensity: VisualDensity(vertical: 2),
          title: subTitle != ''
              ? Padding(
            padding: const EdgeInsets.only(bottom: 3),
            child: Text(title,
                style: Theme.of(context).textTheme.bodySmall!.copyWith(
                    fontWeight: FontWeight.w400,
                    color: Palette.current.primaryWhiteSmoke,
                    fontSize: 16)),
          )
              : SizedBox(
              height: 60,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(title,
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontWeight: FontWeight.w400,
                        color: Palette.current.primaryWhiteSmoke,
                        fontSize: 16)),
              )),
          subtitle: subTitle != ''
              ? Text(subTitle,
              style: Theme.of(context)
                  .textTheme
                  .bodySmall!
                  .copyWith(color: Palette.current.grey, fontSize: 14))
              : null,
          trailing: Icon(
            Icons.arrow_forward_ios_sharp,
            size: 10,
            color: Palette.current.darkGray,
          )),
    );
  }
}