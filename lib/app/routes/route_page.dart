import 'package:get/get.dart';
import 'package:tugas1_mobile_teori/app/pages/landing_page.dart';
import 'package:tugas1_mobile_teori/app/pages/login_page.dart';
import 'package:tugas1_mobile_teori/app/routes/route_name.dart';

class RoutePage {
  static List<GetPage<dynamic>> routes = [
    GetPage( //hitunk.com/landing
      name: RouteName.landing,
      page: () => const LandingPage(),
    ),
    GetPage( //hitunk.com/login
      name: RouteName.login,
      page: () => const LoginPage(),
    ),
  ];
}
