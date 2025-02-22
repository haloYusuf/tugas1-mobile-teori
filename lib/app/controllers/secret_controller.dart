import 'package:flutter/widgets.dart';
import 'package:get/get.dart';

class SecretController extends GetxController {
  TextEditingController textController = TextEditingController();
  var isCheckedBefore = false.obs;
  var totalNumber = 0.obs;
  var lengthNumber = 0.obs;

  @override
  void onClose() {
    textController.clear();
    textController.dispose();
    super.onClose();
  }

  void handleBack() {
    Get.back();
  }

  void handleClear() {
    textController.clear();
  }

  void handleResult() {
    var data = textController.text.removeAllWhitespace;
    if (data.isEmpty) {
      _showDialog(
        title: 'Gagal',
        message: 'Angka tidak boleh kosong!',
      );
    } else if (data.contains('.') || data.contains(',') || data.isAlphabetOnly) {
      _showDialog(
        title: 'Gagal',
        message: 'Input harus berupa bilangan bulat!',
      );
    } else {
      isCheckedBefore.value = true;
      lengthNumber.value = data.length;
      totalNumber.value = 0;
      data.split('').forEach((v) {
        totalNumber.value+=int.parse(v);
      });
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
