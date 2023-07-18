import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:swagapp/modules/common/ui/profile_username_rating.dart';
import 'package:swagapp/modules/common/ui/pushed_header.dart';
import 'package:swagapp/modules/common/ui/user_avatar.dart';
import 'package:swagapp/modules/common/utils/stateful_wrapper.dart';
import 'package:swagapp/modules/models/profile/public_profile.dart';

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
        )
      ],
    );
  }
}
