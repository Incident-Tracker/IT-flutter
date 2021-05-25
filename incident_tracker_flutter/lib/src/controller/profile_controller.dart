import 'package:get/get.dart';

class ProfileController extends GetxController {
  var _name = ''.obs;
  var _email = ''.obs;
  var _background = ''.obs;
  var _profileImage = ''.obs;

  ProfileController() {

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

  }
}
