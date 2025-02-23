import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tugas1_mobile_teori/app/controllers/kelompok_controller.dart';

class KelompokPage extends StatelessWidget {
  const KelompokPage({super.key});

  @override
  Widget build(BuildContext context) {
    final KelompokController controller = Get.put(KelompokController());

    return Scaffold(
      appBar: AppBar(
        backgroundColor: const Color(0xFFA6BDD5),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: () => Get.back(),
        ),
        title: Text(
          'Informasi Kelompok',
          style: TextStyle(
            fontWeight: FontWeight.w500,
          ),
        ),
        // actions: [
        //   IconButton(
        //     icon: const Icon(Icons.exit_to_app),
        //     onPressed: () {},
        //   ),
        // ],
      ),
      backgroundColor: const Color(0xFFB7CEE5),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Expanded(
              child: Center(
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        const Text(
                          'Tim Kami',
                          style: TextStyle(
                            fontSize: 32,
                            fontWeight: FontWeight.bold,
                            color: Colors.black,
                          ),
                        ),
                        const Text(
                          'Tak kenal maka salken ia',
                          style: TextStyle(fontSize: 16, color: Colors.black54),
                        ),
                        const SizedBox(height: 20),
                        Obx(
                          () => Column(
                            spacing: 10,
                            children: controller.teamMembers
                                .map(
                                  (member) => _teamMemberCard(
                                    context: context,
                                    nama: member['nama'].toString(),
                                    nim: member['nim'].toString(),
                                    imagePath: member['imagePath'].toString(),
                                  ),
                                )
                                .toList(),
                          ),
                        ),
                        const SizedBox(height: 40),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            SizedBox(
              height: 15,
            ),
            Text(
              '© 2025 Kelompok Stres',
              style: TextStyle(color: Colors.black54),
            ),
          ],
        ),
      ),
    );
  }

  Widget _teamMemberCard({
    required BuildContext context,
    required String imagePath,
    required String nama,
    required String nim,
  }) {
    return ElevatedButton(
      onPressed: () {
        showDialog(
          context: context,
          builder: (context) => AlertDialog(
            shape: RoundedRectangleBorder(
              borderRadius: BorderRadius.circular(16),
            ),
            content: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Align(
                  alignment: Alignment.topRight,
                  child: IconButton(
                    icon: const Icon(Icons.close),
                    onPressed: () => Navigator.pop(context),
                  ),
                ),
                ClipRRect(
                  borderRadius: BorderRadius.circular(50),
                  child: Image.asset(
                    imagePath,
                    width: 100,
                    height: 100,
                    fit: BoxFit.cover,
                    errorBuilder: (context, error, stackTrace) =>
                        const Icon(Icons.person, size: 100),
                  ),
                ),
                const SizedBox(height: 12),
                Text(
                  nama,
                  style: const TextStyle(
                    fontSize: 20,
                    fontWeight: FontWeight.bold,
                  ),
                ),
                Text(
                  nim,
                  style: const TextStyle(
                    fontSize: 16,
                    color: Colors.black54,
                  ),
                ),
              ],
            ),
          ),
        );
      },
      style: ElevatedButton.styleFrom(
        backgroundColor: const Color(0xFFE1F0FF),
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(16),
        ),
        padding: EdgeInsets.all(18),
      ),
      child: Row(
        spacing: 12,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(50),
            child: Image.asset(
              imagePath,
              width: 50,
              height: 50,
              fit: BoxFit.cover,
              errorBuilder: (context, error, stackTrace) =>
                  const Icon(Icons.person, size: 50),
            ),
          ),
          Expanded(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  nama,
                  style: const TextStyle(
                      fontSize: 18, fontWeight: FontWeight.bold),
                  overflow: TextOverflow.ellipsis,
                ),
                Text(
                  nim,
                  style: const TextStyle(fontSize: 14, color: Colors.black54),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
