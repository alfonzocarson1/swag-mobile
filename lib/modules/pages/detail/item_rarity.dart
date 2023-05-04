import 'package:flutter/material.dart';

import '../../../generated/l10n.dart';
import '../../common/utils/palette.dart';
import '../../common/utils/utils.dart';

class RarityWidget extends StatefulWidget {
  const RarityWidget(
      {super.key,
      this.rarity,
      this.released,
      this.totalMade,
      this.retail,
      this.available});

  final String? rarity;
  final String? released;
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
            Text(S.of(context).detail,
                style: Theme.of(context).textTheme.displayLarge!.copyWith(
                    letterSpacing: 1,
                    fontWeight: FontWeight.w300,
                    fontFamily: "KnockoutCustom",
                    fontSize: 33,
                    color: Palette.current.primaryNeonGreen)),
            Text(widget.rarity ?? '',
                style: Theme.of(context).textTheme.displayLarge!.copyWith(
                    letterSpacing: 1,
                    fontWeight: FontWeight.w300,
                    fontFamily: "KnockoutCustom",
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
                leading: Text(S.of(context).released,
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          fontSize: 15,
                          color: Palette.current.primaryWhiteSmoke,
                        )),
                trailing: Text(widget.released ?? '',
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          fontSize: 15,
                          color: Palette.current.primaryWhiteSmoke,
                        )),
              ),
              ListTile(
                dense: true,
                visualDensity: const VisualDensity(vertical: -4),
                leading: Text(S.of(context).total_mode,
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          fontSize: 15,
                          color: Palette.current.primaryWhiteSmoke,
                        )),
                trailing:
                    Text(widget.totalMade == null ? '?' : "${widget.totalMade}",
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                              fontSize: 15,
                              color: Palette.current.primaryWhiteSmoke,
                            )),
              ),
              ListTile(
                visualDensity: const VisualDensity(vertical: -4),
                dense: true,
                leading: Text(S.of(context).retail,
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          fontSize: 15,
                          color: Palette.current.primaryWhiteSmoke,
                        )),
                trailing: Text(decimalDigitsLastSalePrice(widget.retail!),
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          fontSize: 15,
                          color: Palette.current.primaryWhiteSmoke,
                        )),
              ),
              ListTile(
                visualDensity: const VisualDensity(vertical: -4),
                dense: true,
                leading: Text(S.of(context).available,
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          fontSize: 15,
                          color: Palette.current.primaryWhiteSmoke,
                        )),
                trailing: Text("${widget.available}",
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          fontSize: 15,
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
