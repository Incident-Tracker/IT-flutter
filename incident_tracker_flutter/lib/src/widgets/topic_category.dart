import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:incident_tracker_flutter/src/controller/category_controller.dart';
import 'package:incident_tracker_flutter/src/widgets/category_button.dart';

class TopicCategory extends StatelessWidget {
  final CategoryController categorySelectController;
  final bool isSkipped;

  TopicCategory(String tag, {this.isSkipped = false})
      : this.categorySelectController = Get.find(tag: tag);

  @override
  Widget build(BuildContext context) {
    var size = categorySelectController.categories.length;
    var list = categorySelectController.categories.map((e) => e.left).toList();

    if (isSkipped) {
      size--;
      list = categorySelectController
          .getSkippedCategories()
          .map((e) => e.left)
          .toList();
    }

    return SizedBox(
      height: 48,
      child: ListView.builder(
        itemCount: size,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) =>
            buildCategory(list[index], index),
      ),
    );
  }

  Container buildCategory(String name, int index) {
    return Container(
      width: 88,
      margin: EdgeInsets.all(4),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(20),
        color: Get.theme.accentColor,
      ),
      child: Obx(
        () => CategoryButton(
          name,
          onPressed: () => categorySelectController.selectedCategoryIndex = index,
          isColored: categorySelectController.selectedCategoryIndex == index,
        ),
      ),
    );
  }
}
