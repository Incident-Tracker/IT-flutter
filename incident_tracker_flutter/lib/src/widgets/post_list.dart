import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:incident_tracker_flutter/src/controller/search_post_controller.dart';

import 'post_widget.dart';

class PostList extends StatelessWidget {
  final SearchPostController _searchPostController = Get.find();
  final bool _isReact;
  final String? category;

  PostList(this._isReact, {this.category});

  @override
  Widget build(BuildContext context) {
    return _isReact ? Obx(() => buildListView()) : buildListView();
  }

  ListView buildListView() {
    var postList = _searchPostController.getPostBySearchWord();

    if(category != null && category != '전체') {
      postList = _searchPostController.getPostByCategory(category!, postList);
    }

    return ListView.builder(
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      itemCount: postList.length,
      itemBuilder: (BuildContext context, int index) {
        return PostWidget(postList[index]);
      },
    );
  }
}
