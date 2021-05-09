import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:incident_tracker_flutter/src/controller/category_select_controller.dart';
import 'package:incident_tracker_flutter/src/widgets/category_button.dart';

class TopicCategory extends StatelessWidget {
  final CategoryController categorySelectController = Get.find();

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: ListView.builder(
        itemCount: categorySelectController.categories.length,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            width: 88,
            margin: EdgeInsets.all(4),
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Theme.of(context).accentColor,
            ),
            child: Obx(
              () => CategoryButton(
                categorySelectController.categories[index].left,
                onPressed: () =>
                    categorySelectController.selectedCategory = index,
                isColored: categorySelectController.selectedCategory == index,
              ),
            ),
          );
        },
      ),
    );
  }
}
