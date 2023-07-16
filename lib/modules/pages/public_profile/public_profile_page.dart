import 'package:flutter/material.dart';
import 'package:swagapp/modules/common/ui/pushed_header.dart';

import '../../common/utils/custom_route_animations.dart';

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
    return Scaffold(
      appBar: PushedHeader(
        title: Text("Public Profile [WIP]"),
        showBackButton: true,
      ),
    );
  }
}
