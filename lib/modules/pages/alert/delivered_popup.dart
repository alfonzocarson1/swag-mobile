import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swagapp/modules/common/ui/primary_button.dart';

import 'package:swagapp/modules/common/utils/palette.dart';

import '../../../generated/l10n.dart';
import '../../blocs/collection_bloc/collection_bloc.dart';
import '../../common/ui/loading.dart';
import '../../services/local_notifications_service.dart';

class DeliveredPopUp extends StatefulWidget {
  const DeliveredPopUp({super.key});

  @override
  State<DeliveredPopUp> createState() => _DeliveredPopUpState();
}

class _DeliveredPopUpState extends State<DeliveredPopUp> {
  @override
  void initState() {
    super.initState();
  }

  Dialog _getBody() {
    return Dialog(
      insetPadding: const EdgeInsets.all(20),
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
      child: Stack(
        children: [
          Container(
            color: Palette.current.blackSmoke,
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 30),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  Column(
                    children: [
                      const SizedBox(
                        height: 40,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(S.of(context).delivered_title.toUpperCase(),
                            textAlign: TextAlign.left,
                            style: Theme.of(context)
                                .textTheme
                                .displayMedium!
                                .copyWith(
                                  fontFamily: "KnockoutCustom",
                                  fontSize: 44,
                                  fontWeight: FontWeight.w300,
                                  color: Palette.current.primaryNeonGreen,
                                )),
                      ),
                      const SizedBox(
                        height: 10,
                      ),
                      Align(
                        alignment: Alignment.centerLeft,
                        child: Text(S.of(context).delivered_sub_title,
                            style:
                                Theme.of(context).textTheme.bodySmall!.copyWith(
                                      fontSize: 15,
                                      letterSpacing: 0.3,
                                      color: Palette.current.primaryWhiteSmoke,
                                    )),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  PrimaryButton(
                    title: S.of(context).delivered_yes,
                    onPressed: () {
                      setState(() {});
                    },
                    type: PrimaryButtonType.green,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                  PrimaryButton(
                    title: S.of(context).delivered_not_yes,
                    onPressed: () {
                      setState(() {
                        LocalNotificationsService.showInAppAllert(
                            S.of(context).delivered_not_yet_alert);
                        Navigator.of(context).pop();
                      });
                    },
                    type: PrimaryButtonType.pink,
                  ),
                  const SizedBox(
                    height: 30,
                  ),
                ],
              ),
            ),
          ),
          Positioned(
            right: 0,
            top: 3,
            child: IconButton(
              iconSize: 30,
              color: Palette.current.primaryNeonGreen,
              onPressed: () {
                Navigator.of(context).pop();
              },
              icon: const Icon(
                Icons.clear_outlined,
                size: 20,
              ),
            ),
          )
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return BlocListener<CollectionBloc, CollectionState>(
        listener: (context, state) => state.maybeWhen(
              orElse: () {
                return null;
              },
              loadedCollectionSuccess: (state) {
                Navigator.of(context, rootNavigator: true).pop();
                Loading.hide(context);
                return null;
              },
              initial: () {
                return Loading.show(context);
              },
              error: (message) => {
                Loading.hide(context),
                // Dialogs.showOSDialog(context, 'Error', message, 'OK', () {})
              },
            ),
        child: Center(child: _getBody()));
  }
}
