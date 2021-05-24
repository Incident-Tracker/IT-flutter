import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:incident_tracker_flutter/src/controller/category_controller.dart';
import 'package:incident_tracker_flutter/src/controller/nav_controller.dart';
import 'package:incident_tracker_flutter/src/widgets/popular_post_in_Slider.dart';
import 'package:incident_tracker_flutter/src/widgets/post_list.dart';
import 'package:incident_tracker_flutter/src/widgets/search_view.dart';
import 'package:incident_tracker_flutter/src/widgets/topic_category.dart';

class HomePage extends StatelessWidget {
  final NavController _navController = Get.find();
  final _categoryController = Get.put(CategoryController(), tag: 'home');

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SearchView(),
        PopularPostInSlider(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: buildCategoryTitle(),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(16, 0, 16, 8),
          child: TopicCategory('home'),
        ),
        Expanded(
          child: Obx(
            () => PostList(
              false,
              category: _categoryController.getSelectedCategory(),
            ),
          ),
        ),
      ],
    );
  }

  Widget buildCategoryTitle() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Text(
            "주제별 카테고리",
            style: TextStyle(
              fontSize: 20,
              fontFamily: "NotoSansCJKkr",
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
        GestureDetector(
          onTap: () => _navController.selectedIndex = 1,
          child: Text(
            "더보기",
            style: TextStyle(
              fontSize: 12,
              fontFamily: "NotoSansCJKkr",
            ),
          ),
        ),
        Icon(Icons.keyboard_arrow_right_sharp),
      ],
    );
  }
}
