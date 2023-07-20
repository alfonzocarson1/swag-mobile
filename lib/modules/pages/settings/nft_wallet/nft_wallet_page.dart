import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swagapp/modules/common/utils/stateful_wrapper.dart';
import 'package:swagapp/modules/cubits/nft_wallet/nft_wallet_cubit.dart';
import 'package:swagapp/modules/pages/settings/nft_wallet/nft_connect_sheet.dart';
import 'package:swagapp/modules/pages/settings/nft_wallet/nft_splash_dialog.dart';

import '../../../../generated/l10n.dart';
import '../../../common/ui/loading.dart';
import '../../../common/ui/pushed_header.dart';
import '../../../common/utils/custom_route_animations.dart';
import '../../../common/utils/palette.dart';
import '../../../models/nft_wallet/nft_wallet.dart';

class NftWalletPage extends StatefulWidget {
  static const name = '/NFTWallet';
  const NftWalletPage({super.key});

  static Route route() => PageRoutes.material(
        settings: const RouteSettings(name: name),
        builder: (context) => const NftWalletPage(),
      );

  @override
  State<NftWalletPage> createState() => _NftWalletPageState();
}

class _NftWalletPageState extends State<NftWalletPage> {
  final bool splashDialogOpened = false;

  @override
  void initState() {
    super.initState();
    context.read<NftWalletCubit>().loadWallets();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<NftWalletCubit, NftWalletState>(
      listener: (context, state) {
        if (state.isLoadingWithoutPreviousData && !Loading.isVisible()) {
          Loading.show(context);
        } else if (!state.isLoading && Loading.isVisible()) {
          Loading.hide(context);
        }
        state.whenOrNull(
          loaded: (wallets) {
            if (wallets.isEmpty) {
              Navigator.of(context).push(NftSplashDialog.route(context));
            }
          },
        );
      },
      builder: (context, state) {
        return Scaffold(
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
          body: Builder(
            builder: (context) {
              final data = state.dataOrPreviousData;
              if (data == null) {
                return Container();
              }
              return buildBody(context, data);
            },
          ),
        );
      },
    );
  }

  Widget buildBody(BuildContext context, List<NftWalletModel> wallets) {
    return ListView.builder(
      itemCount: wallets.length + 1,
      itemBuilder: (context, index) {
        if (index == wallets.length) {
          return const _AddNewWallet();
        }
        final wallet = wallets[index];
        return _NftWalletItem(wallet: wallet);
      },
    );
  }
}

class _NftWalletItem extends StatelessWidget {
  final NftWalletModel wallet;
  const _NftWalletItem({super.key, required this.wallet});

  String getFormattedWalletAddress() {
    final address = wallet.nftWallet;
    final len = address.length;
    if (address.startsWith("0x") && len >= 10) {
      return "${address.substring(0, 6)}...${address.substring(len - 4)}";
    } else {
      return wallet.nftWallet;
    }
  }

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
                    const AssetImage("assets/icons/nft_wallet_icon.png"),
                    size: 20,
                    color: Palette.current.primaryWhiteSmoke,
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Text(
                      getFormattedWalletAddress(),
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
