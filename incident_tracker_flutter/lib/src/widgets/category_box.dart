import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:incident_tracker_flutter/src/pages/category_result_page.dart';
import 'package:incident_tracker_flutter/src/utility/pair.dart';

class CategoryBox extends StatelessWidget {
  final Pair<String, IconData> data;

  CategoryBox(this.data);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.to(() => CategoryResultPage(data.left)),
      child: Container(
        color: Color(Random().nextInt(0xffffffff)).withOpacity(0.4),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            SizedBox(),
            Icon(data.right, size: 48),
            Text(
              data.left,
              style: TextStyle(
                color: Colors.black,
                fontFamily: "NotoSansCJKkr",
                fontSize: 12,
                fontWeight: FontWeight.w400,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
