import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:swagapp/modules/common/ui/delete_message_popup.dart';
import 'package:swagapp/modules/common/ui/primary_button.dart';
import 'package:swagapp/modules/common/utils/palette.dart';
import 'dynamic_toast_messages.dart';

class DeleteAccountPopup extends StatefulWidget {
  const DeleteAccountPopup({super.key});

  @override
  State<DeleteAccountPopup> createState() => _DeleteAccountPopup();
}

class _DeleteAccountPopup extends State<DeleteAccountPopup> {
  @override
  Widget build(BuildContext context) {
    return  Center(
          child: Dialog(
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
                  //    crossAxisAlignment: CrossAxisAlignment.stretch,
                      children: [
                        Column(
                          children: [
                            const SizedBox(
                              height: 40,
                            ),
                            Align(
                              alignment: Alignment.centerLeft,
                              child: Text('Are you Sure?'.toUpperCase(),
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
                              child: Text('When deleting your account...',
                                  style: Theme.of(context)
                                      .textTheme
                                      .bodySmall!
                                      .copyWith(
                                    fontSize: 16,
                                    fontFamily: "Ringside",
                                    letterSpacing: 0.3,
                                    color: Palette.current.primaryWhiteSmoke,
                                  )),
                            ),
                            const SizedBox(
                              height: 30,
                            ),
                            Row(
                              children: [
                                Container(
                                  width:5,
                                  height: 5,
                                  decoration: BoxDecoration(
                                    shape: BoxShape.circle,
                                    color: Palette.current.primaryWhiteSmoke
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Text('All listings will be removed.',
                                    style: Theme.of(context)
                                        .textTheme
                                        .bodySmall!
                                        .copyWith(
                                      fontSize: 16,
                                      fontFamily: "Ringside",
                                      letterSpacing: 0.3,
                                      color: Palette.current.primaryWhiteSmoke,
                                    )),
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: const EdgeInsets.only(top: 10),
                                  child: Container(
                                    width:5,
                                    height: 5,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Palette.current.primaryWhiteSmoke
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                 Container(
                                  width: MediaQuery.of(context).size.width * 0.67,
                                  child: Text('You will lose access to your collection information, favorites, saved searches, sold items and purchased items.',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall!
                                          .copyWith(
                                        fontSize: 16,
                                        fontFamily: "Ringside",
                                        letterSpacing: 0.3,
                                        color: Palette.current.primaryWhiteSmoke,
                                      )),
                                ),
                              ],
                            ),
                            const SizedBox(
                              height: 20,
                            ),
                            Row(
                              //     mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Padding(
                                  padding: EdgeInsets.only(top: 10),
                                  child: Container(
                                    width:5,
                                    height: 5,
                                    decoration: BoxDecoration(
                                        shape: BoxShape.circle,
                                        color: Palette.current.primaryWhiteSmoke
                                    ),
                                  ),
                                ),
                                const SizedBox(
                                  width: 10,
                                ),
                                Container(
                                  width: MediaQuery.of(context).size.width * 0.67,
                                  child: Text('You will not be able to recover this account once deleted.',
                                      style: Theme.of(context)
                                          .textTheme
                                          .bodySmall!
                                          .copyWith(
                                        fontSize: 16,
                                        fontFamily: "Ringside",
                                        letterSpacing: 0.3,
                                        color: Palette.current.primaryWhiteSmoke,
                                      )),
                                ),
                              ],
                            )
                          ],
                        ),
                        const SizedBox(
                          height: 30,
                        ),
                        Text('This action can not be undone! Are you sure?',
                            style: Theme.of(context)
                                .textTheme
                                .bodySmall!
                                .copyWith(
                              fontSize: 16,
                              fontFamily: "Ringside",
                              letterSpacing: 0.3,
                              color: Palette.current.primaryWhiteSmoke,
                            )),
                        const SizedBox(
                          height: 30,
                        ),
                        PrimaryButton(
                          title: 'Delete account'.toUpperCase(),
                          onPressed: () {
                            Navigator.of(context).pop();
                            showDialog(
                                context: context,
                                barrierDismissible: false,
                                barrierColor: Colors.black,
                                builder: (BuildContext context) {
                                  return DeleteMessagePopup();
                                });
                          },
                          type: PrimaryButtonType.green,
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
                      Navigator.of(context, rootNavigator: true).pop(true);
                    },
                    icon: const Icon(
                      Icons.clear_outlined,
                      size: 20,
                    ),
                  ),
                )
              ],
            ),
          ),
        );
  }

}