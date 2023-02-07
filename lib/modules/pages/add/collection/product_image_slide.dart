import 'package:cached_network_image/cached_network_image.dart';
import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';

import '../../../common/utils/palette.dart';

class CarouselWithDotsPage extends StatefulWidget {
  List<String> imgList;

  CarouselWithDotsPage({super.key, required this.imgList});

  @override
  _CarouselWithDotsPageState createState() => _CarouselWithDotsPageState();
}

class _CarouselWithDotsPageState extends State<CarouselWithDotsPage> {
  int _current = 0;

  @override
  Widget build(BuildContext context) {
    final List<Widget> imageSliders = widget.imgList
        .map((item) => Container(
              child: ClipRRect(
                child: Stack(
                  children: [
                    Positioned.fill(
                      child: CachedNetworkImage(
                        height: 250,
                        width: 250,
                        fit: BoxFit.cover,
                        imageUrl: item,
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
                    ),
                    Positioned(
                      right: 5,
                      top: 7,
                      child: IconButton(
                        iconSize: 30,
                        color: Palette.current.primaryNeonGreen,
                        onPressed: () {},
                        icon: const Icon(
                          Icons.clear_outlined,
                          size: 20,
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
                ),
              ),
            ))
        .toList();

    return Column(
      children: [
        Stack(
          children: [
            CarouselSlider(
              items: imageSliders,
              options: CarouselOptions(
                  viewportFraction: 1,
                  autoPlay: false,
                  enlargeCenterPage: false,
                  aspectRatio: 1,
                  onPageChanged: (index, reason) {
                    setState(() {
                      _current = index;
                    });
                  }),
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
                        children: widget.imgList.map((url) {
                          int index = widget.imgList.indexOf(url);
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
                                  ? Palette.current.primaryNeonGreen
                                  : Palette.current.grey,
                            ),
                          );
                        }).toList(),
                      ))
                ],
              ),
            ),
          ],
        )
      ],
    );
  }
}
