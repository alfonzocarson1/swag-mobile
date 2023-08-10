import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swagapp/generated/l10n.dart';
import 'package:swagapp/modules/common/ui/simple_loader.dart';
import 'package:swagapp/modules/common/utils/utils.dart';
import 'package:swagapp/modules/cubits/nft_wallet/nft_wallet_cubit.dart';
import 'package:swagapp/modules/di/injector.dart';
import 'package:swagapp/modules/models/ui_models/async_operation.dart';

import '../../../common/ui/dynamic_toast_messages.dart';
import '../../../common/ui/loading.dart';
import '../../../common/ui/primary_button.dart';
import '../../../common/utils/custom_route_animations.dart';
import '../../../common/utils/palette.dart';
import '../../../common/utils/stateful_wrapper.dart';
import '../../../models/nft_wallet/nft_wallet.dart';
import '../../../models/ui_models/async_value.dart';

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
        isScrollControlled: true,
      );

  @override
  State<NftConnectWalletBottomSheet> createState() =>
      _NftConnectWalletBottomSheetState();
}

class _NftConnectWalletBottomSheetState
    extends State<NftConnectWalletBottomSheet> {
  bool verify = false;
  NftWalletModel? wallet;

  @override
  Widget build(BuildContext context) {
    return Theme(
      data: Theme.of(context).copyWith(
        inputDecorationTheme: InputDecorationTheme(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0),
            borderSide: BorderSide(
              color: Palette.current.darkGray,
              width: 0.75,
            ),
          ),
          errorBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0),
            borderSide: BorderSide(
              color: Palette.current.primaryNeonPink,
              width: 0.75,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0),
            borderSide: BorderSide(
              color: Palette.current.darkGray,
              width: 0.75,
            ),
          ),
          disabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.0),
            borderSide: BorderSide(
              color: Palette.current.darkGray,
              width: 0.75,
            ),
          ),
          errorStyle: const TextStyle(fontSize: 0, height: 0),
        ),
      ),
      child: GestureDetector(
        behavior: HitTestBehavior.opaque,
        onTap: () => FocusScope.of(context).requestFocus(FocusNode()),
        child: Stack(
          fit: StackFit.loose,
          children: [
            Padding(
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
                    ? wallet != null
                        ? _VerifyStep(
                            address: wallet!.walletAddress,
                            verificationCode: wallet!.verificationCode!,
                          )
                        : Container()
                    : _ConnectStep(
                        onNext: (wallet) {
                          setState(() {
                            verify = true;
                            this.wallet = wallet;
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

class _ConnectStep extends StatefulWidget {
  final Function(NftWalletModel wallet) onNext;

  const _ConnectStep({
    super.key,
    required this.onNext,
  });

  @override
  State<_ConnectStep> createState() => _ConnectStepState();
}

class _ConnectStepState extends State<_ConnectStep> {
  String? error;
  final controller = TextEditingController();

  @override
  Widget build(BuildContext context) {
    return StatefulWrapper(
      onInit: (context) {
        context.read<NftWalletCubit>().clearCreateNftWalletState();
      },
      child: BlocListener<NftWalletCubit, NftWalletState>(
        listener: (context, state) {
          if (state.creatingWallet.isError) {
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(
                duration: const Duration(seconds: 3),
                behavior: SnackBarBehavior.floating,
                margin: EdgeInsets.only(
                  bottom: MediaQuery.of(context).size.height / 1.3,
                ),
                backgroundColor: Colors.transparent,
                content: ToastMessage(
                    message: S.of(context).could_not_complete_try_again),
                dismissDirection: DismissDirection.none,
              ),
            );
          } else if (state.creatingWallet.isLoaded) {
            final wallet = state.creatingWallet.dataOrPreviousData!;
            context.read<NftWalletCubit>().clearCreateNftWalletState();
            widget.onNext(wallet);
          }
        },
        child: Builder(builder: (context) {
          final createWalletState = context
              .select((NftWalletCubit cubit) => cubit.state.creatingWallet);
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
                  controller: controller,
                  decoration: InputDecoration(
                    border: OutlineInputBorder(
                      borderRadius: BorderRadius.circular(5.0),
                      borderSide: BorderSide(
                        color: Palette.current.darkGray,
                        width: 0.75,
                      ),
                    ),
                    contentPadding: const EdgeInsets.symmetric(
                        horizontal: 32, vertical: 18),
                    errorText: error.isNotEmptyOrNull ? "" : null,
                  ),
                  inputFormatters: [
                    TextInputFormatter.withFunction(
                        (oldValue, newValue) => newValue.copyWith(
                              text: newValue.text.toLowerCase(),
                            )),
                  ],
                  style: _smallTextStyle(context),
                  enabled: !createWalletState.isLoading,
                ),
                if (error.isNotEmptyOrNull) ...[
                  const SizedBox(height: 10),
                  Text(
                    error!,
                    style: _smallTextStyle(context)
                        .copyWith(color: Palette.current.primaryNeonPink),
                  ),
                ],
                const SizedBox(height: 24),
                ...createWalletState.whenWithValue(
                  idle: () => [
                    connectButton(context),
                  ],
                  loaded: (_) => [
                    connectButton(context),
                  ],
                  loading: (_) => [
                    const SmallSimpleLoader(),
                  ],
                  error: (_, __) => [
                    connectButton(context),
                  ],
                ),
              ],
            ),
          );
        }),
      ),
    );
  }

  Widget connectButton(BuildContext context) {
    return PrimaryButton(
      title: S.of(context).nft_connect_sheet_button,
      type: PrimaryButtonType.green,
      onPressed: () {
        if (_validateAddress()) {
          context.read<NftWalletCubit>().createNftWallet(controller.text);
        }
      },
    );
  }

  bool _validateAddress() {
    var address = controller.text;
    if (!address.startsWith("0x")) {
      setState(() {
        error = "Address must start with 0x";
      });
      return false;
    }

    address = address.substring(2);

    if (address.length != 40) {
      setState(() {
        error = "Address length isn't valid";
      });
      return false;
    }

    const validChars = "0123456789abcdef";
    for (final c in address.characters) {
      if (!validChars.contains(c)) {
        setState(() {
          error = "Address isn't valid";
        });
        return false;
      }
    }

    error = null;
    return true;
  }
}

class _VerifyStep extends StatelessWidget {
  final String address;
  final String verificationCode;

  const _VerifyStep({
    super.key,
    required this.address,
    required this.verificationCode,
  });

  @override
  Widget build(BuildContext context) {
    return StatefulWrapper(
      onInit: (context) {
        context.read<NftWalletCubit>().clearVerifyNftWalletState();
      },
      child: BlocListener<NftWalletCubit, NftWalletState>(
        listener: (context, state) {
          if (state.verifyingWallet.isLoaded) {
            context.read<NftWalletCubit>().clearVerifyNftWalletState();
            Navigator.of(context).pop();
          }
        },
        child: Builder(
          builder: (context) {
            final verifyState = context
                .select((NftWalletCubit cubit) => cubit.state.verifyingWallet);
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
                  verifyState.whenWithValue(
                    idle: () => buildBody(context),
                    loading: (_) => const SmallSimpleLoader(),
                    error: (_, __) => buildBody(context, true),
                    loaded: (_) => buildBody(context),
                  ),
                ],
              ),
            );
          },
        ),
      ),
    );
  }

  Widget buildBody(BuildContext context, [bool error = false]) {
    return Column(
      children: [
        TextField(
          controller: TextEditingController(
            text: verificationCode,
          ),
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
        if (error) ...[
          const SizedBox(height: 14),
          Text(
            S.of(context).nft_verify_sheet_verification_failed,
            style: _smallTextStyle(context)
                .copyWith(color: Palette.current.primaryNeonPink),
          ),
        ],
        const SizedBox(height: 24),
        Text(
          S.of(context).nft_verify_sheet_subtitle2,
          style: _smallTextStyle(context),
        ),
        const SizedBox(height: 38),
        PrimaryButton(
          title: S.of(context).nft_verify_sheet_button,
          type: PrimaryButtonType.green,
          onPressed: () {
            context.read<NftWalletCubit>().verifyNftWallet(address);
          },
        ),
      ],
    );
  }
}
