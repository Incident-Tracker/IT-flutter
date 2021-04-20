import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:incident_tracker_flutter/src/models/category_select_controller.dart';

import 'post.dart';

class PostList extends StatelessWidget {
  CategorySelectController categorySelectController = Get.find();

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) {
        return Post();
      },
    );
  }
}
