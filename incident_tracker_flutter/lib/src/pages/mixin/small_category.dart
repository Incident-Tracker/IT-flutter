import 'package:flutter/material.dart';
import 'package:get/get.dart';

mixin SmallCategory {
  Container buildSmallCategory(String categoryName) {
    return Container(
      width: 50,
      height: 18,
      decoration: BoxDecoration(
        color: Get.theme.accentColor,
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Text(
          categoryName,
          style: TextStyle(
            color: Colors.white,
            fontFamily: "NotoSansCJKkr",
            fontSize: 10,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }

  Container buildSmallUnColoredCategory(String categoryName) {
    return Container(
      width: 50,
      height: 18,
      decoration: BoxDecoration(
        color: Colors.white,
        border: Border.all(color: Colors.grey),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Center(
        child: Text(
          categoryName,
          style: TextStyle(
            color: Get.theme.accentColor,
            fontFamily: "NotoSansCJKkr",
            fontSize: 10,
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
    );
  }
}