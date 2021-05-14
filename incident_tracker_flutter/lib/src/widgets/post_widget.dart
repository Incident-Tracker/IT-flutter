import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:incident_tracker_flutter/src/models/post_model.dart';
import 'package:incident_tracker_flutter/src/pages/detail_page.dart';
import 'package:incident_tracker_flutter/src/pages/mixin/small_category.dart';

class PostWidget extends StatelessWidget with SmallCategory {
  final PostModel _postModel;

  const PostWidget(this._postModel, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.to(() => DetailPage(_postModel)),
      child: Container(
        height: 100,
        margin: EdgeInsets.symmetric(vertical: 10),
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(12),
          border: Border.all(),
        ),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            buildPostImageView(),
            buildContent(context),
          ],
        ),
      ),
    );
  }

  Container buildPostImageView() {
    return Container(
      width: 100,
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        image: DecorationImage(
          image: NetworkImage(_postModel.imageAddress),
          fit: BoxFit.cover,
        ),
      ),
    );
  }

  Padding buildContent(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          buildTitle(),
          buildDate(),
          Spacer(),
          buildBottomRow(context),
        ],
      ),
    );
  }

  Text buildTitle() {
    return Text(
      _postModel.title,
      style: TextStyle(
        color: Colors.black,
        fontFamily: 'NotoSansCJKkr',
        fontSize: 16,
        fontWeight: FontWeight.w700,
      ),
    );
  }

  Text buildDate() {
    return Text(
      _postModel.date,
      style: TextStyle(
        color: Colors.grey,
        fontFamily: 'NotoSansCJKkr',
        fontSize: 10,
        fontWeight: FontWeight.w700,
      ),
    );
  }

  SizedBox buildBottomRow(BuildContext context) {
    return SizedBox(
      width: Get.width - 158,
      child: Row(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [
          buildSmallCategory(_postModel.categoryName),
          if (_postModel.isPopular) buildSmallUnColoredCategory('인기'),
          Spacer(),
          buildLikeAndSeeCountView(),
        ],
      ),
    );
  }

  Text buildLikeAndSeeCountView() {
    return Text(
      '추천 ${_postModel.likeCount}ㆍ조회수 ${_postModel.viewsCount}',
      textAlign: TextAlign.end,
      style: TextStyle(
        color: Colors.grey,
        fontFamily: 'NotoSansCJKkr',
        fontSize: 8,
        fontWeight: FontWeight.w700,
      ),
    );
  }
}
