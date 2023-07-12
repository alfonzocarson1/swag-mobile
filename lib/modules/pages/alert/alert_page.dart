import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swagapp/modules/cubits/alert/alert_cubit.dart';
import '../../../generated/l10n.dart';
import '../../common/utils/custom_route_animations.dart';
import '../../common/utils/palette.dart';
import '../../common/utils/utils.dart';
import '../../di/injector.dart';
import '../../models/alerts/alert_response_model.dart';

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
  int unreadCount = 0;

  @override
  void initState() {
    getIt<AlertCubit>().getAlertList();
    // TODO: implement initState
    super.initState();
  }

  // Simular la carga de datos

  AlertResponseModel? alertList;

  Future<void> _refreshList() async {
    // Simular la carga de datos
    await Future.delayed(Duration(seconds: 2));
    getIt<AlertCubit>().getAlertList();
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        extendBodyBehindAppBar: true,
        resizeToAvoidBottomInset: true,
        backgroundColor: Palette.current.blackSmoke,
        body: BlocListener<AlertCubit, AlertStateCubit>(
          listener: (context, state) => state.maybeWhen(
            orElse: () {
              return null;
            },
            loadedAlertList: (AlertResponseModel listAlert) {
              setState(() {
                this.unreadCount = 0;
                alertList = listAlert;
                for (var alert in alertList!.alertList) {
                  if (alert.read == false) {
                    unreadCount++;
                  }
                }
              });
              return null;
            },
          ),
          child: alertList != null
              ? Column(
                  children: [
                    Padding(
                      padding:
                          const EdgeInsets.only(left: 20, right: 20, top: 70),
                      child: Row(
                        children: [
                          Expanded(
                            flex: 8,
                            child: Align(
                              alignment: Alignment.centerLeft,
                              child: Text(
                                S.of(context).alert_center_title,
                                textAlign: TextAlign.left,
                                style: Theme.of(context)
                                    .textTheme
                                    .displayMedium!
                                    .copyWith(
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
                                '$unreadCount ${S.of(context).unread}',
                                style: Theme.of(context)
                                    .textTheme
                                    .bodySmall!
                                    .copyWith(
                                      fontSize: 15,
                                      fontWeight: unreadCount > 0
                                          ? FontWeight.w400
                                          : FontWeight.w300,
                                      letterSpacing:
                                          unreadCount > 0 ? 0.5 : 0.3,
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
                          itemCount: alertList!.alertList.length,
                          separatorBuilder: (context, index) => SizedBox(
                            height: 0.2,
                            child: Container(
                              color: Palette.current.grey,
                            ),
                          ),
                          itemBuilder: (context, index) {
                            final item = alertList!.alertList[index];
                            return ListTile(
                              onTap: () {
                                getIt<AlertCubit>()
                                    .readAlert(item.notificationAlertId ?? '');
                              },
                              leading: Theme(
                                data: ThemeData(
                                  unselectedWidgetColor:
                                      Palette.current.primaryWhiteSmoke,
                                  checkboxTheme: CheckboxThemeData(
                                    side: MaterialStateBorderSide.resolveWith(
                                      (Set<MaterialState> states) {
                                        if (states
                                            .contains(MaterialState.selected)) {
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
                                    fillColor: MaterialStateProperty
                                        .resolveWith<Color>(
                                      (Set<MaterialState> states) {
                                        if (states
                                            .contains(MaterialState.selected)) {
                                          return Palette
                                              .current.primaryNeonGreen;
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
                                      color: item.read
                                          ? Colors.transparent
                                          : Palette.current.primaryNeonPink,
                                      width: 2.0,
                                    ),
                                  ),
                                  child: CircleAvatar(
                                    backgroundColor: Colors.transparent,
                                    backgroundImage: const AssetImage(
                                        'assets/images/Avatar.png'),
                                    foregroundImage: NetworkImage(alertAvatar(
                                        item.payload!.avatar ?? '',
                                        item.payload!.listingImageUrl ?? '')),
                                    radius: 75,
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
                                      item.notificationAlertTitle ?? '',
                                      style: Theme.of(context)
                                          .textTheme
                                          .displayLarge!
                                          .copyWith(
                                            fontWeight: FontWeight.w400,
                                            letterSpacing: 0.6,
                                            color: item.read
                                                ? Palette.current.grey
                                                : Palette.current.white,
                                            fontSize: 16,
                                          ),
                                    ),
                                  ),
                                  Expanded(
                                      flex: 3,
                                      child: Text(
                                        alertDays(item.timeStamp ?? ''),
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
                                      item.notificationAlertBody ?? '',
                                      overflow: TextOverflow.ellipsis,
                                      maxLines: 1,
                                      textAlign: TextAlign.start,
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall!
                                          .copyWith(
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
                )
              : Container(),
        ));
  }
}
