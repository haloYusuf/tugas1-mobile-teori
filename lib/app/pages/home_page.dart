import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tugas1_mobile_teori/app/controllers/home_controller.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  @override
  Widget build(BuildContext context) {
    final HomeController controller = Get.put(HomeController());

    return Scaffold(
      backgroundColor: const Color(0xFFB7CEE5),
      appBar: AppBar(
        backgroundColor: const Color(0xFFA6BDD5),
        title: const Text(
          'Hitunk',
          style: TextStyle(
            fontWeight: FontWeight.bold,
          ),
        ),
        actions: [
          IconButton(
            onPressed: controller.handleBack,
            icon: const Icon(Icons.logout),
          ),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(
          horizontal: 15,
          vertical: 10,
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Center(
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      spacing: 5,
                      children: [
                        const Text(
                          "Menu Utama",
                          style: TextStyle(
                            fontSize: 28,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        const Text(
                          "Mau ngapain kita hari ini?",
                          textAlign: TextAlign.start,
                          style: TextStyle(
                            fontSize: 16,
                            fontWeight: FontWeight.w500,
                          ),
                        ),
                        const SizedBox(height: 20),
                        _menuButton(
                          onTap: () => controller.handleMenu(1),
                          iconPath: 'assets/images/team.png',
                          label: "Tim Kami",
                        ),
                        _menuButton(
                          onTap: () => controller.handleMenu(2),
                          iconPath: 'assets/images/kalkulator.png',
                          label: "Kalkulator",
                        ),
                        _menuButton(
                          onTap: () => controller.handleMenu(3),
                          iconPath: 'assets/images/ganjilgenap.png',
                          label: "Ganjil / Genap",
                        ),
                        _menuButton(
                          onTap: () => controller.handleMenu(4),
                          iconPath: 'assets/images/secret.png',
                          label: "Secret Menu",
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Text(
              "© 2025 Kelompok Stres",
              style: TextStyle(
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }

  Widget _menuButton({
    required VoidCallback onTap,
    required String iconPath,
    required String label,
  }) {
    return ElevatedButton(
      onPressed: onTap,
      style: ElevatedButton.styleFrom(
          padding: EdgeInsets.all(
            24,
          ),
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(12),
          )),
      child: Row(
        spacing: 12,
        children: [
          Image.asset(
            iconPath,
            width: 30,
            height: 30,
          ),
          Text(
            label,
            style: const TextStyle(
              fontSize: 18,
              fontWeight: FontWeight.w500,
            ),
          ),
        ],
      ),
    );
  }
}
