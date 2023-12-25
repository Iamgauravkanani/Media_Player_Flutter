import 'package:flutter/material.dart';
import 'package:carousel_slider/carousel_slider.dart';

class GalleryTab extends StatelessWidget {
  const GalleryTab({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        body: CarouselSlider(
      items: Colors.primaries
          .map((e) => Container(
                color: e,
                alignment: Alignment.center,
                child: const Text("COLOR"),
              ))
          .toList(),
      options: CarouselOptions(
        height: 400,
        // aspectRatio: 16 / 9,
        // viewportFraction: 0.8,
        enableInfiniteScroll: true,
        autoPlay: true,
        initialPage: 0,
        autoPlayAnimationDuration: const Duration(seconds: 1),
        autoPlayInterval: const Duration(seconds: 1),
        autoPlayCurve: Curves.linear,
        enlargeCenterPage: true,
        enlargeFactor: 0.5,
        scrollDirection: Axis.horizontal,
        onPageChanged: (i, _) {},
      ),
    ));
  }
}
