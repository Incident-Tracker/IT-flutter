import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:incident_tracker_flutter/src/controller/category_select_controller.dart';
import 'package:incident_tracker_flutter/src/widgets/category_box.dart';

class CategoryPage extends StatelessWidget {
  final CategoryController _categoryController = Get.find();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 32, 16, 0),
      child: GridView.count(
        crossAxisCount: 3,
        mainAxisSpacing: 14,
        crossAxisSpacing: 16,
        children: _categoryController
            .getSkippedCategories()
            .map((e) => CategoryBox(e))
            .toList(),
      ),
    );
  }
}
