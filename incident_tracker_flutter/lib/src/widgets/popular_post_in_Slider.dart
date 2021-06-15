import 'dart:io';

import 'package:carousel_slider/carousel_slider.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:incident_tracker_flutter/src/controller/post_controller.dart';
import 'package:incident_tracker_flutter/src/models/post_model.dart';
import 'package:incident_tracker_flutter/src/pages/detail_page.dart';

class PopularPostInSlider extends StatelessWidget {
  final PostController _postController = Get.find();
  final RxInt _currentIndex = 0.obs;

  @override
  Widget build(BuildContext context) {
    return Wrap(
      children: [
        Obx(
          () => CarouselSlider(
            items: _postController
                .getLikeSortedList()
                .reversed
                .take(7)
                .map((e) => buildPopularPost(e))
                .toList(),
            options: CarouselOptions(
              aspectRatio: 2,
              autoPlay: true,
              autoPlayInterval: Duration(seconds: 3),
              enlargeCenterPage: true,
              onPageChanged: (i, _) => _currentIndex.value = i,
            ),
          ),
        ),
        Obx(
          () => Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
                _postController.getLikeSortedList().take(7).length,
                (i) => i).map(buildDotView).toList(),
          ),
        ),
      ],
    );
  }

  GestureDetector buildPopularPost(PostModel post) {
    return GestureDetector(
      onTap: () => Get.to(() => DetailPage(post)),
      child: Container(
        width: Get.width,
        decoration: BoxDecoration(
            color: Colors.black,
            borderRadius: BorderRadius.circular(12),
            image: DecorationImage(
              image: post.imageAddress.contains('http')
                  ? NetworkImage(post.imageAddress) as ImageProvider
                  : FileImage(File(post.imageAddress)),
              fit: BoxFit.cover,
            )),
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
