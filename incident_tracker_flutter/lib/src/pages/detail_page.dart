import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:incident_tracker_flutter/src/models/post_model.dart';
import 'package:incident_tracker_flutter/src/pages/mixin/small_category.dart';

class DetailPage extends StatelessWidget with SmallCategory {
  final PostModel _postModel;

  DetailPage(this._postModel);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: CustomScrollView(
        slivers: [
          buildBackgroundImage(),
          SliverToBoxAdapter(
            child: Container(
              padding: const EdgeInsets.all(16),
              height: 300,
              child: buildContents(),
            ),
          ),
        ],
      ),
    );
  }

  SliverAppBar buildBackgroundImage() {
    return SliverAppBar(
      automaticallyImplyLeading: false,
      expandedHeight: Get.height / 7 * 2,
      floating: true,
      flexibleSpace: FlexibleSpaceBar(
        background: Image.network(_postModel.imageAddress, fit: BoxFit.cover),
      ),
    );
  }

  Column buildContents() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        buildTitle(),
        Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: Row(
            children: [
              buildSmallCategory(_postModel.categoryName),
              SizedBox(width: 8),
              buildSeeCountView(),
              Spacer(),
              Icon(Icons.thumb_up, color: Colors.black54),
              SizedBox(width: 8),
              buildLikeCountView(),
            ],
          ),
        ),
        SizedBox(height: 16),
        Expanded(child: buildTextContentView()),
      ],
    );
  }

  Text buildTitle() {
    return Text(
      _postModel.title,
      style: TextStyle(
        fontFamily: "NotoSansCJKkr",
        fontSize: 20,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Text buildSeeCountView() {
    return Text(
      '조회수 ${_postModel.viewsCount} ㆍ ${_postModel.date}',
      style: TextStyle(
        fontFamily: "NotoSansCJKkr",
        fontSize: 12,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  Text buildLikeCountView() => buildTextView(_postModel.likeCount.toString());

  Text buildTextContentView() => buildTextView(_postModel.content);

  Text buildTextView(String content) {
    return Text(
      content,
      style: TextStyle(
        color: Colors.black54,
        fontFamily: "NotoSansCJKkr",
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
    );
  }
}
