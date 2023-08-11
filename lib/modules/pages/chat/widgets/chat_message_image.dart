import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';

import '../../../common/utils/palette.dart';

class ChatMessageImage extends StatelessWidget {
  const ChatMessageImage({super.key, required this.url});

  final String url;

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        backgroundColor: Palette.current.black,
        systemOverlayStyle: SystemUiOverlayStyle.light,
        leading: IconButton(
          icon: Icon(
            Icons.arrow_back_ios,
            color: Palette.current.primaryNeonGreen,
          ), onPressed: () {
            Navigator.of(context).pop();
            },
      )),
       body: PhotoViewGallery.builder(
         scrollPhysics: const BouncingScrollPhysics(),
         builder: (BuildContext context, int index) {
           return PhotoViewGalleryPageOptions(
             imageProvider: CachedNetworkImageProvider(url),
             initialScale: PhotoViewComputedScale.contained * 0.8,
           );
         },

         loadingBuilder: (context, event) => const Center(
           child: SizedBox(
             width: 20.0,
             height: 20.0,
             child: CircularProgressIndicator(
             ),
           ),
         ), itemCount: 1,

       ),
     );
  }
}