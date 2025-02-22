import 'package:flutter/material.dart';
import 'package:get/get.dart';

class KalkulatorController extends GetxController {
  var selectedMenu = 0.obs;

  var inputNum1 = ''.obs;
  var inputNum2 = ''.obs;

  var answer = (0.0).obs;
  var isCalculateBefore = false.obs;

  final List<DropdownMenuItem> listMenu = [
    DropdownMenuItem(
      value: 0,
      enabled: false,
      child: Text(
        'Pilih Operasi',
        style: TextStyle(
          color: Colors.grey,
        ),
      ),
    ),
    DropdownMenuItem(
      value: 1,
      child: Text('Penjumlahan'),
    ),
    DropdownMenuItem(
      value: 2,
      child: Text('Pengurangan'),
    ),
    DropdownMenuItem(
      value: 3,
      child: Text('Perkalian'),
    ),
    DropdownMenuItem(
      value: 4,
      child: Text('Pembagian'),
    ),
  ];

  final listData = [
    'Pilih Operasi',
    'Penjumlahan',
    'Pengurangan',
    'Perkalian',
    'Pembagian',
  ];

  final listSymbol = [
    ' ',
    '+',
    '-',
    '*',
    '/',
  ];

  void handleBack() {
    Get.back();
  }

  void handleHitunk() {
    if (selectedMenu.value == 0) {
      _showDialog(
        title: 'Gagal',
        message: 'Pilih operasi terlebih dahulu!',
      );
    } else if (inputNum1.value.isEmpty || inputNum1.value.isAlphabetOnly) {
      _showDialog(
        title: 'Gagal',
        message: 'Angka pertama tidak boleh kosong / huruf!',
      );
    } else if (inputNum2.value.isEmpty || inputNum2.value.isAlphabetOnly) {
      _showDialog(
        title: 'Gagal',
        message: 'Angka kedua tidak boleh kosong / huruf!',
      );
    } else {
      double value1 = double.parse(inputNum1.value.replaceAll(',', '.'));
      double value2 = double.parse(inputNum2.value.replaceAll(',', '.'));

      if(selectedMenu.value == 1){
        answer.value = value1 + value2;
      }else if(selectedMenu.value == 2){
        answer.value = value1 - value2;
      }else if(selectedMenu.value == 3){
        answer.value = value1 * value2;
      }else if(selectedMenu.value == 4){
        answer.value = value1 / value2;
      }

      isCalculateBefore.value = true;
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
