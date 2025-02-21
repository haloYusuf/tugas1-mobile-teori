import 'package:get/get.dart';
import 'package:tugas1_mobile_teori/app/routes/route_name.dart';

class HomeController extends GetxController {
  void handleMenu(int page) {
    if (page == 1) {
      Get.toNamed(RouteName.kelompok);
    } else if (page == 2) {
      Get.toNamed(RouteName.kalkulator);
    } else if (page == 3) {
      Get.toNamed(RouteName.ganjilGenap);
    } else {
      Get.toNamed(RouteName.secretMenu);
    }
  }

  void handleBack() {
    Get.offAllNamed(RouteName.login);
  }
}
