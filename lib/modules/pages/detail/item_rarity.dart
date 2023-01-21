import 'dart:ffi';

import 'package:flutter/material.dart';

import '../../common/utils/palette.dart';

class RarityWidget extends StatefulWidget {
  const RarityWidget(
      {super.key,
      this.rarity,
      this.released,
      this.releaseType,
      this.totalMade,
      this.retail,
      this.available});

  final String? rarity;
  final String? released;
  final String? releaseType;
  final int? totalMade;
  final String? retail;
  final int? available;

  @override
  State<RarityWidget> createState() => _RarityWidgetState();
}

class _RarityWidgetState extends State<RarityWidget> {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.only(left: 20),
          child: Row(children: <Widget>[
            Text("RARITY SCORE: ",
                style: Theme.of(context).textTheme.displayLarge!.copyWith(
                    letterSpacing: 1,
                    fontWeight: FontWeight.w300,
                    fontFamily: "Knockout",
                    fontSize: 30,
                    color: Palette.current.white)),
            Text(widget.rarity ?? '',
                style: Theme.of(context).textTheme.displayLarge!.copyWith(
                    letterSpacing: 1,
                    fontWeight: FontWeight.w300,
                    fontFamily: "Knockout",
                    fontSize: 30,
                    color: Palette.current.primaryNeonPink)),
            const SizedBox(
              width: 10,
            ),
            Expanded(
                child: Divider(
              color: Palette.current.grey,
            )),
          ]),
        ),
        const SizedBox(
          height: 10,
        ),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 5),
          child: Column(
            children: [
              ListTile(
                visualDensity: const VisualDensity(vertical: -4),
                dense: true,
                leading: Text("Released:",
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          fontSize: 16,
                          letterSpacing: 0.3,
                          color: Palette.current.primaryWhiteSmoke,
                        )),
                trailing: Text(widget.released ?? '',
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          fontSize: 16,
                          letterSpacing: 0.3,
                          color: Palette.current.primaryWhiteSmoke,
                        )),
              ),
              ListTile(
                visualDensity: const VisualDensity(vertical: -4),
                dense: true,
                leading: Text("Release Type:",
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          fontSize: 16,
                          letterSpacing: 0.3,
                          color: Palette.current.primaryWhiteSmoke,
                        )),
                trailing: Text(widget.releaseType ?? '',
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          fontSize: 16,
                          letterSpacing: 0.3,
                          color: Palette.current.primaryWhiteSmoke,
                        )),
              ),
              ListTile(
                dense: true,
                visualDensity: const VisualDensity(vertical: -4),
                leading: Text("Total Made:",
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          fontSize: 16,
                          letterSpacing: 0.3,
                          color: Palette.current.primaryWhiteSmoke,
                        )),
                trailing: Text("${widget.totalMade}",
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          fontSize: 16,
                          letterSpacing: 0.3,
                          color: Palette.current.primaryWhiteSmoke,
                        )),
              ),
              ListTile(
                visualDensity: const VisualDensity(vertical: -4),
                dense: true,
                leading: Text("Retail:",
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          fontSize: 16,
                          letterSpacing: 0.3,
                          color: Palette.current.primaryWhiteSmoke,
                        )),
                trailing: Text(widget.retail ?? '',
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          fontSize: 16,
                          letterSpacing: 0.3,
                          color: Palette.current.primaryWhiteSmoke,
                        )),
              ),
              ListTile(
                visualDensity: const VisualDensity(vertical: -4),
                dense: true,
                leading: Text("Available:",
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          fontSize: 16,
                          letterSpacing: 0.3,
                          color: Palette.current.primaryWhiteSmoke,
                        )),
                trailing: Text("${widget.available}",
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          fontSize: 16,
                          letterSpacing: 0.3,
                          color: Palette.current.blueNeon,
                        )),
              )
            ],
          ),
        ),
      ],
    );
  }
}
