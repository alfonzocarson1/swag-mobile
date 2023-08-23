import 'dart:io';
import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swagapp/modules/pages/add/buy/preview_buy_for_sale.dart';

import '../../../generated/l10n.dart';
import '../../blocs/listing_bloc/listing_bloc.dart';
import '../../common/ui/paywall_widget.dart';
import '../../common/ui/refresh_widget.dart';
import '../../common/ui/simple_loader.dart';
import '../../common/utils/custom_route_animations.dart';
import '../../common/utils/palette.dart';
import '../../common/utils/utils.dart';
import '../../cubits/listing_for_sale/get_listing_for_sale_cubit.dart';
import '../../cubits/paywall/paywall_cubit.dart';
import '../../data/shared_preferences/shared_preferences_service.dart';
import '../../di/injector.dart';
import '../../models/listing_for_sale/listing_for_sale_model.dart';
import '../../models/listing_for_sale/profile_listing_model.dart';
import '../../models/profile/profile_model.dart';
import '../add/buy/preview_listing_as_guest.dart';

class ListingsPage extends StatefulWidget {
  static const name = '/Listings';
  const ListingsPage({Key? key}) : super(key: key);

  static Route route() => PageRoutes.material(
        settings: const RouteSettings(name: name),
        builder: (context) => const ListingsPage(),
      );

  @override
  State<ListingsPage> createState() => _ListingsPageState();
}

class _ListingsPageState extends State<ListingsPage> {
  List<File> tempFiles = [];
  bool hasActiveSubscription = false;
  bool hasUsedFreeTrial = false;
  late ProfileModel profileData;

  @override
  void initState() {
    super.initState();
    loadList();
    getProfileData();
  }

  @override
  void dispose() {
    super.dispose();
  }

  Future loadList() async {
    await getIt<ListingProfileCubit>().loadResults();
  }

  getProfileData() async {
    profileData = await getIt<PreferenceRepositoryService>().profileData();
    hasActiveSubscription = profileData.hasActiveSubscription ?? false;
    hasUsedFreeTrial = profileData.hasUsedFreeTrial ?? false;
    setState(() {});
  }

  removePaywall() {
    hasActiveSubscription = true;
    WidgetsBinding.instance.addPostFrameCallback((_) {
      setState(() {});
    });
  }

  @override
  Widget build(BuildContext context) {
    return (hasActiveSubscription == true)
        ? BlocBuilder<ListingProfileCubit, ListingCubitState>(
            builder: (context, state) {
            return state.maybeWhen(
                orElse: () {
                  return Container();
                },
                initial: () =>
                    const SingleChildScrollView(child: SimpleLoader()),
                loadedProfileListings:
                    (List<ListingForSaleProfileResponseModel> listForSale) {
                  return _getBody(listForSale.first.listForSale);
                });
          })
        : BlocBuilder<PaywallCubit, PaywallCubitState>(
            builder: (context, state) {
              return state.maybeWhen(
                  initial: () => (hasActiveSubscription)
                      ? const SizedBox.shrink()
                      : PayWallWidget(
                          hasUsedFreeTrial: hasUsedFreeTrial,
                          removePaywall: removePaywall,
                        ),
                  progress: () => const SingleChildScrollView(
                        child: Center(child: SimpleLoader()),
                      ),
                  success: () {
                    removePaywall();
                    return const SizedBox.shrink();
                  },
                  error: (error) {
                    debugPrint(error);
                    return Container();
                  },
                  orElse: () => (hasActiveSubscription)
                      ? const SizedBox.shrink()
                      : SingleChildScrollView(
                          physics: ScrollPhysics(),
                          child: PayWallWidget(
                            hasUsedFreeTrial: hasUsedFreeTrial,
                            removePaywall: removePaywall,
                          ),
                        ));
            },
          );
  }

  Widget _getBody(List<ListingForSaleModel> listingList) {
    return listingList.isNotEmpty
        ? RefreshWidget(
            onRefresh: loadList,
            child: ProfileGrid(
              itemCount: listingList.length,
              itemBuilder: (_, index) {
                ListingForSaleModel listItem = listingList[index];
                var catalogItemId = listingList[index].catalogItemId;
                var imageUrls = listingList[index].productItemImageUrls ?? [];
                var productItemName = listingList[index].productItemName ?? "";
                return ListingGridItemWidget(
                  productItemName: productItemName,
                  catalogItemId: catalogItemId,
                  productItemId: listItem.productItemId!,
                  imageUrl: imageUrls.isEmpty ? null : imageUrls[0],
                  lastSale: listingList[index].lastSale,
                );
              },
            ),
          )
        : ListView.builder(
            itemBuilder: (_, index) => SizedBox(
              height: MediaQuery.of(context).size.height * 0.30,
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 70.0),
                child: Column(
                  mainAxisAlignment: MainAxisAlignment.center,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Image.asset(
                      "assets/images/UnFavorite.png",
                      scale: 3,
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Center(
                      child: Text(
                        textAlign: TextAlign.center,
                        S.of(context).empty_listing,
                        style: Theme.of(context).textTheme.bodySmall!.copyWith(
                            fontFamily: "KnockoutCustom",
                            fontWeight: FontWeight.w300,
                            fontSize: 30,
                            letterSpacing: 1.2,
                            color: Palette.current.darkGray),
                      ),
                    ),
                  ],
                ),
              ),
            ),
            itemCount: 1,
          );
  }

  void makeCall() {
    context.read<ListingBloc>().add(const ListingEvent.getListingItem());
  }
}

class ProfileGrid extends StatelessWidget {
  final int itemCount;
  final NullableIndexedWidgetBuilder itemBuilder;
  const ProfileGrid({
    super.key,
    required this.itemCount,
    required this.itemBuilder,
  });

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: const EdgeInsets.only(top: 20, left: 20, right: 20),
      shrinkWrap: true,
      physics: const ScrollPhysics(),
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
        crossAxisCount: 2,
        crossAxisSpacing: 19.0,
        mainAxisSpacing: 12.0,
        mainAxisExtent: 215,
      ),
      itemCount: itemCount,
      itemBuilder: itemBuilder,
    );
  }
}

// TODO: move to common ui folder
class ListingGridItemWidget extends StatelessWidget {
  final String productItemName;
  final String? catalogItemId;
  final String productItemId;
  final String? imageUrl;
  final double? lastSale;
  const ListingGridItemWidget({
    super.key,
    required this.productItemName,
    required this.catalogItemId,
    required this.productItemId,
    required this.imageUrl,
    required this.lastSale,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Stack(
          children: [
            GestureDetector(
              onTap: () {
                if (catalogItemId != null) {
                  bool isLogged =
                      getIt<PreferenceRepositoryService>().isLogged();

                  if (isLogged) {
                    Navigator.of(context, rootNavigator: true)
                        .push(MaterialPageRoute(
                            builder: (context) => BuyPreviewPage(
                                  productItemId: productItemId,
                                )));
                  } else {
                    Navigator.of(context, rootNavigator: true).push(
                        PreviewListingAsGuest.route(
                            productItemId: productItemId,
                            catalogId: catalogItemId ?? ''));
                  }
                }
              },
              child: SizedBox(
                height: MediaQuery.of(context).size.width * 0.37,
                width: MediaQuery.of(context).size.width * 0.45,
                child: ClipRRect(
                  child: imageUrl == null
                      ? Image.asset("assets/images/ProfilePhoto.png")
                      : CachedNetworkImage(
                          fit: BoxFit.cover,
                          imageUrl: imageUrl!,
                          placeholder: (context, url) => SizedBox(
                            height: 200,
                            child: Center(
                              child: CircularProgressIndicator(
                                color: Palette.current.primaryNeonGreen,
                                backgroundColor: Colors.white,
                              ),
                            ),
                          ),
                          errorWidget: (context, url, error) =>
                              Image.asset("assets/images/ProfilePhoto.png"),
                        ),
                ),
              ),
            ),
          ],
        ),
        const SizedBox(height: 5),
        Text(productItemName.toUpperCase(),
            maxLines: 1,
            overflow: TextOverflow.ellipsis,
            style: Theme.of(context).textTheme.displayLarge!.copyWith(
                letterSpacing: 1,
                fontWeight: FontWeight.w300,
                fontFamily: "KnockoutCustom",
                fontSize: 21,
                color: Palette.current.white)),
        Text(
            '${S.of(context).for_sale}: ${decimalDigitsLastSalePrice(lastSale.toString())}',
            overflow: TextOverflow.fade,
            style: Theme.of(context).textTheme.bodySmall!.copyWith(
                fontWeight: FontWeight.w300,
                fontSize: 13,
                color: Palette.current.primaryNeonGreen)),
      ],
    );
  }
}
