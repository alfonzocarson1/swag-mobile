import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swagapp/modules/common/ui/profile_username_rating.dart';
import 'package:swagapp/modules/common/ui/pushed_header.dart';
import 'package:swagapp/modules/common/ui/user_avatar.dart';
import 'package:swagapp/modules/common/utils/stateful_wrapper.dart';
import 'package:swagapp/modules/models/profile/public_profile.dart';

import '../../../generated/l10n.dart';
import '../../common/ui/loading.dart';
import '../../common/utils/custom_route_animations.dart';
import '../../common/utils/palette.dart';
import '../../cubits/public_profile/public_profile_cubit.dart';

class PublicProfilePage extends StatelessWidget {
  static const name = "/publicProfile";

  final String profileId;
  const PublicProfilePage({super.key, required this.profileId});

  static Route route(String profileId) => PageRoutes.material(
        settings: const RouteSettings(name: name),
        builder: (context) => PublicProfilePage(profileId: profileId),
      );

  @override
  Widget build(BuildContext context) {
    return StatefulWrapper(
      onInit: (context) {
        context.read<PublicProfileCubit>().loadProfile(
              profileId,
            );
      },
      child: Scaffold(
        appBar: PushedHeader(
          showBackButton: true,
          height: 70,
          backgroundColor: Colors.transparent,
          suffixIconButton: IconButton(
            icon: ImageIcon(
              const AssetImage("assets/images/more-horizontal.png"),
              color: Palette.current.primaryWhiteSmoke,
            ),
            onPressed: () {},
          ),
        ),
        backgroundColor: Palette.current.primaryNero,
        body: BlocConsumer<PublicProfileCubit, PublicProfileState>(
          listener: (context, state) {
            if (state.isLoadingWithoutPreviousData && !Loading.isVisible()) {
              Loading.show(context);
            } else if (!state.isLoading && Loading.isVisible()) {
              Loading.hide(context);
            }
          },
          builder: (context, state) {
            return state.when(
              error: (e, previousData) => Center(
                child: Text(
                  "Error loading profile: $e",
                  style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        color: Palette.current.primaryNeonPink,
                      ),
                ),
              ),
              loading: (previousData) => previousData == null
                  ? Container()
                  : buildBody(context, previousData),
              loaded: (data) => buildBody(context, data),
            );
          },
        ),
      ),
    );
  }

  buildBody(BuildContext context, PublicProfile profile) {
    return Column(
      children: [
        const SizedBox(height: 18),
        UserAvatar(
          useAvatar: profile.useAvatar,
          avatarUrl: profile.avatarUrl,
          radius: 125 / 2,
        ),
        const SizedBox(height: 14),
        ProfileUsernameRating(
          username: profile.username ?? "NULL",
          kycVerified: profile.kycverified ?? false,
          rating: profile.listingsRating ?? 0,
        ),
        const SizedBox(height: 25),
        const Expanded(child: _PublicProfileTabs())
      ],
    );
  }
}

class _PublicProfileTabs extends StatefulWidget {
  const _PublicProfileTabs({
    super.key,
  });

  @override
  State<_PublicProfileTabs> createState() => _PublicProfileTabsState();
}

class _PublicProfileTabsState extends State<_PublicProfileTabs>
    with SingleTickerProviderStateMixin {
  late TabController _tabController;

  @override
  void initState() {
    super.initState();
    _tabController = TabController(length: 2, vsync: this);
  }

  @override
  void dispose() {
    _tabController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 20),
          child: TabBar(
            isScrollable: true,
            dividerColor: Colors.transparent,
            indicatorColor: Palette.current.primaryNeonGreen,
            controller: _tabController,
            indicator: UnderlineTabIndicator(
              borderSide: BorderSide(
                width: 3,
                color: Palette.current.primaryNeonGreen,
              ),
            ),
            indicatorSize: TabBarIndicatorSize.label,
            labelPadding: const EdgeInsets.symmetric(horizontal: 20),
            labelColor: Palette.current.primaryNeonGreen,
            unselectedLabelColor: Palette.current.primaryWhiteSmoke,
            unselectedLabelStyle: Theme.of(context)
                .textTheme
                .headlineMedium!
                .copyWith(
                    fontFamily: "KnockoutCustom",
                    fontSize: 21,
                    letterSpacing: 1.1,
                    fontWeight: FontWeight.w300),
            labelStyle: Theme.of(context).textTheme.headlineMedium!.copyWith(
                fontFamily: "KnockoutCustom",
                fontSize: 21,
                letterSpacing: 1.1,
                fontWeight: FontWeight.w300),
            tabs: [
              Tab(
                child: Text(
                  S.of(context).tab_listings,
                ),
              ),
              Tab(
                child: Text(
                  S.of(context).tab_favorites,
                ),
              ),
            ],
          ),
        ),
        Expanded(
          child: TabBarView(
            physics: const NeverScrollableScrollPhysics(),
            controller: _tabController,
            children: [
              _EmptyWidget(
                message: S.of(context).public_profile_empty_listing,
              ),
              _EmptyWidget(
                message: S.of(context).public_profile_empty_favorites,
              ),
            ],
          ),
        ),
      ],
    );
  }
}

class _EmptyWidget extends StatelessWidget {
  final String message;
  const _EmptyWidget({super.key, required this.message});

  @override
  Widget build(BuildContext context) {
    return ListView(
      padding: const EdgeInsets.symmetric(
        horizontal: 60,
        vertical: 70,
      ),
      children: [
        Image.asset(
          "assets/images/UnFavorite.png",
          width: 30,
          height: 30,
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          textAlign: TextAlign.center,
          message.toUpperCase(),
          style: Theme.of(context).textTheme.bodySmall!.copyWith(
                fontFamily: "KnockoutCustom",
                fontWeight: FontWeight.w300,
                fontSize: 30,
                letterSpacing: 1.2,
                color: Palette.current.darkGray,
              ),
        ),
      ],
    );
  }
}
