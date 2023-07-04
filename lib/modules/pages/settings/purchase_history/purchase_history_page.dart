import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:swagapp/modules/common/ui/loading.dart';
import 'package:swagapp/modules/common/utils/custom_route_animations.dart';
import 'package:swagapp/modules/common/utils/stateful_wrapper.dart';
import 'package:swagapp/modules/models/purchase_history/purchase_history_model.dart';

import '../../../../generated/l10n.dart';
import '../../../common/ui/pushed_header.dart';
import '../../../common/utils/palette.dart';
import '../../../cubits/purchase_history/purchase_history_cubit.dart';

class PurchaseHistoryPage extends StatelessWidget {
  static const name = '/PurchaseHistory';

  const PurchaseHistoryPage({super.key});

  static Route route() => PageRoutes.material(
        settings: const RouteSettings(name: name),
        builder: (context) => const PurchaseHistoryPage(),
      );

  @override
  Widget build(BuildContext context) {
    return StatefulWrapper(
      onInit: (context) {
        final cubit = context.read<PurchaseHistoryCubit>();
        if (!cubit.state.isLoaded) {
          cubit.loadPurchaseHistory();
        }
      },
      child: Scaffold(
        appBar: const _PageAppBar(),
        backgroundColor: Palette.current.primaryNero,
        body: BlocListener<PurchaseHistoryCubit, PurchaseHistoryState>(
          listener: (context, state) {
            if (state.isLoading && !Loading.isVisible()) {
              Loading.show(context);
            } else if (!state.isLoading && Loading.isVisible()) {
              Loading.hide(context);
            }
          },
          child: SizedBox(
            width: double.infinity,
            height: double.infinity,
            child: Builder(
              builder: (context) {
                final cubit = context.watch<PurchaseHistoryCubit>();
                return cubit.state.when(
                  loading: (loadedData) => loadedData == null
                      ? Container()
                      : _LoadedPurchaseHistory(model: loadedData),
                  loaded: (model) => _LoadedPurchaseHistory(model: model),
                  error: (error, loadedData) => loadedData == null
                      ? Container()
                      : _LoadedPurchaseHistory(model: loadedData),
                );
              },
            ),
          ),
        ),
      ),
    );
  }
}

class _PageAppBar extends StatelessWidget implements PreferredSizeWidget {
  const _PageAppBar({super.key});

  static const double height = 70;

  @override
  Widget build(BuildContext context) {
    return PushedHeader(
      showBackButton: true,
      title: Align(
        alignment: Alignment.centerRight,
        child: Text(
          S.of(context).purchase_title.toUpperCase(),
          style: Theme.of(context).textTheme.displayLarge!.copyWith(
                letterSpacing: 1,
                fontWeight: FontWeight.w300,
                fontFamily: "KnockoutCustom",
                fontSize: 30,
                color: Palette.current.primaryNeonGreen,
              ),
        ),
      ),
      height: height,
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(height);
}

class _NoPurchaseHistoryYet extends StatelessWidget {
  const _NoPurchaseHistoryYet({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      crossAxisAlignment: CrossAxisAlignment.center,
      mainAxisSize: MainAxisSize.max,
      children: [
        ImageIcon(
          AssetImage('assets/icons/account_icon.png'),
          size: 30,
          color: Palette.current.grey,
        ),
        const SizedBox(
          height: 30,
        ),
        Text(
          S.of(context).no_purchase_history_yet.toUpperCase(),
          style: Theme.of(context).textTheme.displayLarge!.copyWith(
                letterSpacing: 1,
                fontWeight: FontWeight.w300,
                fontFamily: "KnockoutCustom",
                fontSize: 30,
                color: Palette.current.darkGray,
              ),
        ),
        const SizedBox(
          height: 70,
        ),
      ],
    );
  }
}

class _LoadedPurchaseHistory extends StatelessWidget {
  final PurchaseHistoryModel model;
  const _LoadedPurchaseHistory({super.key, required this.model});

  @override
  Widget build(BuildContext context) {
    if (model.purchaseHistory.isEmpty) {
      return const _NoPurchaseHistoryYet();
    }
    return ListView.builder(
      itemCount: model.purchaseHistory.length,
      itemBuilder: (context, index) =>
          _PurchaseHistoryItem(model: model.purchaseHistory[index]),
    );
  }
}

class _PurchaseHistoryItem extends StatelessWidget {
  final PurchaseHistoryItemModel model;
  const _PurchaseHistoryItem({super.key, required this.model});

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
                  _imageWidget(),
                  const SizedBox(width: 16),
                  Expanded(
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(
                          _itemName(context),
                          style:
                              Theme.of(context).textTheme.bodySmall!.copyWith(
                                    letterSpacing: 1,
                                    fontWeight: FontWeight.w400,
                                    fontFamily: "RingsideRegular",
                                    fontSize: 16,
                                    color: Palette.current.primaryWhiteSmoke,
                                  ),
                        ),
                        Text(
                          _dateString(),
                          style:
                              Theme.of(context).textTheme.bodySmall!.copyWith(
                                    letterSpacing: 1,
                                    fontWeight: FontWeight.w300,
                                    fontFamily: "RingsideRegular",
                                    fontSize: 14,
                                    color: Palette.current.darkGray,
                                  ),
                        ),
                      ],
                    ),
                  ),
                  const SizedBox(width: 16),
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

  Widget _imageWidget() {
    final modelImage = model.purchaseItems.first.purchaseItemImage;
    final image = modelImage == null
        ? const AssetImage("assets/images/placeholder_image.jpg")
            as ImageProvider
        : NetworkImage(modelImage);

    return Image(
      image: image,
      width: 58,
      height: 52,
    );
  }

  String _dateString() {
    if (model.purchaseDate == null) {
      return "---";
    }

    final date = DateTime.parse(model.purchaseDate!);
    return DateFormat('MMMM d, yyyy').format(date);
  }

  String _itemName(BuildContext context) {
    if (model.purchaseItems.isEmpty) {
      return "---";
    }

    if (model.purchaseItems.length == 1) {
      return model.purchaseItems[0].purchaseItemTitle ?? "NULL";
    }

    return S.of(context).items_purchased(model.purchaseItems.length);
  }
}
