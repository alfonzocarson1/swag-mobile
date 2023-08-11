import 'dart:typed_data';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:dash_chat_2/dash_chat_2.dart';
import 'package:flutter/material.dart';
import 'package:swagapp/modules/pages/chat/widgets/chat_message_image.dart';
import 'package:swagapp/modules/pages/media_viewer/media_viewer_page.dart';
import 'package:video_thumbnail/video_thumbnail.dart';

class CustomFileMessage extends StatefulWidget {
  const CustomFileMessage(
      {super.key, required this.fileUrl, required this.mediaType});
  final String fileUrl;
  final MediaType mediaType;

  @override
  State<CustomFileMessage> createState() => _CustomFileMessageState();
}

class _CustomFileMessageState extends State<CustomFileMessage> {
  late Uint8List? uint8list;

  @override
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  getVideoThumbnail() async {
    uint8list = await VideoThumbnail.thumbnailData(
      video: widget.fileUrl,
      imageFormat: ImageFormat.JPEG,
      maxWidth:
          128, // specify the width of the thumbnail, let the height auto-scaled to keep the source aspect ratio
      quality: 25,
    );
  }

  @override
  Widget build(BuildContext context) {
    if (widget.mediaType == MediaType.video) {
      getVideoThumbnail();
    }
    return Center(
      child: (widget.mediaType == MediaType.image)
          ? (widget.fileUrl.isEmpty)
              ? const CircularProgressIndicator()
              : GestureDetector(
                onTap: () => Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => ChatMessageImage(url: widget.fileUrl),
                  )) ,
                child: CachedNetworkImage(
                    imageUrl: widget.fileUrl,
                  ),
              )
          : IconButton(
              icon: const Icon(Icons.play_arrow),
              iconSize: 64.0,
              color: Colors.white,
              onPressed: () {
                if (widget.mediaType == MediaType.video) {
                  debugPrint(widget.fileUrl);
                  Navigator.of(context).push(MaterialPageRoute(
                    builder: (context) => MediaViewerPage(url: widget.fileUrl),
                  ));
                }
              },
            ),
    );
  }
}
