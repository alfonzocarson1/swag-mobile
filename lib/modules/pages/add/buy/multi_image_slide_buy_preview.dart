import 'package:cached_network_image/cached_network_image.dart';
import 'package:flutter/material.dart';

import '../../../common/ui/image_dialog.dart';
import '../../../common/utils/palette.dart';

class MultiImageSlideBuyPreview extends StatefulWidget {
  MultiImageSlideBuyPreview({Key? key, required this.imgList})
      : super(key: key);

  List<dynamic> imgList;

  @override
  State<MultiImageSlideBuyPreview> createState() =>
      _MultiImageSlideBuyPreviewState();
}

class _MultiImageSlideBuyPreviewState extends State<MultiImageSlideBuyPreview> {
  late final PageController pageController;
  int pageNo = 0;

  @override
  void initState() {
    pageController = PageController(initialPage: 0, viewportFraction: 1);

    super.initState();
  }

  @override
  void dispose() {
    pageController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Stack(
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
                    onTap: () {},
                    onPanDown: (d) {},
                    onPanCancel: () {},
                    child: SizedBox(
                      height: 400,
                      child: Stack(children: [
                        Positioned.fill(
                          child: GestureDetector(
                            onTap: () {
                              showDialog(
                                  useSafeArea: true,
                                  barrierColor: Palette.current.blackSmoke,
                                  context: context,
                                  builder: (_) => ImageDialog(
                                        imgList: widget.imgList,
                                        page: pageNo,
                                      ));
                            },
                            child: ClipRRect(
                              child: CachedNetworkImage(
                                fit: BoxFit.fitHeight,
                                imageUrl: widget.imgList[index],
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
                                    Image.asset(
                                        "assets/images/ProfilePhoto.png"),
                              ),
                            ),
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
          bottom: 15,
          left: MediaQuery.of(context).size.width / 2.6,
          child: Column(
            children: [
              Container(
                padding:
                    const EdgeInsets.only(top: 6, bottom: 6, left: 8, right: 8),
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
      ],
    );
  }
}
