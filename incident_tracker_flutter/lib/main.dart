import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:hive/hive.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:incident_tracker_flutter/src/models/post_modal_adapter.dart';
import 'package:incident_tracker_flutter/src/pages/login_page.dart';
import 'package:incident_tracker_flutter/src/utility/incident_tracker_binding.dart';

void main() async {
  WidgetsFlutterBinding.ensureInitialized();

  await Hive.initFlutter();
  Hive.registerAdapter(PostModelAdapter());
  await Hive.openBox('profile');
  await Hive.openBox('post');
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      initialBinding: IncidentTrackerBinding(),
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        accentColor: Color(0xFFB79090),
        primaryColor: Color(0xFF6B4C4C),
      ),
      title: 'Incident Tracker',
      home: LoginPage(),
    );
  }
}