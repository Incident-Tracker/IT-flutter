import 'package:flutter/material.dart';

import 'post.dart';

class PostList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      padding: const EdgeInsets.symmetric(horizontal: 16),
      itemCount: 10,
      itemBuilder: (BuildContext context, int index) {
        return Post();
      },
    );
  }
}
