import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../../generated/l10n.dart';
import '../../common/utils/palette.dart';

class ItemSwitched extends StatefulWidget {
  const ItemSwitched({super.key});

  @override
  State<ItemSwitched> createState() => _ItemSwitchedState();
}

class _ItemSwitchedState extends State<ItemSwitched> {
  bool isSwitched = false;
  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: Palette.current.blackSmoke,
      ),
      child: Padding(
        padding: const EdgeInsets.only(left: 15, right: 5, top: 20, bottom: 20),
        child: Row(
          children: [
            const Expanded(
                flex: 1,
                child: Align(
                  alignment: Alignment.centerLeft,
                  child: ImageIcon(
                    AssetImage('assets/images/Alerts.png'),
                    size: 20,
                    color: Colors.white,
                  ),
                )),
            Expanded(
              flex: 6,
              child: Align(
                alignment: Alignment.centerLeft,
                child: Text(S.of(context).receive_offer,
                    style: Theme.of(context).textTheme.displayLarge!.copyWith(
                        letterSpacing: 1,
                        fontWeight: FontWeight.w300,
                        fontFamily: "Knockout",
                        fontSize: 22,
                        color: Palette.current.white)),
              ),
            ),
            const Expanded(
                flex: 2,
                child: Align(
                  alignment: Alignment.centerRight,
                  child: ImageIcon(
                    AssetImage('assets/icons/info.png'),
                    size: 20,
                    color: Colors.white,
                  ),
                )),
            Expanded(
              flex: 2,
              child: Align(
                  alignment: Alignment.centerRight,
                  child: Transform.scale(
                    scale: 0.7,
                    child: CupertinoSwitch(
                      activeColor: Palette.current.primaryNeonGreen,
                      trackColor: Color.fromARGB(153, 255, 255, 255),
                      value: isSwitched,
                      onChanged: (bool value) {
                        setState(() {
                          isSwitched = value;
                        });
                      },
                    ),
                  )),
            ),
          ],
        ),
      ),
    );
  }
}
