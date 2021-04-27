import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:incident_tracker_flutter/src/models/category_select_controller.dart';
import 'package:incident_tracker_flutter/src/models/post_model.dart';

import 'post_widget.dart';

class PostList extends StatelessWidget {
  CategorySelectController categorySelectController = Get.find();
  List<PostModel> postList = [
    PostModel('', '가나다라마바사아자차카타파하', '2021.03.31', '정치', true, 44, 3),
    PostModel('', '규카츠 먹고 싶다', '2021.03.31', '정치', false, 2, 1),
    PostModel('', '가나다라마바사아자차카타파하', '2021.03.31', '정치', true, 44, 3),
    PostModel('', '규카츠 먹고 싶다', '2021.03.31', '정치', false, 2, 1),
    PostModel('', '가나다라마바사아자차카타파하', '2021.03.31', '정치', true, 44, 3),
    PostModel('', '규카츠 먹고 싶다', '2021.03.31', '정치', false, 2, 1),
    PostModel('', '가나다라마바사아자차카타파하', '2021.03.31', '정치', true, 44, 3),
    PostModel('', '규카츠 먹고 싶다', '2021.03.31', '정치', false, 2, 1),
    PostModel('', '가나다라마바사아자차카타파하', '2021.03.31', '정치', true, 44, 3),
    PostModel('', '규카츠 먹고 싶다', '2021.03.31', '정치', false, 2, 1),
  ];

  @override
  Widget build(BuildContext context) {
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
