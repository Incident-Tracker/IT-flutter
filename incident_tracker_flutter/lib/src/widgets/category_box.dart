import 'dart:math';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:incident_tracker_flutter/src/pages/result_page.dart';

class CategoryBox extends StatelessWidget {
  final String text;
  final IconData id;

  CategoryBox(this.text, this.id, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Get.to(() => ResultPage(text)),
      child: Container(
        color: Color(Random().nextInt(0xffffffff)).withOpacity(0.4),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceEvenly,
          children: [
            const SizedBox(),
            Icon(id, size: 48),
            Text(
              text,
              style: const TextStyle(
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
