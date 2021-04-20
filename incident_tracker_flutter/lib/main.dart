import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:incident_tracker_flutter/src/pages/login_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      debugShowCheckedModeBanner: false,
      title: 'Incident Tracker',
      home: LoginPage(),
      theme: ThemeData(
        accentColor: Color(0xFFB79090),
        primaryColor: Color(0xFF6B4C4C),
      ),
    );
  }
}