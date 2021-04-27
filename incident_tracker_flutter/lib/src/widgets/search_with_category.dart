import 'package:flutter/cupertino.dart';
import 'package:incident_tracker_flutter/src/widgets/search_view.dart';

import 'topic_category.dart';

class SearchWithCategory extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SearchView(),
        Padding(
          padding: const EdgeInsets.fromLTRB(16, 0, 0, 16),
          child: TopicCategory(),
        ),
      ],
    );
  }
}