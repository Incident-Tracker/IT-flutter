import 'dart:math';

import 'package:flutter/material.dart';

class CategoryPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.fromLTRB(16, 32, 16, 0),
      child: GridView.count(
        crossAxisCount: 3,
        mainAxisSpacing: 14,
        crossAxisSpacing: 16,
        children: List.generate(44, (index) {
          return Container(
            color: Color(Random().nextInt(0xffffffff)).withOpacity(0.4),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: [
                SizedBox(),
                Icon(
                  Icons.videogame_asset,
                  size: 48,
                ),
                Text(
                  'Item $index',
                  style: TextStyle(
                    color: Colors.black,
                    fontFamily: "NotoSansCJKkr",
                    fontSize: 12,
                    fontWeight: FontWeight.bold,
                  ),
                ),
              ],
            ),
          );
        }),
      ),
    );
  }
}
