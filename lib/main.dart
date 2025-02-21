import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:tugas1_mobile_teori/app/routes/route_name.dart';
import 'package:tugas1_mobile_teori/app/routes/route_page.dart';

void main() {
  runApp(const MainApp());
}

class MainApp extends StatelessWidget {
  const MainApp({super.key});

  @override
  Widget build(BuildContext context) {
    return GetMaterialApp(
      title: 'Hitunk',
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Poppins',
      ),
      initialRoute: RouteName.landing,
      getPages: RoutePage.routes,
    );
  }
}
