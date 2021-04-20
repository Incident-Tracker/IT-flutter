import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:incident_tracker_flutter/src/models/nav_controller.dart';
import 'package:incident_tracker_flutter/src/utility/icons/category_icons.dart';
import 'package:incident_tracker_flutter/src/utility/icons/profile_icons.dart';
import 'package:incident_tracker_flutter/src/utility/icons/ranking_icons.dart';
import 'package:incident_tracker_flutter/src/utility/icons/write_post_icons.dart';
import 'package:incident_tracker_flutter/src/widgets/incident_tacker_appbar.dart';

class IncidentTrackerPage extends StatelessWidget {
  final NavController navController = Get.put(NavController());

  final List<Widget> bodyContent = const [
    Text("Home1"),
    Text("Home2"),
    Text("Home3"),
    Text("Home4"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: IncidentTrackerAppbar(),
      body: Obx(() => bodyContent[navController.selectedIndex]),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Color(0xff6b4c4c),
          unselectedItemColor: Colors.black,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          onTap: (index) => navController.selectedIndex = index,
          currentIndex: navController.selectedIndex,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '메인페이지',
            ),
            BottomNavigationBarItem(
              icon: Icon(Category.tag),
              label: '카테고리',
            ),
            BottomNavigationBarItem(
              icon: Icon(Ranking.award),
              label: '순위',
            ),
            BottomNavigationBarItem(
              icon: Icon(Profile.user),
              label: '마이페이지',
            ),
          ],
        ),
      ),
    );
  }
}
