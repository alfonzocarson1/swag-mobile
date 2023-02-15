import 'dart:io';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:image_picker/image_picker.dart';

import '../utils/palette.dart';

class MultiImageSlide extends StatefulWidget {
  MultiImageSlide(
      {super.key, required this.imgList, this.onRemove, this.addPhoto});

  List<XFile> imgList;
  Function(int)? onRemove;
  Function()? addPhoto;

  @override
  _MultiImageSlideState createState() => _MultiImageSlideState();
}

class _MultiImageSlideState extends State<MultiImageSlide>
    with SingleTickerProviderStateMixin {
  int _current = 0;
  int lastLen = 0;
  int currentLen = 0;

  final CarouselController _controller = CarouselController();

  @override
  void initState() {
    // TODO: implement initState
    super.initState();

    lastLen = widget.imgList.length;
  }

  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
  }

  Widget buildImage(item) {
    return Stack(
      children: [
        GestureDetector(
          child: InteractiveViewer(
            clipBehavior: Clip.none,
            panEnabled: false,
            child: AspectRatio(
              aspectRatio: 1,
              child: ClipRRect(
                child: Image.file(
                  File(item.path),
                  fit: BoxFit.cover,
                  height: 250,
                  width: 250,
                ),
              ),
            ),
          ),
        ),
        Visibility(
          visible: widget.onRemove != null,
          child: Positioned(
            right: 5,
            top: 7,
            child: IconButton(
              iconSize: 30,
              color: Palette.current.primaryNeonGreen,
              onPressed: () {
                setState(() {
                  widget.onRemove!(widget.imgList.indexOf(item));
                  _controller.animateToPage(0);
                });
              },
              icon: const Icon(
                Icons.clear_outlined,
                size: 20,
              ),
            ),
          ),
        ),
        Positioned(
          bottom: 0.0,
          left: 0.0,
          right: 0.0,
          child: Container(
            decoration: const BoxDecoration(
              gradient: LinearGradient(
                colors: [
                  Color.fromARGB(200, 0, 0, 0),
                  Color.fromARGB(0, 0, 0, 0),
                ],
                begin: Alignment.bottomCenter,
                end: Alignment.topCenter,
              ),
            ),
          ),
        ),
      ],
    );
  }

  @override
  Widget build(BuildContext context) {
    final List<Widget> imageSliders =
        widget.imgList.map((item) => buildImage(item)).toList();

    return Column(
      children: [
        imageSliders.isNotEmpty
            ? Stack(
                children: [
                  CarouselSlider(
                    carouselController: _controller,
                    items: imageSliders,
                    options: CarouselOptions(
                        enableInfiniteScroll:
                            widget.imgList.length > 1 ? true : false,
                        viewportFraction: 1,
                        autoPlay: false,
                        enlargeCenterPage: false,
                        aspectRatio: 1,
                        onPageChanged: (index, reason) {
                          setState(() {
                            _current = index;
                          });
                        },
                        initialPage: 3),
                  ),
                  Positioned(
                    bottom: 15,
                    left: MediaQuery.of(context).size.width / 2.6,
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
                                children: widget.addPhoto != null
                                    ? List.generate(widget.imgList.length + 1,
                                        (index) {
                                        setState(() {
                                          currentLen = widget.imgList.length;
                                        });
                                        if (currentLen > lastLen) {
                                          setState(() {
                                            lastLen = currentLen;
                                            _controller
                                                .animateToPage(currentLen - 1);
                                          });
                                        }
                                        return (index + 1 !=
                                                widget.imgList.length + 1)
                                            ? Container(
                                                width: 15,
                                                height: 8,
                                                margin:
                                                    const EdgeInsets.symmetric(
                                                  vertical: 0,
                                                  horizontal: 0,
                                                ),
                                                decoration: BoxDecoration(
                                                  shape: BoxShape.circle,
                                                  color: _current == index
                                                      ? Palette.current
                                                          .primaryNeonGreen
                                                      : Palette.current.grey,
                                                ),
                                              )
                                            : GestureDetector(
                                                onTap: () {
                                                  widget.addPhoto!();
                                                },
                                                child: Container(
                                                  width: 18,
                                                  height: 13,
                                                  color: Colors.transparent,
                                                  margin: const EdgeInsets
                                                      .symmetric(
                                                    vertical: 0,
                                                    horizontal: 0,
                                                  ),
                                                  child: const ImageIcon(
                                                    AssetImage(
                                                        'assets/icons/camera.png'),
                                                    size: 20,
                                                  ),
                                                ),
                                              );
                                      })
                                    : widget.imgList.map((item) {
                                        int index =
                                            widget.imgList.indexOf(item);
                                        return Container(
                                          width: 15,
                                          height: 8,
                                          margin: const EdgeInsets.symmetric(
                                            vertical: 0,
                                            horizontal: 0,
                                          ),
                                          decoration: BoxDecoration(
                                            shape: BoxShape.circle,
                                            color: _current == index
                                                ? Palette
                                                    .current.primaryNeonGreen
                                                : Palette.current.grey,
                                          ),
                                        );
                                      }).toList()))
                      ],
                    ),
                  ),
                  Visibility(
                    visible: widget.onRemove != null,
                    child: Positioned(
                      left: 5,
                      top: 7,
                      child: IconButton(
                        iconSize: 30,
                        color: Palette.current.primaryNeonGreen,
                        onPressed: () {
                          Navigator.of(context, rootNavigator: true).pop();
                        },
                        icon: const Icon(
                          Icons.arrow_back,
                          size: 24,
                        ),
                      ),
                    ),
                  ),
                ],
              )
            : Container()
      ],
    );
  }
}
