import 'package:flutter/material.dart';
import '../../../generated/l10n.dart';
import '../../common/utils/custom_route_animations.dart';
import '../../common/utils/palette.dart';

class AlertPage extends StatefulWidget {
  static const name = '/Alert';
  const AlertPage({Key? key}) : super(key: key);

  static Route route() => PageRoutes.material(
        settings: const RouteSettings(name: name),
        builder: (context) => const AlertPage(),
      );

  @override
  State<AlertPage> createState() => _AlertPageState();
}

class _AlertPageState extends State<AlertPage> {
  // Simular la carga de datos

  List<String> items =
      List.generate(17, (index) => 'Pending sale - Golden King $index');

  Future<void> _refreshList() async {
    // Simular la carga de datos
    await Future.delayed(Duration(seconds: 2));

    setState(() {
      items = List.generate(17, (index) => 'Swag.golf news ${index + 1}');
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      extendBodyBehindAppBar: true,
      resizeToAvoidBottomInset: true,
      backgroundColor: Palette.current.blackSmoke,
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.only(left: 20, right: 20, top: 70),
            child: Row(
              children: [
                Expanded(
                  flex: 8,
                  child: Align(
                    alignment: Alignment.centerLeft,
                    child: Text(
                      S.of(context).alert_center_title,
                      textAlign: TextAlign.left,
                      style:
                          Theme.of(context).textTheme.displayMedium!.copyWith(
                                fontFamily: "KnockoutCustom",
                                fontSize: 30,
                                fontWeight: FontWeight.w300,
                                color: Palette.current.primaryNeonGreen,
                              ),
                    ),
                  ),
                ),
                Expanded(
                  flex: 3,
                  child: Align(
                    alignment: Alignment.centerRight,
                    child: Text(
                      '5 ${S.of(context).unread}',
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            fontSize: 15,
                            letterSpacing: 0.3,
                            color: Palette.current.primaryNeonPink,
                          ),
                    ),
                  ),
                ),
              ],
            ),
          ),
          const SizedBox(height: 20),
          Expanded(
            child: RefreshIndicator(
              onRefresh: _refreshList,
              child: ListView.separated(
                padding: const EdgeInsets.only(top: 0),
                itemCount: items.length,
                separatorBuilder: (context, index) => SizedBox(
                  height: 0.2,
                  child: Container(
                    color: Palette.current.grey,
                  ),
                ),
                itemBuilder: (context, index) {
                  final item = items[index];
                  return ListTile(
                    onTap: () {},
                    leading: Theme(
                      data: ThemeData(
                        unselectedWidgetColor:
                            Palette.current.primaryWhiteSmoke,
                        checkboxTheme: CheckboxThemeData(
                          side: MaterialStateBorderSide.resolveWith(
                            (Set<MaterialState> states) {
                              if (states.contains(MaterialState.selected)) {
                                return BorderSide(
                                  width: 1,
                                  color: Palette.current.grey,
                                );
                              }
                              return BorderSide(
                                width: 1,
                                color: Palette.current.grey,
                              );
                            },
                          ),
                          fillColor: MaterialStateProperty.resolveWith<Color>(
                            (Set<MaterialState> states) {
                              if (states.contains(MaterialState.selected)) {
                                return Palette.current.primaryNeonGreen;
                              }
                              return Palette.current.grey;
                            },
                          ),
                        ),
                      ),
                      child: Container(
                        width: 40,
                        height: 40,
                        decoration: BoxDecoration(
                          shape: BoxShape.circle,
                          border: Border.all(
                            color: Palette.current.primaryNeonPink,
                            width: 2.0,
                          ),
                        ),
                        child: CircleAvatar(
                          backgroundImage: AssetImage(
                            "assets/images/Avatar.png",
                          ),
                        ),
                      ),
                    ),
                    title: Row(
                      children: [
                        Expanded(
                          flex: 7,
                          child: Text(
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            item,
                            style: Theme.of(context)
                                .textTheme
                                .displayLarge!
                                .copyWith(
                                  fontWeight: FontWeight.w400,
                                  letterSpacing: 0.6,
                                  color: Palette.current.white,
                                  fontSize: 16,
                                ),
                          ),
                        ),
                        Expanded(
                            flex: 3,
                            child: Text(
                              'today',
                              textAlign: TextAlign.end,
                              style: Theme.of(context)
                                  .textTheme
                                  .bodySmall!
                                  .copyWith(
                                    fontSize: 14,
                                    color: Palette.current.grey,
                                  ),
                            ))
                      ],
                    ),
                    subtitle: Row(
                      children: [
                        Expanded(
                          flex: 5,
                          child: Text(
                            'New message from @mrdoug asdasda asdadasda asdasasd adasd ',
                            overflow: TextOverflow.ellipsis,
                            maxLines: 1,
                            textAlign: TextAlign.start,
                            style:
                                Theme.of(context).textTheme.bodySmall!.copyWith(
                                      fontSize: 14,
                                      color: Palette.current.grey,
                                    ),
                          ),
                        ),
                        Expanded(flex: 2, child: Container()),
                      ],
                    ),
                  );
                },
              ),
            ),
          ),
        ],
      ),
    );
  }
}
