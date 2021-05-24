import 'package:flutter_test/flutter_test.dart';
import 'package:incident_tracker_flutter/src/controller/category_controller.dart';

main() {
  final categoryController = CategoryController();

  test('default category', () {
    expect(categoryController.getSelectedCategory(), '전체');
  });

  test('change selected category index', () {
    categoryController.selectedCategoryIndex = 3;
    expect(categoryController.selectedCategoryIndex, 3);
  });

  test('get category name', () {
    categoryController.selectedCategoryIndex = 1;
    expect(categoryController.getSelectedCategory(),
        categoryController.categories[1].left);
  });

  test('get skipped category list', () {
    expect(categoryController.getSkippedCategories().length,
        categoryController.categories.length - 1);
  });
}
