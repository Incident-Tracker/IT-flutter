import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

class PopularPostInSlider extends StatelessWidget {
  final RxInt _currentIndex = 0.obs;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        CarouselSlider(
          items: [1, 2, 3, 4, 5, 6, 7].map((_) => buildPopularPost()).toList(),
          options: CarouselOptions(
            aspectRatio: 2,
            autoPlay: true,
            autoPlayInterval: Duration(seconds: 3),
            enlargeCenterPage: true,
            onPageChanged: (i, _) => _currentIndex.value = i,
          ),
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [0, 1, 2, 3, 4, 5, 6].map(buildDotView).toList(),
        ),
      ],
    );
  }

  Container buildPopularPost() {
    return Container(
      width: Get.width,
      decoration: BoxDecoration(
        color: Colors.black,
        borderRadius: BorderRadius.circular(12),
      ),
    );
  }

  Widget buildDotView(int index) {
    return Obx(
      () => Container(
        width: 8.0,
        height: 8.0,
        margin: EdgeInsets.symmetric(vertical: 12.0, horizontal: 6.0),
        decoration: BoxDecoration(
          shape: BoxShape.circle,
          color: _currentIndex.value == index
              ? Color.fromRGBO(0, 0, 0, 0.9)
              : Color.fromRGBO(0, 0, 0, 0.4),
        ),
      ),
    );
  }
}
