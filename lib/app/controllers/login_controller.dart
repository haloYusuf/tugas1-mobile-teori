import 'package:flutter/material.dart';
import 'package:get/get.dart';

class LoginController extends GetxController {
  var angka = 1.obs;

  var isVisiblePass = false.obs;
  final usernameController = TextEditingController();
  final passwordController = TextEditingController();

  void backToLanding() {
    Get.back();
  }

  void validateLogin() {
    if (usernameController.text.isEmpty || passwordController.text.isEmpty) {
      _showDialog(title: 'Gagal', message: 'Data tidak lengkap!');
    } else if (usernameController.text.toLowerCase() == 'mobile' &&
        passwordController.text.toLowerCase() == 'if-e') {
      _showDialog(title: 'Berhasil', message: 'Anda berhasil login!');
    } else {
      _showDialog(title: 'Gagal', message: 'Username / password salah!');
    }
  }

  void _showDialog({required String title, required String message}) {
    Get.defaultDialog(
      title: title,
      middleText: message,
      radius: 8,
    );
  }
}
