import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tugas1_mobile_teori/app/controllers/secret_controller.dart';

class SecretPage extends StatelessWidget {
  const SecretPage({super.key});

  @override
  Widget build(BuildContext context) {
    SecretController controller = Get.put(SecretController());
    return Scaffold(
      backgroundColor: const Color(0xFFB7CEE5),
      appBar: AppBar(
        backgroundColor: const Color(0xFFA6BDD5),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: controller.handleBack,
        ),
        title: Text(
          'Jumlah Angka',
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
                              'Jumlah Angka',
                              style: TextStyle(
                                fontSize: 32,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            const Text(
                              'Dalam suatu field input data',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black54,
                              ),
                            ),
                          ],
                        ),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.stretch,
                          spacing: 10,
                          children: [
                            const Text(
                              'Ayo masukkan angka untuk liat berapa jumlahnya!',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black54,
                              ),
                            ),
                            Row(
                              spacing: 20,
                              children: [
                                Expanded(
                                  child: TextField(
                                    controller: controller.textController,
                                    keyboardType: TextInputType.number,
                                    textInputAction: TextInputAction.done,
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
                                  onPressed: controller.handleClear,
                                  child: Text(
                                    'Clear',
                                    style: TextStyle(
                                      fontSize: 16,
                                      color: Colors.white,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                          ],
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
                          onPressed: controller.handleResult,
                          child: Text(
                            '=',
                            style: TextStyle(
                              fontSize: 16,
                              color: Colors.white,
                            ),
                          ),
                        ),
                        Obx(
                          () => Container(
                            padding: EdgeInsets.all(12),
                            decoration: BoxDecoration(
                              color: Color(0xFFE1F0FF),
                              borderRadius: BorderRadius.circular(8),
                            ),
                            child: Column(
                              crossAxisAlignment: CrossAxisAlignment.stretch,
                              spacing: 12,
                              children: [
                                Text(
                                  'Jumlah input angka : ${controller.isCheckedBefore.value ? controller.lengthNumber.value.toString() : '...'} Angka',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18,
                                  ),
                                ),
                                Text(
                                  'Jumlah total angka : ${controller.isCheckedBefore.value ? controller.totalNumber.value.toString() : '...'}',
                                  style: TextStyle(
                                    fontWeight: FontWeight.w500,
                                    fontSize: 18,
                                  ),
                                ),
                              ],
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
