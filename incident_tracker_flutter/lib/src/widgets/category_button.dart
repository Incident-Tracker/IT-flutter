import 'package:flutter/material.dart';
import 'package:get/get.dart';

class CategoryButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final bool isColored;
  final bool isMini;

  CategoryButton(
    this.text, {
    this.onPressed,
    this.isColored = false,
    this.isMini = false,
  });

  @override
  Widget build(BuildContext context) {
    var accentColor = Get.theme.accentColor;

    return Container(
      width: 50,
      height: 18,
      child: ElevatedButton(
        child: Text(
          text,
          style: TextStyle(
            color: isColored ? Colors.white : accentColor,
            fontFamily: "NotoSansCJKkr",
            fontSize: isMini ? 8 : 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        onPressed: onPressed,
        style: ButtonStyle(
          elevation: MaterialStateProperty.all(3.0),
          backgroundColor: MaterialStateProperty.all(
            isColored ? accentColor : Colors.white,
          ),
          shape: MaterialStateProperty.all<RoundedRectangleBorder>(
            RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(20),
            ),
          ),
        ),
      ),
    );
  }
}
