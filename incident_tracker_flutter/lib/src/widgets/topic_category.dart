import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:incident_tracker_flutter/src/models/category_select_controller.dart';

class TopicCategory extends StatelessWidget {
  CategorySelectController categorySelectController =
      Get.put(CategorySelectController());

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 48,
      child: ListView.builder(
        itemCount: 10,
        scrollDirection: Axis.horizontal,
        itemBuilder: (BuildContext context, int index) {
          return Container(
            margin: EdgeInsets.all(4),
            width: 88,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Theme.of(context).accentColor,
            ),
            child: Obx(() => categorySelectController.selectedCategory == index
                ? buildSelectedButtonStyle(index.toString(), context, index)
                : buildUnSelectedButtonStyle(index.toString(), context, index)),
          );
        },
      ),
    );
  }

  Widget buildSelectedButtonStyle(
      String text, BuildContext context, int index) {
    return ElevatedButton(
        child: Text(
          text,
          style: TextStyle(
            color: Colors.white,
            fontFamily: "NotoSansCJKkr",
            fontSize: 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        onPressed: () {
          categorySelectController.selectedCategory = index;
        },
        style: ButtonStyle(
          elevation: MaterialStateProperty.all(3.0),
          backgroundColor: MaterialStateProperty.all(
            Theme.of(context).accentColor,
          ),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ));
  }

  Widget buildUnSelectedButtonStyle(
      String text, BuildContext context, int index) {
    return ElevatedButton(
      child: Text(
        text,
        style: TextStyle(
          color: Theme.of(context).primaryColor,
          fontFamily: "NotoSansCJKkr",
          fontSize: 16,
          fontWeight: FontWeight.bold,
        ),
      ),
      onPressed: () {
        categorySelectController.selectedCategory = index;
      },
      style: ButtonStyle(
        elevation: MaterialStateProperty.all(3.0),
        backgroundColor: MaterialStateProperty.all(Colors.white),
        shape: MaterialStateProperty.all<RoundedRectangleBorder>(
          RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(20),
            side: BorderSide(color: Theme.of(context).primaryColor),
          ),
        ),
      ),
    );
  }
}
