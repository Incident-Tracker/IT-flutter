import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoryButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final bool isColored;

  CategoryButton(
    this.text, {
    this.onPressed,
    this.isColored = false,
  });

  @override
  Widget build(BuildContext context) {
    var accentColor = Get.theme.accentColor;

    return Container(
      width: 50,
      height: 18,
      child: ElevatedButton(
        child: buildCategoryName(accentColor),
        onPressed: onPressed,
        style: buildButtonStyle(accentColor),
      ),
    );
  }
  
  Text buildCategoryName(Color accentColor) {
    return Text(
      text,
      style: TextStyle(
        color: isColored ? Colors.white : accentColor,
        fontFamily: "NotoSansCJKkr",
        fontSize: 16,
        fontWeight: FontWeight.bold,
      ),
    );
  }

  ButtonStyle buildButtonStyle(Color accentColor) {
    return ButtonStyle(
      elevation: MaterialStateProperty.all(3.0),
      backgroundColor: MaterialStateProperty.all(
        isColored ? accentColor : Colors.white,
      ),
      shape: MaterialStateProperty.all<RoundedRectangleBorder>(
        RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20)
        ),
      ),
    );
  }
}
