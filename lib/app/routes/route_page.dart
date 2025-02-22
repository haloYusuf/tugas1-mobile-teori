import 'package:get/get.dart';
import 'package:tugas1_mobile_teori/app/pages/kalkulator_page.dart';
import 'package:tugas1_mobile_teori/app/pages/landing_page.dart';
import 'package:tugas1_mobile_teori/app/pages/login_page.dart';
import 'package:tugas1_mobile_teori/app/pages/kelompok_page.dart';
import 'package:tugas1_mobile_teori/app/routes/route_name.dart';
import 'package:tugas1_mobile_teori/app/pages/home_page.dart';

class RoutePage {
  static List<GetPage<dynamic>> routes = [
    GetPage(
      name: RouteName.landing,
      page: () => const LandingPage(),
    ),
    GetPage(
      name: RouteName.login,
      page: () => const LoginPage(),
    ),
    GetPage(
      name: RouteName.home,
      page: () => const HomePage(),
    ),
    GetPage(
      name: RouteName.kelompok,
      page: () => const KelompokPage(),
    ),
    GetPage(
      name: RouteName.kalkulator,
      page: () => const KalkulatorPage(),
    ),
  ];
}
