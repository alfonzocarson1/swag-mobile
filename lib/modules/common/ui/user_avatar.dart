import 'package:flutter/material.dart';

import '../utils/utils.dart';

class UserAvatar extends StatelessWidget {
  final String? useAvatar;
  final String? avatarUrl;
  final double radius;
  const UserAvatar({
    super.key,
    required this.useAvatar,
    required this.avatarUrl,
    this.radius = 75,
  });

  @override
  Widget build(BuildContext context) {
    final url = getProfileImageUrl();
    return CircleAvatar(
      backgroundColor: Colors.transparent,
      backgroundImage: const AssetImage('assets/images/Avatar.png'),
      foregroundImage: url == null ? null : NetworkImage(url),
      radius: radius,
    );
  }

  String? getProfileImageUrl() {
    if (useAvatar != 'CUSTOM') {
      return imagesList.firstWhere(
        (avatar) => (avatar["id"].contains(useAvatar)),
        orElse: () => imagesList.first,
      )['url'];
    } else {
      return avatarUrl;
    }
  }
}
