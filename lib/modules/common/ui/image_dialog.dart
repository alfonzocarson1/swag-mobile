import 'dart:io';

import 'package:flutter/material.dart';
import 'package:photo_view/photo_view.dart';
import 'package:photo_view/photo_view_gallery.dart';

import '../utils/palette.dart';

class ImageDialog extends StatefulWidget {
  const ImageDialog({Key? key, required this.imgList, required this.page})
      : super(key: key);

  final List<dynamic> imgList;
  final int page;

  @override
  State<ImageDialog> createState() => _ImageDialogState();
}

class _ImageDialogState extends State<ImageDialog> {
  late PageController pageController;
  final ScrollController controller = ScrollController();
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
      backgroundColor: Palette.current.blackSmoke,
      insetPadding: EdgeInsets.zero,
      child: Stack(
        alignment: Alignment.center,
        children: [
          PhotoViewGallery.builder(
            pageController: pageController,
            onPageChanged: (index) {
              setState(() {
                pageNo = index;
              });
            },
            scrollPhysics: const BouncingScrollPhysics(),
            builder: (BuildContext context, int index) {
              return PhotoViewGalleryPageOptions(
                imageProvider: widget.imgList is List<File>
                    ? FileImage(widget.imgList[index])
                    : NetworkImage(
                        widget.imgList[index], // Use elements from your list
                      ) as ImageProvider<Object>,
                initialScale: PhotoViewComputedScale.contained,
                minScale: PhotoViewComputedScale.contained * 0.9,
                maxScale: PhotoViewComputedScale.covered * 3,
                heroAttributes: PhotoViewHeroAttributes(tag: index),
              );
            },
            itemCount: widget.imgList.length, // Length of your list
            loadingBuilder: (context, event) => Center(
              child: SizedBox(
                  width: 30.0,
                  height: 30.0,
                  child: CircularProgressIndicator(
                    color: Palette.current.primaryNeonGreen,
                    backgroundColor: Colors.white,
                  )),
            ),
            backgroundDecoration: BoxDecoration(
              color: Palette.current.blackSmoke,
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
              icon: Container(
                decoration: BoxDecoration(
                  color: Palette.current.blackSmoke,
                  shape: BoxShape.circle,
                ),
                padding: const EdgeInsets.all(2.5),
                child: const Icon(
                  Icons.clear_outlined,
                  size: 20,
                ),
              ),
            ),
          )
        ],
      ),
    );
  }
}
