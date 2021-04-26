import 'package:flutter/material.dart';
import 'package:incident_tracker_flutter/src/widgets/popular_post_in_Slider.dart';
import 'package:incident_tracker_flutter/src/widgets/post_list.dart';
import 'package:incident_tracker_flutter/src/widgets/search_view.dart';
import 'package:incident_tracker_flutter/src/widgets/topic_category.dart';

class HomePage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SearchView(),
        PopularPostInSlider(),
        Padding(
          padding: const EdgeInsets.symmetric(horizontal: 16),
          child: buildCategoryTitle(),
        ),
        Container(
          margin: EdgeInsets.fromLTRB(16, 0, 16, 8),
          child: TopicCategory(),
        ),
        Expanded(
          child: PostList(),
        ),
      ],
    );
  }

  Widget buildCategoryTitle() {
    return Row(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Expanded(
          child: Text(
            "주제별 카테고리",
            style: TextStyle(
              fontSize: 20,
              fontFamily: "NotoSansCJKkr",
              fontWeight: FontWeight.bold,
              color: Colors.black,
            ),
          ),
        ),
        Text(
          "더보기",
          style: TextStyle(
            fontSize: 12,
            fontFamily: "NotoSansCJKkr",
          ),
        ),
        Icon(Icons.keyboard_arrow_right_sharp),
      ],
    );
  }
}
