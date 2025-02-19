import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tugas1_mobile_teori/app/controllers/login_controller.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    LoginController controller = LoginController();
    return Scaffold(
      appBar: AppBar(
        leading: IconButton(
          onPressed: () {
            controller.backToLanding();
          },
          icon: Icon(
            Icons.arrow_back,
          ),
        ),
      ),
      body: Center(
        child: Column(
          children: [
            Obx(
              () => Text(
                controller.angka.value.toString(),
              ),
            ),
            ElevatedButton(
              onPressed: () {
                controller.angka.value++;
              },
              child: Text('Increment'),
            ),
          ],
        ),
      ),
    );
  }
}
