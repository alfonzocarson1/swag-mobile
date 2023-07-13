import 'package:flutter/material.dart';
import 'package:swagapp/modules/common/utils/stateful_wrapper.dart';
import 'package:swagapp/modules/pages/settings/nft_wallet/nft_connect_sheet.dart';
import 'package:swagapp/modules/pages/settings/nft_wallet/nft_splash_dialog.dart';

import '../../../../generated/l10n.dart';
import '../../../common/ui/pushed_header.dart';
import '../../../common/utils/custom_route_animations.dart';
import '../../../common/utils/palette.dart';

class NftWalletPage extends StatelessWidget {
  static const name = '/NFTWallet';
  const NftWalletPage({super.key});

  static Route route() => PageRoutes.material(
        settings: const RouteSettings(name: name),
        builder: (context) => const NftWalletPage(),
      );

  @override
  Widget build(BuildContext context) {
    return StatefulWrapper(
      onInit: (context) => WidgetsBinding.instance.addPostFrameCallback(
          (_) => Navigator.of(context).push(NftSplashDialog.route(context))),
      child: Scaffold(
        appBar: PushedHeader(
          showBackButton: true,
          title: Align(
            alignment: Alignment.centerRight,
            child: Text(
              S.of(context).nft_wallet_page_title,
              style: Theme.of(context).textTheme.displayLarge!.copyWith(
                    letterSpacing: 1,
                    fontWeight: FontWeight.w300,
                    fontFamily: "KnockoutCustom",
                    fontSize: 30,
                    color: Palette.current.primaryNeonGreen,
                  ),
            ),
          ),
          height: 70,
        ),
        backgroundColor: Palette.current.primaryNero,
        body: const SingleChildScrollView(
          child: Column(
            children: [
              _NftWalletItem(),
              _AddNewWallet(),
            ],
          ),
        ),
      ),
    );
  }
}

class _NftWalletItem extends StatelessWidget {
  const _NftWalletItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        InkWell(
          onTap: () {},
          splashColor: Palette.current.primaryNero,
          child: Column(
            children: [
              const SizedBox(height: 14),
              Row(
                children: [
                  const SizedBox(width: 16),
                  ImageIcon(
                    AssetImage("assets/icons/nft_wallet_icon.png"),
                    size: 20,
                    color: Palette.current.primaryWhiteSmoke,
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Text(
                      S.of(context).nft_wallet_wallet,
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            letterSpacing: 1,
                            fontWeight: FontWeight.w400,
                            fontFamily: "RingsideRegular",
                            fontSize: 16,
                            color: Palette.current.primaryWhiteSmoke,
                          ),
                    ),
                  ),
                  Text(
                    S.of(context).nft_wallet_connect,
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                          letterSpacing: 1,
                          fontWeight: FontWeight.w300,
                          fontFamily: "RingsideRegular",
                          fontSize: 14,
                          color: Palette.current.darkGray,
                        ),
                  ),
                  const SizedBox(width: 24),
                  Icon(
                    Icons.arrow_forward_ios_sharp,
                    size: 10,
                    color: Palette.current.darkGray,
                  ),
                  const SizedBox(width: 16),
                ],
              ),
              const SizedBox(height: 14),
            ],
          ),
        ),
        SizedBox(
          height: 0.2,
          child: Container(
            color: Palette.current.grey,
          ),
        ),
      ],
    );
  }
}

class _AddNewWallet extends StatelessWidget {
  const _AddNewWallet({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.of(context).push(NftConnectWalletBottomSheet.route(context));
      },
      splashColor: Palette.current.primaryNero,
      child: Column(
        children: [
          const SizedBox(height: 14),
          Row(
            children: [
              const SizedBox(width: 16),
              Icon(
                Icons.add,
                size: 20,
                color: Palette.current.primaryNeonGreen,
              ),
              const SizedBox(width: 16),
              Expanded(
                child: Text(
                  S.of(context).nft_wallet_add_wallet,
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        letterSpacing: 1,
                        fontWeight: FontWeight.w400,
                        fontFamily: "RingsideRegular",
                        fontSize: 16,
                        color: Palette.current.primaryNeonGreen,
                      ),
                ),
              ),
              const SizedBox(width: 16),
            ],
          ),
          const SizedBox(height: 14),
        ],
      ),
    );
  }
}
