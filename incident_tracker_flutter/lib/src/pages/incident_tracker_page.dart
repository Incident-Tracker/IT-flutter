import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:incident_tracker_flutter/src/models/nav_controller.dart';

class IncidentTrackerPage extends StatelessWidget {
  final NavController navController = Get.put(NavController());

  final List<Widget> bodyContent = [
    Text("Home1"),
    Text("Home2"),
    Text("Home3"),
    Text("Home4"),
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: buildAppBar(),
      body: Obx(() => bodyContent.elementAt(navController.selectedIndex)),
      bottomNavigationBar: Obx(
        () => BottomNavigationBar(
          type: BottomNavigationBarType.fixed,
          selectedItemColor: Color(0xff6b4c4c),
          unselectedItemColor: Colors.black,
          onTap: (index) => navController.selectedIndex = index,
          currentIndex: navController.selectedIndex,
          items: [
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '메인페이지',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '카테고리',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '순위',
            ),
            BottomNavigationBarItem(
              icon: Icon(Icons.home),
              label: '마이페이지',
            ),
          ],
        ),
      ),
    );
  }

  AppBar buildAppBar() {
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
    );
  }
}
