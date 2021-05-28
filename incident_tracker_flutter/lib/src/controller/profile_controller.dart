import 'package:get/get.dart';
import 'package:hive/hive.dart';

class ProfileController extends GetxController {
  final profileBox = Hive.box('profile');
  final _name = ''.obs;
  final _email = ''.obs;
  final _background = ''.obs;
  final _profileImage = ''.obs;

  ProfileController() {
    name = profileBox.get('name') ?? 'UserName';
    email = profileBox.get('email') ?? 'Email';
    background = profileBox.get('background') ?? '';
    profileImage = profileBox.get('profileImage') ?? '';
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
    profileBox.put('name', name);
    profileBox.put('email', email);
    profileBox.put('background', background);
    profileBox.put('profileImage', profileImage);
  }
}
