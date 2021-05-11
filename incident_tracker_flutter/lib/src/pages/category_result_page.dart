import 'package:flutter/material.dart';
import 'package:incident_tracker_flutter/src/pages/mixin/result_mixin.dart';
import 'package:incident_tracker_flutter/src/widgets/incident_tacker_appbar.dart';
import 'package:incident_tracker_flutter/src/widgets/post_list.dart';

class CategoryResultPage extends StatelessWidget with ResultMixin{
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
                Expanded(child: buildExpanded()),
                buildDropdownButton(),
              ],
            ),
          ),
          Expanded(child: PostList(true, category: categoryWord)),
        ],
      ),
    );
  }

  Text buildExpanded() {
    return Text(
      categoryWord,
      style: TextStyle(
        fontSize: 32,
        fontWeight: FontWeight.w700,
        fontFamily: 'NotoSansCJKkr',
      ),
    );
  }
}
