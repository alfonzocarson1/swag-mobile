import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swagapp/modules/cubits/cards/cards_cubits.dart';
import 'package:swagapp/modules/di/injector.dart';

import '../../../../generated/l10n.dart';
import '../../../api/stripe_api.dart';
import '../../../common/ui/loading.dart';
import '../../../common/ui/pushed_header.dart';
import '../../../common/utils/custom_route_animations.dart';
import '../../../common/utils/palette.dart';
import '../../../cubits/nft_wallet/nft_wallet_cubit.dart';
import '../../../models/nft_wallet/nft_wallet.dart';

class CardsPage extends StatefulWidget {
  static const name = '/CardsPage';

  const CardsPage({super.key});

  static Route route() => PageRoutes.material(
        settings: const RouteSettings(name: name),
        builder: (context) => const CardsPage(),
      );

  @override
  State<CardsPage> createState() => _CardsPageState();
}

class _CardsPageState extends State<CardsPage> {
  List<CardObject> cards = [];
  @override
  void initState() {
    super.initState();
    context.read<CardsCubit>().getCards();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<CardsCubit, CardsCubitState>(
      listener: (context, state) {
        if (state.isLoadingWithoutPreviousData && !Loading.isVisible()) {
          Loading.show(context);
        } else if (!state.isLoading && Loading.isVisible()) {
          Loading.hide(context);
        }
      },
      builder: (context, state) {
        return Scaffold(
          appBar: PushedHeader(
            showBackButton: true,
            title: Align(
              alignment: Alignment.centerRight,
              child: Text(
                S
                    .of(context)
                    .premium_memberatomic_drop_payments_title
                    .toUpperCase(),
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

  Widget buildBody(BuildContext context, List<CardObject> cards) {
    return ListView.builder(
      itemCount: cards.length + 1,
      itemBuilder: (context, index) {
        if (index == cards.length) {
          return const _AddCard();
        }
        final wallet = cards[index];
        return _CardItem(card: wallet);
      },
    );
  }
}

class _CardItem extends StatelessWidget {
  final CardObject card;

  const _CardItem({super.key, required this.card});

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
                    const AssetImage(
                        "assets/icons/atomic_drop_payments_icon.png"),
                    size: 20,
                    color: Palette.current.primaryWhiteSmoke,
                  ),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Text(
                      "${card.brand} - ******${card.last4}",
                      style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            letterSpacing: 1,
                            fontWeight: FontWeight.w400,
                            fontFamily: "RingsideRegular",
                            fontSize: 16,
                            color: Palette.current.primaryWhiteSmoke,
                          ),
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

class _AddCard extends StatelessWidget {
  const _AddCard({super.key});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {},
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
                  S.of(context).cards_add_card,
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
