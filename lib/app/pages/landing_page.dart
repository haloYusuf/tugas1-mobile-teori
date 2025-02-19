import 'package:flutter/material.dart';
import 'package:tugas1_mobile_teori/app/controllers/landing_controller.dart';

class LandingPage extends StatelessWidget {
  const LandingPage({super.key});

  @override
  Widget build(BuildContext context) {
    LandingController controller = LandingController();

    return Scaffold(
      backgroundColor: Color(0xFFD6E5F3),
      body: Center(
        child: ListView(
          shrinkWrap: true,
          children: [
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              spacing: 10,
              children: [
                Image.asset(
                  'assets/images/kalkulator.png',
                  width: 150,
                  height: 150,
                ),
                SizedBox(
                  height: 20,
                ),
                Text(
                  'HITUNK',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 36,
                  ),
                ),
                Text(
                  'Mari Berhitunk',
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 12,
                  ),
                ),
                SizedBox(
                  height: 30,
                ),
                ElevatedButton(
                  onPressed: controller.handleClickButtonGetStarted,
                  style: ElevatedButton.styleFrom(
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(24),
                      side: BorderSide(
                        color: Colors.black,
                      ),
                    ),
                  ),
                  child: Text(
                    'Get Started',
                    style: TextStyle(
                      fontSize: 12,
                      color: Colors.black,
                      fontWeight: FontWeight.w500,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
