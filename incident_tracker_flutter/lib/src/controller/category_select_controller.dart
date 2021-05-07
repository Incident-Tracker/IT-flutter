import 'package:get/get.dart';


class CategorySelectController extends GetxController {
  var _selectedCategory = 0.obs;
  var categories = List.generate(10, (index) => index.toString());

  int get selectedCategory => _selectedCategory.value;
  set selectedCategory(int index) => _selectedCategory.value = index;
}