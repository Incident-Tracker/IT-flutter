import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:incident_tracker_flutter/src/utility/pair.dart';

class CategoryController extends GetxController {
  var _selectedCategoryIndex = 0.obs;
  final categories = [
    Pair('전체', Icons.done),
    Pair('사회', Icons.language),
    Pair('과학', Icons.science),
    Pair('환경', Icons.eco),
    Pair('IT', Icons.computer),
    Pair('연애', Icons.live_tv_rounded),
    Pair('정치', Icons.wc_outlined),
    Pair('교육', Icons.cast_for_education),
    Pair('교통', Icons.commute),
    Pair('게임', Icons.videogame_asset),
    Pair('음악', Icons.music_note),
  ];

  int get selectedCategoryIndex => _selectedCategoryIndex.value;

  set selectedCategoryIndex(int index) => _selectedCategoryIndex.value = index;

  String getSelectedCategory() => categories[_selectedCategoryIndex.value].left;

  String getSkippedSelectedCategory() => categories[_selectedCategoryIndex.value + 1].left;

  List<Pair<String, IconData>> getSkippedCategories() {
    return categories.skip(1).toList();
  }
}