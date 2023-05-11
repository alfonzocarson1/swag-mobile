import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';

import '../utils/palette.dart';

class ImageDialog extends StatefulWidget {
  ImageDialog({Key? key, required this.imgList, required this.page})
      : super(key: key);

  List<dynamic> imgList;
  int page;

  @override
  State<ImageDialog> createState() => _ImageDialogState();
}

class _ImageDialogState extends State<ImageDialog> {
  late PageController pageController;
  int pageNo = 0;

  @override
  void initState() {
    pageController =
        PageController(initialPage: widget.page, viewportFraction: 1);

    pageNo = widget.page;
    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Dialog(
      shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(0)),
      backgroundColor: Palette.current.blackSmoke,
      insetPadding: EdgeInsets.zero,
      child: SizedBox(
        height: MediaQuery.of(context).size.height,
        child: Stack(
          alignment: Alignment.center,
          children: [
            SizedBox(
              height: 400,
              child: PageView.builder(
                physics: const ClampingScrollPhysics(),
                controller: pageController,
                onPageChanged: (index) {
                  pageNo = index;
                  setState(() {});
                },
                itemBuilder: (_, index) {
                  return AnimatedBuilder(
                      animation: pageController,
                      builder: (ctx, child) {
                        return child!;
                      },
                      child: GestureDetector(
                        onTap: () {
                          print(widget.imgList[index]);
                        },
                        onPanDown: (d) {},
                        onPanCancel: () {},
                        child: SizedBox(
                          height: 400,
                          child: Stack(children: [
                            Positioned.fill(
                              child: ClipRRect(
                                child: FutureBuilder(
                                    future: precacheImage(
                                      CachedNetworkImageProvider(
                                          widget.imgList[index]),
                                      context,
                                    ),
                                    builder: (context, snapshot) {
                                      switch (snapshot.connectionState) {
                                        case ConnectionState.none:
                                          break;
                                        case ConnectionState.waiting:
                                          return CircularProgressIndicator(
                                            color: Palette
                                                .current.primaryNeonGreen,
                                            backgroundColor: Colors.white,
                                          );
                                        case ConnectionState.active:
                                          return const Center(
                                              child: Text('Loading...'));
                                        case ConnectionState.done:
                                          if (snapshot.hasError)
                                            return Center(
                                                child: Text(
                                                    'Error: ${snapshot.error}'));
                                          else
                                            return PhotoView(
                                              imageProvider:
                                                  CachedNetworkImageProvider(
                                                "https://example.com/your-image-url.jpg",
                                              ),
                                            );
                                      }
                                    }),

                                // CachedNetworkImage(
                                //   fit: BoxFit.fitHeight,
                                //   imageUrl: widget.imgList[index],
                                //   placeholder: (context, url) => SizedBox(
                                //     height: 200,
                                //     child: Center(
                                //       child: CircularProgressIndicator(
                                //         color: Palette.current.primaryNeonGreen,
                                //         backgroundColor: Colors.white,
                                //       ),
                                //     ),
                                //   ),
                                //   errorWidget: (context, url, error) =>
                                //       Image.asset(
                                //           "assets/images/ProfilePhoto.png"),
                                // ),
                              ),
                            ),
                          ]),
                        ),
                      ));
                },
                itemCount: widget.imgList.length,
              ),
            ),
            const SizedBox(
              height: 12.0,
            ),
            Positioned(
              bottom: MediaQuery.of(context).size.height / 6,
              left: widget.imgList.length > 2
                  ? MediaQuery.of(context).size.width / 2.6
                  : MediaQuery.of(context).size.width / 2.2,
              child: Column(
                children: [
                  Container(
                    padding: const EdgeInsets.only(
                        top: 6, bottom: 6, left: 8, right: 8),
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(20),
                      color: Palette.current.blackSmoke,
                    ),
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: List.generate(widget.imgList.length, (index) {
                        return GestureDetector(
                          child: Container(
                            margin: const EdgeInsets.all(2.0),
                            child: Icon(
                              Icons.circle,
                              size: 12.0,
                              color: pageNo == index
                                  ? Palette.current.primaryNeonGreen
                                  : Palette.current.grey,
                            ),
                          ),
                        );
                      }),
                    ),
                  ),
                ],
              ),
            ),
            Positioned(
              right: 0,
              top: MediaQuery.of(context).size.height / 7,
              child: IconButton(
                iconSize: 30,
                color: Palette.current.white,
                onPressed: () {
                  Navigator.of(context).pop();
                },
                icon: const Icon(
                  Icons.clear_outlined,
                  size: 20,
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
