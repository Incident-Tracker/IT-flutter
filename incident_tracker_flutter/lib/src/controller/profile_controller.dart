import 'package:get/get.dart';
import 'package:shared_preferences/shared_preferences.dart';

class ProfileController extends GetxController {
  var _name = ''.obs;
  var _email = ''.obs;
  var _background = ''.obs;
  var _profileImage = ''.obs;

  ProfileController() {
    SharedPreferences.getInstance().then((prefs) {
      name = prefs.getString('name') ?? 'UserName';
      email = prefs.getString('email') ?? 'Email';
      background = prefs.getString('background') ?? '';
      profileImage = prefs.getString('profileImage') ?? '';
    });
  }

  String get name => _name.value;

  set name(String value) => _name.value = value;

  String get email => _email.value;

  set email(String value) => _email.value = value;

  String get background => _background.value;

  set background(String value) => _background.value = value;

  String get profileImage => _profileImage.value;

  set profileImage(String value) => _profileImage.value = value;

  saveUserInfoIntoLocal() {
    SharedPreferences.getInstance().then((prefs) {
      prefs.setString('name', name);
      prefs.setString('email', email);
      prefs.setString('background', background);
      prefs.setString('profileImage', profileImage);
    });
  }
}
