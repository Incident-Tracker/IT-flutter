import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:incident_tracker_flutter/src/models/category_select_controller.dart';
import 'package:incident_tracker_flutter/src/widgets/category_button.dart';

class TopicCategory extends StatelessWidget {
  CategorySelectController categorySelectController =
      Get.put(CategorySelectController());

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: EdgeInsets.all(4),
            width: 88,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Theme.of(context).accentColor,
            ),
            child: Obx(
              () => CategoryButton(
                index.toString(),
                onPressed: () {
                  categorySelectController.selectedCategory = index;
                },
                isColored: categorySelectController.selectedCategory == index,
              ),
            ),
          );
        },
      ),
    );
  }
}
