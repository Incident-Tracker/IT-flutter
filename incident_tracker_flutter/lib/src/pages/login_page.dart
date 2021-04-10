import 'package:flutter/material.dart';

class LoginPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SizedBox.expand(
        child: Container(
          width: double.infinity,
          padding: EdgeInsets.all(30),
          decoration: BoxDecoration(
            image: DecorationImage(
              colorFilter: ColorFilter.mode(
                  Colors.black.withOpacity(0.3), BlendMode.darken),
              image: AssetImage("images/login_screen.png"),
              fit: BoxFit.cover,
            ),
          ),
          child: Column(
            children: [
              Spacer(flex: 1),
              Image.asset('images/incident_tracker_icon.png'),
              Text(
                'INCIDENT TRACKER',
                style: TextStyle(
                  color: Colors.white,
                  fontFamily: 'Blanka',
                  fontSize: 35,
                ),
              ),
              Spacer(flex: 8),
              makeLoginButton(
                Colors.yellow,
                'images/kakao.png',
                "Login with Kakao",
              ),
              makeLoginButton(
                Colors.white,
                'images/google.png',
                "Sign in with Google",
              ),
              Spacer(flex: 1),
            ],
          ),
        ),
      ),
    );
  }

  Widget makeLoginButton(Color background, String imageAssetPath, String text) {
    return Container(
      padding: EdgeInsets.all(16),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: background,
      ),
      child: Row(
        children: [
          Image.asset(
            imageAssetPath,
            width: 24,
            height: 24,
          ),
          Spacer(flex: 4),
          Text(text),
          Spacer(flex: 5),
        ],
      ),
    );
  }
}
