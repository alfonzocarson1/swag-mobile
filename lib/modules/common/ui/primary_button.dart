import 'package:flutter/material.dart';
import 'package:swagapp/modules/common/utils/palette.dart';

enum PrimaryButtonType { green, black, pink, primaryEerieBlack, blueNeon, grey }

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({
    Key? key,
    required this.title,
    required this.onPressed,
    required this.type,
    this.maxHeight = 70,
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
            : type == PrimaryButtonType.primaryEerieBlack
                ? Palette.current.primaryWhiteSmoke
                : Colors.transparent,
        border: Border.all(
          color: type == PrimaryButtonType.grey
              ? Palette.current.darkGray.withOpacity(0.24)
              : type == PrimaryButtonType.pink
                  ? Palette.current.primaryNeonPink
                  : type == PrimaryButtonType.primaryEerieBlack
                      ? Palette.current.primaryWhiteSmoke
                      : type == PrimaryButtonType.blueNeon
                          ? Palette.current.blueNeon
                          : Palette.current.primaryNeonGreen,
        ),
      ),
      child: Padding(
        padding: type == PrimaryButtonType.black
            ? const EdgeInsets.only(left: 1, right: 1, top: 1, bottom: 6)
            : const EdgeInsets.only(bottom: 6),
        child: RawMaterialButton(
          elevation: 0,
          highlightElevation: 0,
          focusElevation: 0,
          hoverElevation: 0,
          enableFeedback: false,
          constraints: BoxConstraints(
            maxHeight: maxHeight,
          ),
          fillColor: type == PrimaryButtonType.green
              ? Palette.current.primaryNeonGreen
              : type == PrimaryButtonType.pink
                  ? Palette.current.primaryNeonPink
                  : type == PrimaryButtonType.primaryEerieBlack
                      ? Palette.current.primaryEerieBlack.withOpacity(0.95)
                      : type == PrimaryButtonType.blueNeon
                          ? Palette.current.blueNeon
                          : type == PrimaryButtonType.grey
                              ? Palette.current.darkGray.withOpacity(0.24)
                              : Palette.current.black,
          // splashColor: Palette.current.primaryNeonPink.withOpacity(0.4),
          // highlightColor: Palette.current.black.withOpacity(0.3),
          splashColor: Colors.transparent,
          highlightColor: Colors.transparent,
          hoverColor: Colors.transparent,
          focusColor: Colors.transparent,
          onPressed: onPressed,
          child: AnimatedContainer(
            padding: EdgeInsets.symmetric(vertical: 8.0),
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
              textAlign: TextAlign.center,
              style: Theme.of(context).textTheme.displayMedium!.copyWith(
                  fontFamily: "KnockoutCustom",
                  fontSize: 24,
                  letterSpacing: 1,
                  fontWeight: FontWeight.w300,
                  color: type == PrimaryButtonType.black
                      ? Palette.current.primaryNeonGreen
                      : type == PrimaryButtonType.primaryEerieBlack
                          ? Palette.current.primaryWhiteSmoke
                          : Palette.current.black),
            ),
          ),
        ),
      ),
    );
  }
}
