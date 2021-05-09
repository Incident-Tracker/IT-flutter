import 'package:flutter/material.dart';
import 'package:incident_tracker_flutter/src/widgets/incident_tacker_appbar.dart';
import 'package:incident_tracker_flutter/src/widgets/post_list.dart';

class CategoryResultPage extends StatelessWidget {
  final String categoryWord;

  const CategoryResultPage(this.categoryWord);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: IncidentTrackerAppbar(),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                Expanded(
                  child: Text(
                    categoryWord,
                    style: TextStyle(
                      fontSize: 32,
                      fontWeight: FontWeight.w700,
                      fontFamily: 'NotoSansCJKkr',
                    ),
                  ),
                ),
                DropdownButton<String>(
                  value: '최신순',
                  icon: Icon(
                    Icons.arrow_drop_down,
                    color: Colors.black,
                  ),
                  iconSize: 24,
                  elevation: 16,
                  underline: Container(),
                  items: <String>['최신순']
                      .map<DropdownMenuItem<String>>((String value) {
                    return DropdownMenuItem<String>(
                      value: value,
                      child: Text(value, style: TextStyle(color: Colors.black)),
                    );
                  }).toList(),
                ),
              ],
            ),
          ),
          Expanded(
            child: PostList(
              true,
              category: categoryWord,
            ),
          ),
        ],
      ),
    );
  }
}
