import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tugas1_mobile_teori/app/controllers/ganjil_genap_controller.dart';

class GanjilGenapPage extends StatelessWidget {
  const GanjilGenapPage({super.key});

  @override
  Widget build(BuildContext context) {
    GanjilGenapController controller = Get.put(GanjilGenapController());
    return Scaffold(
      backgroundColor: const Color(0xFFB7CEE5),
      appBar: AppBar(
        backgroundColor: const Color(0xFFA6BDD5),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: controller.handleBack,
        ),
        title: Text(
          'Ganjil / Genap',
          style: TextStyle(
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Padding(
        padding: EdgeInsets.all(12),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          spacing: 10,
          children: [
            Expanded(
              child: Center(
                child: ListView(
                  shrinkWrap: true,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.stretch,
                      spacing: 30,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          children: [
                            const Text(
                              'Ganjil / Genap ?',
                              style: TextStyle(
                                fontSize: 32,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            const Text(
                              'Bukan tebak-tebakan',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black54,
                              ),
                            ),
                          ],
                        ),
                        Row(
                          spacing: 20,
                          children: [
                            Expanded(
                              child: TextField(
                                keyboardType: TextInputType.number,
                                textInputAction: TextInputAction.done,
                                onChanged: (v) {
                                  controller.inputNumber.value = v;
                                },
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                ),
                                decoration: InputDecoration(
                                  hintText: 'Angka',
                                  filled: true,
                                  fillColor: Color(0xFFE1F0FF),
                                  border: OutlineInputBorder(
                                    borderSide: BorderSide.none,
                                    borderRadius: BorderRadius.circular(8),
                                  ),
                                ),
                              ),
                            ),
                            ElevatedButton(
                              style: ElevatedButton.styleFrom(
                                backgroundColor: Color(0xFF568DC3),
                                padding: EdgeInsets.symmetric(
                                  vertical: 18,
                                  horizontal: 16,
                                ),
                                shape: RoundedRectangleBorder(
                                  borderRadius: BorderRadius.circular(12),
                                ),
                              ),
                              onPressed: controller.handleCheck,
                              child: Text(
                                'CEK',
                                style: TextStyle(
                                  fontSize: 16,
                                  color: Colors.white,
                                ),
                              ),
                            ),
                          ],
                        ),
                        Obx(
                          () => Container(
                            padding: EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: Color(0xFFE1F0FF),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Center(
                              child: Text(
                                controller.isCheckedBefore.value
                                    ? controller.result.value
                                    : 'Hasil',
                                style: TextStyle(
                                  fontSize: 16,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            Text(
              '© 2025 Kelompok Stres',
              style: TextStyle(
                fontSize: 12,
              ),
            ),
          ],
        ),
      ),
    );
  }
}
