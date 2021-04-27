import 'package:flutter/material.dart';
import 'package:incident_tracker_flutter/src/widgets/incident_tacker_appbar.dart';
import 'package:incident_tracker_flutter/src/widgets/post_list.dart';
import 'package:incident_tracker_flutter/src/widgets/search_with_category.dart';

class ResultPage extends StatelessWidget {
  final String word;
  final int? index;

  const ResultPage(this.word, {Key? key, this.index}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: IncidentTrackerAppbar(),
      body: Column(
        children: [
          if (index != null) SearchWithCategory(),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 16),
            child: Row(
              children: [
                Expanded(
                  child: index == null
                      ? Text(
                          word,
                          style: TextStyle(
                              fontSize: 32,
                              fontWeight: FontWeight.w700,
                              fontFamily: 'NotoSansCJKkr'),
                        )
                      : Text(
                          '검색결과',
                          style: TextStyle(
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                ),
                DropdownButton<String>(
                  value: '최신순',
                  icon: Icon(Icons.arrow_drop_down, color: Colors.black,),
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
          Expanded(child: PostList()),
        ],
      ),
    );
  }
}
