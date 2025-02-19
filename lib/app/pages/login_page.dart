import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tugas1_mobile_teori/app/controllers/login_controller.dart';

class LoginPage extends StatelessWidget {
  const LoginPage({super.key});

  @override
  Widget build(BuildContext context) {
    LoginController controller = Get.put(LoginController());

    return Scaffold(
      backgroundColor: Color(0xFFE1F0FF),
      appBar: AppBar(
        backgroundColor: Color(0xFFA6BDD5),
        title: Text(
          'Hitunk',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
      ),
      body: Column(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          Expanded(
            child: ListView(
              shrinkWrap: true,
              children: [
                Stack(
                  children: [
                    Container(
                      alignment: Alignment.topCenter,
                      color: Color(0xFFB7CEE5),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(
                          vertical: 12,
                          horizontal: 24,
                        ),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            SizedBox(
                              height: MediaQuery.of(context).size.height / 12,
                            ),
                            Text(
                              'Login',
                              style: TextStyle(
                                fontSize: 42,
                                fontWeight: FontWeight.bold,
                              ),
                            ),
                            SizedBox(
                              height: 12,
                            ),
                            Text(
                              'Masuk dengan akunmu dan\nmulai menghitunk!',
                              style: TextStyle(
                                fontSize: 18,
                                fontWeight: FontWeight.w500,
                              ),
                            ),
                            SizedBox(
                              height: MediaQuery.of(context).size.height / 15,
                            ),
                          ],
                        ),
                      ),
                    ),
                    Positioned(
                      bottom: 0,
                      child: Container(
                        alignment: Alignment.bottomCenter,
                        height: 50,
                        width: MediaQuery.of(context).size.width,
                        decoration: BoxDecoration(
                          color: Color(0xFFE1F0FF),
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(24),
                            topRight: Radius.circular(24),
                          ),
                        ),
                      ),
                    ),
                  ],
                ),
                Container(
                  padding: const EdgeInsets.all(12),
                  child: Column(
                    spacing: 18,
                    children: [
                      TextField(
                        controller: controller.usernameController,
                        textInputAction: TextInputAction.next,
                        keyboardType: TextInputType.name,
                        decoration: InputDecoration(
                          hintText: 'Username',
                        ),
                      ),
                      Obx(
                        () => TextField(
                          controller: controller.passwordController,
                          obscureText: !controller.isVisiblePass.value,
                          decoration: InputDecoration(
                            hintText: 'Password',
                            suffixIcon: IconButton(
                              onPressed: () {
                                controller.isVisiblePass.value =
                                    !controller.isVisiblePass.value;
                              },
                              icon: Icon(
                                controller.isVisiblePass.value
                                    ? Icons.visibility_off
                                    : Icons.visibility,
                              ),
                            ),
                          ),
                        ),
                      ),
                      ElevatedButton(
                        onPressed: () {
                          controller.validateLogin();
                        },
                        style: ElevatedButton.styleFrom(
                            padding: EdgeInsets.symmetric(
                              vertical: 8,
                              horizontal: MediaQuery.of(context).size.width / 4,
                            ),
                            backgroundColor: Color(0xFFB7CEE5),
                            shape: RoundedRectangleBorder(
                              borderRadius: BorderRadius.circular(18),
                            )),
                        child: Text(
                          'Login',
                          style: TextStyle(
                            color: Colors.black,
                          ),
                        ),
                      ),
                    ],
                  ),
                ),
              ],
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(12),
            child: Text(
              '© 2025 Kelompok Stres',
              style: TextStyle(
                fontSize: 12,
              ),
            ),
          ),
        ],
      ),
    );
  }
}
