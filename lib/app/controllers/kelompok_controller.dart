import 'package:get/get.dart';

class KelompokController extends GetxController {
  final teamMembers = <Map<String, String>>[
    {
      'nama': 'Diandra Yusuf A.',
      'nim': '123220031',
      'imagePath':
          'assets/images/yusuf.jpg',
    },
    {
      'nama': 'Salma Hanifa',
      'nim': '123220019',
      'imagePath':
          'assets/images/salma.jpg',
    },
    {
      'nama': 'Erlltya Rachma A.',
      'nim': '123220008',
      'imagePath':
          'assets/images/lita.jpg',
    },
  ].obs;

  void backToLanding() {
    Get.back();
  }

  void addMember(String nama, String nim, String imagePath) {
    teamMembers.add({
      'nama': nama,
      'nim': nim,
      'imagePath': imagePath,
    });
  }

  void removeMember(String nim) {
    teamMembers.removeWhere((member) => member['nim'] == nim);
  }
}
