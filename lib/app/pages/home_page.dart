import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tugas1_mobile_teori/app/controllers/home_controller.dart';
import 'package:tugas1_mobile_teori/app/routes/route_name.dart';

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
          style: TextStyle(fontWeight: FontWeight.bold),
        ),
        actions: [
          IconButton(
            onPressed: () {
              Get.offAllNamed(RouteName.login);
            },
            icon: const Icon(Icons.logout),
          ),
        ],
      ),
      body: SafeArea(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            const Spacer(),
            Padding(
              padding: const EdgeInsets.only(left: 25),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  const Text(
                    "Menu Utama",
                    style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  const SizedBox(height: 5),
                  const Text(
                    "Mau ngapain kita hari ini?",
                    textAlign: TextAlign.start,
                    style: TextStyle(fontSize: 16, fontWeight: FontWeight.w500),
                  ),
                ],
              ),
            ),
            const SizedBox(height: 20),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 16),
              child: Column(
                children: [
                  _menuButton(
                    onTap: () => controller.navigateTo(RouteName.team),
                    iconPath: 'assets/images/team.png',
                    label: "Tim Kami",
                  ),
                  _menuButton(
                    onTap: () => controller.navigateTo(RouteName.kalkulator),
                    iconPath: 'assets/images/kalkulator.png',
                    label: "Kalkulator",
                  ),
                  _menuButton(
                    onTap: () => controller.navigateTo(RouteName.ganjilGenap),
                    iconPath: 'assets/images/ganjilgenap.png',
                    label: "Ganjil/Genap",
                  ),
                  _menuButton(
                    onTap: () => controller.navigateTo(RouteName.secretMenu),
                    iconPath: 'assets/images/secret.png',
                    label: "Secret Menu",
                  ),
                ],
              ),
            ),
            const Spacer(),
            const Padding(
              padding:
                  EdgeInsets.only(left: 20, bottom: 12), // Biar sejajar ke kiri
              child: Align(
                alignment: Alignment.centerLeft, // Rata kiri
                child: Text(
                  "© 2025 Kelompok Stres",
                  style: TextStyle(fontSize: 12),
                ),
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
    return GestureDetector(
      onTap: onTap,
      child: Container(
        margin: const EdgeInsets.symmetric(vertical: 6),
        padding: const EdgeInsets.all(12),
        decoration: BoxDecoration(
          color: Color(0xFFE1F0FF),
          borderRadius: BorderRadius.circular(12),
          boxShadow: [
            BoxShadow(
              color: Color(0xFF9EBAD5).withOpacity(0.4),
              blurRadius: 6,
              offset: const Offset(0, 7),
            ),
          ],
        ),
        child: Row(
          children: [
            Image.asset(
              iconPath,
              width: 30,
              height: 30,
            ),
            const SizedBox(width: 12),
            Text(
              label,
              style: const TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.w500,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
