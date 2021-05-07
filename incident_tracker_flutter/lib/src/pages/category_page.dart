import 'package:flutter/material.dart';
import 'package:incident_tracker_flutter/src/widgets/category_box.dart';

class CategoryPage extends StatelessWidget {
  List<Widget> list = [
    CategoryBox('연애', Icons.live_tv_rounded),
  ];

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.fromLTRB(16, 32, 16, 0),
      child: GridView.count(
        crossAxisCount: 3,
        mainAxisSpacing: 14,
        crossAxisSpacing: 16,
        children: list,
      ),
    );
  }
}
