import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:tugas1_mobile_teori/app/controllers/kalkulator_controller.dart';

class KalkulatorPage extends StatelessWidget {
  const KalkulatorPage({super.key});

  @override
  Widget build(BuildContext context) {
    KalkulatorController controller = Get.put(KalkulatorController());
    return Scaffold(
      backgroundColor: const Color(0xFFB7CEE5),
      appBar: AppBar(
        backgroundColor: const Color(0xFFA6BDD5),
        leading: IconButton(
          icon: const Icon(Icons.arrow_back),
          onPressed: controller.handleBack,
        ),
        title: Text(
          'Ngitunk Yok',
          style: TextStyle(
            fontWeight: FontWeight.w500,
          ),
        ),
      ),
      body: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          mainAxisSize: MainAxisSize.max,
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          crossAxisAlignment: CrossAxisAlignment.stretch,
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
                              'Kalkulator',
                              style: TextStyle(
                                fontSize: 32,
                                fontWeight: FontWeight.bold,
                                color: Colors.black,
                              ),
                            ),
                            const Text(
                              'Mari Berhitunk!',
                              style: TextStyle(
                                fontSize: 16,
                                color: Colors.black54,
                              ),
                            ),
                          ],
                        ),
                        Container(
                          padding: EdgeInsets.symmetric(
                            horizontal: 12,
                            vertical: 2,
                          ),
                          decoration: BoxDecoration(
                            color: Color(0xFFE1F0FF),
                            borderRadius: BorderRadius.circular(50),
                          ),
                          child: Obx(
                            () => DropdownButton(
                              menuWidth: MediaQuery.of(context).size.width - 20,
                              isExpanded: true,
                              underline: SizedBox(),
                              items: controller.listMenu.toList(),
                              icon: Icon(
                                Icons.arrow_drop_down_rounded,
                                size: 32,
                                color: Colors.black,
                              ),
                              hint: Text(
                                controller
                                    .listData[controller.selectedMenu.value],
                                style: TextStyle(
                                  fontSize: 12,
                                  fontWeight: FontWeight.w500,
                                ),
                              ),
                              onChanged: (v) {
                                controller.selectedMenu.value = v;
                              },
                            ),
                          ),
                        ),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          crossAxisAlignment: CrossAxisAlignment.center,
                          spacing: 20,
                          children: [
                            Expanded(
                              child: TextField(
                                keyboardType: TextInputType.number,
                                textInputAction: TextInputAction.next,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                ),
                                onChanged: (v) {
                                  controller.inputNum1.value = v;
                                },
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
                            Obx(
                              () => Container(
                                padding: EdgeInsets.symmetric(
                                  vertical: 8,
                                  horizontal: 18,
                                ),
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(8),
                                  color: Color(0xFF568DC3),
                                ),
                                child: Center(
                                  child: Text(
                                    controller.listSymbol[
                                        controller.selectedMenu.value],
                                    style: TextStyle(
                                        fontSize: 20, color: Colors.white),
                                  ),
                                ),
                              ),
                            ),
                            Expanded(
                              child: TextField(
                                keyboardType: TextInputType.number,
                                textInputAction: TextInputAction.done,
                                style: TextStyle(
                                  color: Colors.black,
                                  fontSize: 16,
                                ),
                                onChanged: (v) {
                                  controller.inputNum2.value = v;
                                },
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
                          onPressed: controller.handleHitunk,
                          child: Text(
                            'Hitunk',
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
                            child: Center(
                              child: Text(
                                controller.isCalculateBefore.value
                                    ? controller.answer.value.toString()
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
                    )
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
