import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../generated/l10n.dart';
import '../../common/utils/palette.dart';
import '../../common/utils/size_helper.dart';

class CollectionPage extends StatefulWidget {
  const CollectionPage({super.key});

  @override
  State<CollectionPage> createState() => _CollectionPageState();
}

class _CollectionPageState extends State<CollectionPage> {
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
  void initState() {
    // TODO: implement initState
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    _responsiveDesign = ResponsiveDesign(context);
    return GridView.count(
      mainAxisSpacing: 0.0,
      crossAxisSpacing: 0.0,
      crossAxisCount: 2,
      childAspectRatio: _responsiveDesign.responsiveProfileCard(context, 3),
      shrinkWrap: true,
      children: List.generate(images.length + 1, (index) {
        return Padding(
          padding: const EdgeInsets.all(10.0),
          child: Container(
            color: Colors.transparent,
            child: index == 0
                ? Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        height: _responsiveDesign.responsiveProfileCard(
                            context, 620),
                        color: Colors.black,
                        child: Stack(
                          children: [
                            Positioned.fill(
                              child: Align(
                                alignment: Alignment.center,
                                child: IconButton(
                                  icon: Image.asset('assets/images/plus.png'),
                                  onPressed: () {},
                                ),
                              ),
                            ),
                          ],
                        ),
                      ),
                      Text(S.of(context).add_new_item,
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context)
                              .textTheme
                              .displayLarge!
                              .copyWith(
                                  letterSpacing: 1,
                                  fontWeight: FontWeight.w300,
                                  fontFamily: "Knockout",
                                  fontSize: 24,
                                  color: Palette.current.white)),
                    ],
                  )
                : Column(
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
                              imageUrl: images[index - 1],
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
                            Positioned(
                              bottom: 0,
                              right: 0,
                              child: Visibility(
                                  visible: true,
                                  child: Container(
                                    height: 30,
                                    width: MediaQuery.of(context).size.width,
                                    decoration: BoxDecoration(
                                      color: Palette.current.primaryNeonPink,
                                    ),
                                    child: Padding(
                                      padding: const EdgeInsets.symmetric(
                                          horizontal: 20),
                                      child: Align(
                                        alignment: Alignment.centerRight,
                                        child: Text('1 FOR SALE',
                                            style: Theme.of(context)
                                                .textTheme
                                                .bodySmall!
                                                .copyWith(
                                                    fontSize: 14,
                                                    fontWeight: FontWeight.w600,
                                                    color:
                                                        Palette.current.white)),
                                      ),
                                    ),
                                  )),
                            ),
                          ],
                        ),
                      ),
                      Text("SWAGGY OSBOURNE BLADE...",
                          maxLines: 1,
                          overflow: TextOverflow.ellipsis,
                          style: Theme.of(context)
                              .textTheme
                              .displayLarge!
                              .copyWith(
                                  letterSpacing: 1,
                                  fontWeight: FontWeight.w300,
                                  fontFamily: "Knockout",
                                  fontSize: 24,
                                  color: Palette.current.white)),
                      Text("FOR SALE: \$315.00",
                          overflow: TextOverflow.fade,
                          style: Theme.of(context)
                              .textTheme
                              .bodySmall!
                              .copyWith(
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
