import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:incident_tracker_flutter/src/utility/pair.dart';

class CategoryController extends GetxController {
  var _selectedCategory = 0.obs;
  final categories = [
    Pair('전체', Icons.done),
    Pair('연애', Icons.live_tv_rounded),
  ];

  int get selectedCategory => _selectedCategory.value;

  set selectedCategory(int index) => _selectedCategory.value = index;

  String getSelectedCategory() => categories[_selectedCategory.value].left;

  List<Pair<String, IconData>> getSkippedCategories() {
    return categories.skip(1).toList();
  }
}