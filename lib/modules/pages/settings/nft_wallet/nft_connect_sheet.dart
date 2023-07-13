import 'package:flutter/material.dart';
import 'package:swagapp/generated/l10n.dart';

import '../../../common/ui/primary_button.dart';
import '../../../common/utils/custom_route_animations.dart';
import '../../../common/utils/palette.dart';

TextStyle _largeTextStyle(BuildContext context) =>
    Theme.of(context).textTheme.bodyLarge!.copyWith(
          fontSize: 44,
          fontFamily: "KnockoutCustom",
          letterSpacing: 1.2,
          fontWeight: FontWeight.w300,
          color: Palette.current.primaryNeonGreen,
        );

TextStyle _smallTextStyle(BuildContext context) =>
    Theme.of(context).textTheme.bodySmall!.copyWith(
          fontSize: 16,
          letterSpacing: 0.24,
          fontWeight: FontWeight.w300,
          color: Palette.current.primaryWhiteSmoke,
        );

TextStyle _buttonTextStyle(BuildContext context) =>
    Theme.of(context).textTheme.bodySmall!.copyWith(
          fontSize: 24,
          fontFamily: "KnockoutCustom",
          letterSpacing: 1.2,
          fontWeight: FontWeight.w300,
          color: Palette.current.primaryWhiteSmoke,
        );

class NftConnectWalletBottomSheet extends StatefulWidget {
  static const String name = "/nft-wallet-connect-bottom-sheet";
  const NftConnectWalletBottomSheet({super.key});

  static Route route(final BuildContext context) => PageRoutes.modalBottomSheet(
        settings: const RouteSettings(name: name),
        builder: (context) => const NftConnectWalletBottomSheet(),
        context: context,
        isDismissible: false,
        backgroundColor: Palette.current.primaryEerieBlack,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(15)),
        enableDrag: false,
      );

  @override
  State<NftConnectWalletBottomSheet> createState() =>
      _NftConnectWalletBottomSheetState();
}

class _NftConnectWalletBottomSheetState
    extends State<NftConnectWalletBottomSheet> {
  bool verify = false;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      behavior: HitTestBehavior.opaque,
      onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
      child: ConstrainedBox(
        constraints: BoxConstraints(
          minWidth: double.infinity,
          maxWidth: double.infinity,
          minHeight: MediaQuery.of(context).size.height * 0.2,
          maxHeight: MediaQuery.of(context).size.height * 0.7,
        ),
        child: Stack(
          fit: StackFit.loose,
          children: [
            SingleChildScrollView(
              padding: const EdgeInsets.symmetric(horizontal: 28, vertical: 40),
              child: AnimatedSwitcher(
                duration: const Duration(milliseconds: 500),
                transitionBuilder: (child, animation) => SlideTransition(
                  position: Tween(
                    begin: const Offset(1, 0),
                    end: const Offset(0, 0),
                  ).animate(animation),
                  child: child,
                ),
                child: verify
                    ? _VerifyStep()
                    : _ConnectStep(
                        onNext: () {
                          setState(() {
                            verify = true;
                          });
                        },
                      ),
              ),
            ),
            PositionedDirectional(
              end: 12,
              top: 12,
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
            ),
          ],
        ),
      ),
    );
  }
}

class _ConnectStep extends StatelessWidget {
  final Function() onNext;
  const _ConnectStep({
    super.key,
    required this.onNext,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Palette.current.primaryEerieBlack,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            S.of(context).nft_connect_sheet_title,
            style: _largeTextStyle(context),
          ),
          const SizedBox(height: 30),
          Text(
            S.of(context).nft_connect_sheet_subtitle,
            style: _smallTextStyle(context),
          ),
          const SizedBox(height: 40),
          TextField(
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.0),
                borderSide: BorderSide(
                  color: Palette.current.darkGray,
                  width: 0.75,
                ),
              ),
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 32, vertical: 18),
            ),
            style: _smallTextStyle(context),
          ),
          const SizedBox(height: 100),
          PrimaryButton(
            title: S.of(context).nft_connect_sheet_button,
            type: PrimaryButtonType.green,
            onPressed: () {
              onNext();
            },
          ),
        ],
      ),
    );
  }
}

class _VerifyStep extends StatelessWidget {
  const _VerifyStep({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Palette.current.primaryEerieBlack,
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Text(
            S.of(context).nft_verify_sheet_title,
            style: _largeTextStyle(context),
          ),
          const SizedBox(height: 30),
          Text(
            S.of(context).nft_verify_sheet_subtitle,
            style: _smallTextStyle(context),
          ),
          const SizedBox(height: 40),
          TextField(
            controller: TextEditingController(text: "A9D5MGK89"),
            readOnly: true,
            decoration: InputDecoration(
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(5.0),
                borderSide: BorderSide(
                  color: Palette.current.darkGray,
                  width: 0.75,
                ),
              ),
              contentPadding:
                  const EdgeInsets.symmetric(horizontal: 32, vertical: 18),
              suffixIcon: Padding(
                padding: const EdgeInsetsDirectional.only(end: 13),
                child: ImageIcon(
                  const AssetImage("assets/icons/copy.png"),
                  size: 20,
                  color: Palette.current.darkGray,
                ),
              ),
              suffixIconConstraints: BoxConstraints.tightForFinite(),
            ),
            style: _smallTextStyle(context),
          ),
          const SizedBox(height: 24),
          Text(
            S.of(context).nft_verify_sheet_subtitle2,
            style: _smallTextStyle(context),
          ),
          const SizedBox(height: 38),
          PrimaryButton(
            title: S.of(context).nft_verify_sheet_button,
            type: PrimaryButtonType.green,
            onPressed: () {},
          ),
        ],
      ),
    );
  }
}
