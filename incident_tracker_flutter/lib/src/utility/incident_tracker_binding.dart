import 'package:get/get.dart';
import 'package:incident_tracker_flutter/src/controller/category_select_controller.dart';
import 'package:incident_tracker_flutter/src/controller/nav_controller.dart';
import 'package:incident_tracker_flutter/src/controller/search_post_controller.dart';

class IncidentTrackerBinding extends Bindings {
  @override
  void dependencies() {
    Get.put<NavController>(NavController());
    Get.put<CategoryController>(CategoryController());
    Get.put<SearchPostController>(SearchPostController());
  }
}
