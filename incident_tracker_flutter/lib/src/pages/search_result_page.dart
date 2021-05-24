import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:incident_tracker_flutter/src/controller/category_controller.dart';
import 'package:incident_tracker_flutter/src/controller/search_post_controller.dart';
import 'package:incident_tracker_flutter/src/pages/mixin/result_mixin.dart';
import 'package:incident_tracker_flutter/src/widgets/incident_tacker_appbar.dart';
import 'package:incident_tracker_flutter/src/widgets/post_list.dart';
import 'package:incident_tracker_flutter/src/widgets/search_with_category.dart';

class SearchResultPage extends StatefulWidget {
  @override
  _SearchResultPageState createState() => _SearchResultPageState();
}

class _SearchResultPageState extends State<SearchResultPage> with ResultMixin {
  final SearchPostController _searchPostController = Get.find();
  final _categoryController = Get.put(CategoryController(), tag: 'search');

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: IncidentTrackerAppbar(),
      body: Column(
        children: [
          SearchWithCategory(),
          buildSearchWithCategoryWidget(),
          Expanded(
            child: PostList(
              true,
              category: _categoryController.getSelectedCategory(),
            ),
          ),
        ],
      ),
    );
  }

  Padding buildSearchWithCategoryWidget() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 16),
      child: Row(
        children: [
          Expanded(child: buildSearchText()),
          buildDropdownButton(),
        ],
      ),
    );
  }

  Text buildSearchText() {
    return Text(
      '검색결과',
      style: TextStyle(
        fontWeight: FontWeight.bold,
        color: Colors.black,
      ),
    );
  }

  @override
  void dispose() {
    _searchPostController.searchWord = '';
    super.dispose();
  }
}
