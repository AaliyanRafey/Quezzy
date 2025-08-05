import 'package:get/get.dart';

class PasswordController extends GetxController {
  RxString password = ''.obs;
  var confirmPassword = ''.obs;
  bool get isPasswordValid => password.value.length >= 8;
  bool get doPasswordMatch => password.value == confirmPassword.value;
  void onPasswordChanged(String value) {
    password.value = value;
  }
}
