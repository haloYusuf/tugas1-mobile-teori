import 'package:get/get.dart';
import 'package:tugas1_mobile_teori/app/routes/route_name.dart';

class LandingController extends GetxController{
  void handleClickButtonGetStarted(){
    Get.toNamed(RouteName.login);
  }
}