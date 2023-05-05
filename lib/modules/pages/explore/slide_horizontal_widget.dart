import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../common/utils/palette.dart';

class HorizontalSlideWidget extends StatelessWidget {
  final String pathImage;

  const HorizontalSlideWidget(this.pathImage, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final card = Container(
        margin: const EdgeInsets.only(top: 0.0, left: 0.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Expanded(
              child: SizedBox(
                height: MediaQuery.of(context).size.width * 0.38,
                child: ClipRRect(
                  child: CachedNetworkImage(
                    fit: BoxFit.fitHeight,
                    imageUrl:
                        'https://firebasestorage.googleapis.com/v0/b/platzitrips-c4e10.appspot.com/o/Group%2017.png?alt=media&token=9b406e3c-2a74-42c2-8870-67f6ba9b032c',
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
            )
          ],
        ));

    return Center(
      child: Stack(
        alignment: const Alignment(0.0, 0.0),
        children: <Widget>[
          card,
        ],
      ),
    );
  }
}
