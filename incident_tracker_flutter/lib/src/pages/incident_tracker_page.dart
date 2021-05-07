import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:incident_tracker_flutter/src/models/nav_controller.dart';
import 'package:incident_tracker_flutter/src/pages/category_page.dart';
import 'package:incident_tracker_flutter/src/utility/icons/category_icons.dart';
import 'package:incident_tracker_flutter/src/utility/icons/profile_icons.dart';
import 'package:incident_tracker_flutter/src/utility/icons/ranking_icons.dart';
import 'package:incident_tracker_flutter/src/widgets/incident_tacker_appbar.dart';

import 'home_page.dart';
import 'ranking_page.dart';

class IncidentTrackerPage extends StatelessWidget {
  final NavController _navController = Get.put(NavController());

  final List<Widget> bodyContent = [
    HomePage(),
    CategoryPage(),
    RankingPage(),
    Container(),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: IncidentTrackerAppbar(),
      body: Obx(() => bodyContent[_navController.selectedIndex]),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Theme.of(context).primaryColor,
          unselectedItemColor: Colors.black,
          showSelectedLabels: true,
          showUnselectedLabels: true,
          onTap: (index) => _navController.selectedIndex = index,
          currentIndex: _navController.selectedIndex,
          items: const [
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
