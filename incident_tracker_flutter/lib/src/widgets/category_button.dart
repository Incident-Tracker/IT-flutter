import 'package:flutter/material.dart';

class CategoryButton extends StatelessWidget {
  final String text;
  final VoidCallback? onPressed;
  final bool isColored;
  final bool isMini;

  CategoryButton(
    this.text, {
    Key? key,
    this.onPressed,
    this.isColored = false,
    this.isMini = false,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 50,
      height: 18,
      child: ElevatedButton(
        child: Text(
          text,
          style: TextStyle(
            color: isColored ? Colors.white : Theme.of(context).accentColor,
            fontFamily: "NotoSansCJKkr",
            fontSize: isMini ? 8 : 16,
            fontWeight: FontWeight.bold,
          ),
        ),
        onPressed: onPressed,
        style: ButtonStyle(
          elevation: MaterialStateProperty.all(3.0),
          backgroundColor: MaterialStateProperty.all(
            isColored ? Theme.of(context).accentColor : Colors.white,
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
