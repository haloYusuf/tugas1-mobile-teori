import 'package:get/get.dart';

class GanjilGenapController extends GetxController {
  var inputNumber = ''.obs;
  var isCheckedBefore = false.obs;
  var result = ''.obs;

  void handleBack() {
    Get.back();
  }

  void handleCheck() {
    if (inputNumber.value.isEmpty) {
      _showDialog(
        title: 'Gagal',
        message: 'Anda belum memasukkan angka apapun!',
      );
    } else if (inputNumber.value.removeAllWhitespace.contains('.') ||
        inputNumber.value.removeAllWhitespace.contains(',') ||
        inputNumber.value.isAlphabetOnly) {
      _showDialog(
        title: 'Gagal',
        message: 'Tidak boleh memasukkan angka desimal / huruf!',
      );
    } else {
      isCheckedBefore.value = true;
      int value = int.parse(inputNumber.value.removeAllWhitespace);
      if (value % 2 == 0) {
        result.value = 'Genap';
      } else {
        result.value = 'Ganjil';
      }
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
