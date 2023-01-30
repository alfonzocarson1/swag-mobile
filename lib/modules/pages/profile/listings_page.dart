import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../common/utils/palette.dart';
import '../../common/utils/size_helper.dart';

class ListingsPage extends StatefulWidget {
  const ListingsPage({super.key});

  @override
  State<ListingsPage> createState() => _ListingsPageState();
}

class _ListingsPageState extends State<ListingsPage> {
  late ResponsiveDesign _responsiveDesign;
  List<String> images = [
    "https://firebasestorage.googleapis.com/v0/b/platzitrips-c4e10.appspot.com/o/Rectangle%2012%20(1).png?alt=media&token=00355e6f-7046-4f5f-9797-cc7610cab9fe",
    "https://firebasestorage.googleapis.com/v0/b/platzitrips-c4e10.appspot.com/o/Rectangle%2012%20(1).png?alt=media&token=00355e6f-7046-4f5f-9797-cc7610cab9fe",
    "https://firebasestorage.googleapis.com/v0/b/platzitrips-c4e10.appspot.com/o/Rectangle%2012%20(1).png?alt=media&token=00355e6f-7046-4f5f-9797-cc7610cab9fe",
    "https://firebasestorage.googleapis.com/v0/b/platzitrips-c4e10.appspot.com/o/Rectangle%2012%20(1).png?alt=media&token=00355e6f-7046-4f5f-9797-cc7610cab9fe",
    "https://firebasestorage.googleapis.com/v0/b/platzitrips-c4e10.appspot.com/o/Rectangle%2012%20(1).png?alt=media&token=00355e6f-7046-4f5f-9797-cc7610cab9fe",
    "https://firebasestorage.googleapis.com/v0/b/platzitrips-c4e10.appspot.com/o/Rectangle%2012%20(1).png?alt=media&token=00355e6f-7046-4f5f-9797-cc7610cab9fe",
    "https://firebasestorage.googleapis.com/v0/b/platzitrips-c4e10.appspot.com/o/Rectangle%2012%20(1).png?alt=media&token=00355e6f-7046-4f5f-9797-cc7610cab9fe",
    "https://firebasestorage.googleapis.com/v0/b/platzitrips-c4e10.appspot.com/o/Rectangle%2012%20(1).png?alt=media&token=00355e6f-7046-4f5f-9797-cc7610cab9fe"
  ];
  @override
  Widget build(BuildContext context) {
    _responsiveDesign = ResponsiveDesign(context);
    return GridView.count(
      mainAxisSpacing: 0.0,
      crossAxisSpacing: 0.0,
      crossAxisCount: 2,
      childAspectRatio: _responsiveDesign.responsiveProfileCard(context, 3),
      shrinkWrap: true,
      children: List.generate(images.length, (index) {
        return Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            color: Colors.transparent,
            child: Column(
              mainAxisAlignment: MainAxisAlignment.start,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                GestureDetector(
                  onTap: () {
                    print("post $index");
                  },
                  child: Stack(
                    children: [
                      CachedNetworkImage(
                        imageUrl: images[index],
                        placeholder: (context, url) => SizedBox(
                          height: 360,
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
                    ],
                  ),
                ),
                Text("SWAGGY OSBOURNE BLADE...",
                    maxLines: 1,
                    overflow: TextOverflow.ellipsis,
                    style: Theme.of(context).textTheme.displayLarge!.copyWith(
                        letterSpacing: 1,
                        fontWeight: FontWeight.w300,
                        fontFamily: "Knockout",
                        fontSize: 24,
                        color: Palette.current.white)),
                Text("FOR SALE: \$315.00",
                    overflow: TextOverflow.fade,
                    style: Theme.of(context).textTheme.bodySmall!.copyWith(
                        fontWeight: FontWeight.w300,
                        fontSize: 13,
                        color: Palette.current.primaryNeonGreen)),
              ],
            ),
          ),
        );
      }),
    );
  }
}
