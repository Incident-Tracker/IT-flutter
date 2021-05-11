import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:incident_tracker_flutter/src/pages/write_post_page.dart';
import 'package:incident_tracker_flutter/src/utility/icons/write_post_icons.dart';

class IncidentTrackerAppbar extends StatelessWidget
    implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight - 16);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      automaticallyImplyLeading: false,
      backgroundColor: Colors.white,
      elevation: 0,
      centerTitle: true,
      title: buildTitle(),
      actions: [buildWritePostButton(context)],
    );
  }

  Text buildTitle() {
    return Text(
      'Incident Tracker',
      style: TextStyle(
        color: Colors.black,
        fontSize: 15,
        fontFamily: 'Blanka',
      ),
    );
  }

  IconButton buildWritePostButton(BuildContext context) {
    return IconButton(
      onPressed: writePost,
      icon: Icon(
        WritePost.edit,
        size: 20,
        color: Theme.of(context).primaryColor,
      ),
    );
  }

  void writePost() => Get.to(() => WritePostPage());
}
