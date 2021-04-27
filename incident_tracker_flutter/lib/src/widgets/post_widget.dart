import 'package:flutter/material.dart';
import 'package:incident_tracker_flutter/src/models/post_model.dart';

import 'category_button.dart';

class PostWidget extends StatelessWidget {
  final PostModel _postModel;

  const PostWidget(this._postModel, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 10),
      height: 100,
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(12),
        border: Border.all(),
      ),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(12),
              border: Border.all(),
              color: Colors.black,
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  _postModel.title,
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: 'NotoSansCJKkr',
                    fontSize: 16,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Text(
                  _postModel.date,
                  style: TextStyle(
                    color: Colors.grey,
                    fontFamily: 'NotoSansCJKkr',
                    fontSize: 10,
                    fontWeight: FontWeight.w700,
                  ),
                ),
                Spacer(),
                SizedBox(
                  width: MediaQuery.of(context).size.width - 158,
                  child: Row(
                    crossAxisAlignment: CrossAxisAlignment.end,
                    children: [
                      CategoryButton(
                        _postModel.categoryName,
                        isColored: true,
                        isMini: true,
                      ),
                      if (_postModel.isPopular)
                        Padding(
                          padding: const EdgeInsets.only(left: 8),
                          child: CategoryButton('인기', isMini: true),
                        ),
                      Spacer(),
                      Text(
                        '추천 ${_postModel.likeCount}ㆍ조회수 ${_postModel.viewsCount}',
                        textAlign: TextAlign.end,
                        style: TextStyle(
                          color: Colors.grey,
                          fontFamily: 'NotoSansCJKkr',
                          fontSize: 8,
                          fontWeight: FontWeight.w700,
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
