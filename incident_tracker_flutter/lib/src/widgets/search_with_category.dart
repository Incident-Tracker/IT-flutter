import 'package:flutter/cupertino.dart';
import 'package:get/get.dart';
import 'package:incident_tracker_flutter/src/controller/category_select_controller.dart';
import 'package:incident_tracker_flutter/src/widgets/search_view.dart';

import 'topic_category.dart';

class SearchWithCategory extends StatelessWidget {
  CategorySelectController _controller = Get.find();

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SearchView(_controller.selectedCategory),
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 0, 0, 16),
          child: TopicCategory(),
        ),
      ],
    );
  }
}