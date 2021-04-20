import 'package:flutter/material.dart';
import 'package:incident_tracker_flutter/src/utility/icons/write_post_icons.dart';

class IncidentTrackerAppbar extends StatelessWidget implements PreferredSizeWidget {
  @override
  Size get preferredSize => Size.fromHeight(kToolbarHeight);

  @override
  Widget build(BuildContext context) {
    return AppBar(
      backgroundColor: Colors.white,
      elevation: 0,
      centerTitle: true,
      title: Text(
        'Incident Tracker',
        style: TextStyle(
          color: Colors.black,
          fontSize: 15,
          fontFamily: 'Blanka',
        ),
      ),
      actions: [
        IconButton(
          onPressed: writePost,
          icon: Icon(
            WritePost.edit,
            color: Theme.of(context).primaryColor,
          ),
        ),
      ],
    );
  }

  void writePost() {

  }

}
