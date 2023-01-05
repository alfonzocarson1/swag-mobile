import 'package:flutter/material.dart';
import 'package:swagapp/modules/common/utils/palette.dart';

enum PrimaryButtonType { green, black, pink }

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    Key? key,
    required this.title,
    required this.onPressed,
    required this.type,
    this.maxHeight = 56,
    this.cornerRadius = 0,
  }) : super(key: key);

  final String title;
  final PrimaryButtonType type;
  final double maxHeight;
  final double cornerRadius;
  final VoidCallback? onPressed;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: type == PrimaryButtonType.black
            ? Palette.current.primaryNeonGreen
            : Colors.transparent,
        border: Border.all(
          color: type == PrimaryButtonType.pink
              ? Palette.current.primaryNeonPink
              : Palette.current.primaryNeonGreen,
        ),
      ),
      child: Padding(
        padding: type == PrimaryButtonType.black
            ? const EdgeInsets.only(left: 1, right: 1, top: 1, bottom: 6)
            : const EdgeInsets.only(bottom: 6),
        child: RawMaterialButton(
          elevation: 0,
          constraints: BoxConstraints(
            maxWidth: 94.0,
            maxHeight: maxHeight,
          ),
          fillColor: type == PrimaryButtonType.green
              ? Palette.current.primaryNeonGreen
              : type == PrimaryButtonType.pink
                  ? Palette.current.primaryNeonPink
                  : Palette.current.black,
          splashColor: Palette.current.primaryNeonPink.withOpacity(0.4),
          highlightColor: Palette.current.black.withOpacity(0.3),
          onPressed: onPressed,
          child: AnimatedContainer(
            height: maxHeight,
            decoration: const BoxDecoration(
              color: Colors.transparent,
            ),
            alignment: Alignment.center,
            duration: const Duration(
              milliseconds: 250,
            ),
            child: Text(
              title,
              style: Theme.of(context).textTheme.displayMedium!.copyWith(
                  fontFamily: "Knockout",
                  fontWeight: FontWeight.w300,
                  color: type == PrimaryButtonType.black
                      ? Palette.current.primaryNeonGreen
                      : Palette.current.black),
            ),
          ),
        ),
      ),
    );
  }
}
