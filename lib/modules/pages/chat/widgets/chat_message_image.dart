import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:swagapp/generated/l10n.dart';
import 'package:swagapp/modules/common/assets/images.dart';


class ChatMessageImage extends StatelessWidget {

  final String url;

  const ChatMessageImage({
    super.key, 
    required this.url,
  });

  @override
  Widget build(BuildContext context) {

    double imageSize = 280;

    return ClipRRect(
      borderRadius: BorderRadius.circular(15),
      child: CachedNetworkImage(
        width: imageSize,
        height: imageSize,
        imageUrl: this.url,
        fit: BoxFit.cover,
        placeholder: (BuildContext context, String url) {

          return Image(
            width: imageSize,
             height: imageSize,
            image: const AssetImage(AppImages.placeHolder),
          );
        },
        errorWidget: (BuildContext context, String url, dynamic error) {
          return Center(child: Text(S.current.chatErrorFile));
        },
      ),
    );
  }
}

