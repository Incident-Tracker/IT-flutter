import 'package:get/get.dart';
import 'package:incident_tracker_flutter/src/models/post_model.dart';

class SearchPostController extends GetxController {
  var _searchWord = ''.obs;

  String get searchWord => _searchWord.value;

  set searchWord(String word) => _searchWord.value = word;

  List<PostModel> getPostBySearchWord(List<PostModel> postList) {
    return postList
        .where((element) => element.title.contains(_searchWord))
        .toList();
  }

  List<PostModel> getPostByCategory(String category, List<PostModel> list) {
    return list.where((element) => element.categoryName == category).toList();
  }
}
