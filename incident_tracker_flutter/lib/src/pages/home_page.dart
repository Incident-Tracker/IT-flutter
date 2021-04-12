import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        title: Text(
          'Incident Tracker',
          style: TextStyle(
              color: Colors.black,
              fontSize: 15,
              fontFamily: 'Blanka'
          ),
        ),
        centerTitle: true,
      ),
    );
  }
}
