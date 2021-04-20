import 'package:get/get.dart';


class CategorySelectController extends GetxController {
  var _selectedCategory = 0.obs;

  int get selectedCategory => _selectedCategory.value;
  set selectedCategory(int index) => _selectedCategory.value = index;
}