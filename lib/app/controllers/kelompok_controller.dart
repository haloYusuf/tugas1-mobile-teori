import 'package:get/get.dart';

class KelompokController extends GetxController {
  final RxList<Map<String, String>> teamMembers = <Map<String, String>>[
    {
      'nama': 'Diandra Yusuf A.',
      'nim': '123220031',
      'imagePath': 'https://inaturalist-open-data.s3.amazonaws.com/photos/444006573/original.jpg',
    },
    {
      'nama': 'Salma Hanifa',
      'nim': '123220019',
      'imagePath': 'https://cdn11.bigcommerce.com/s-xf1j2e32mt/images/stencil/1280x1280/products/21333/32541/whitecatblueeyes__75584.1668481583.jpg?c=1',
    },
    {
      'nama': 'Erlltya Rachma A.',
      'nim': '123220008',
      'imagePath': 'https://media.4-paws.org/8/b/f/4/8bf45f56549cff7f705eb200f5ec5f6a9b335baf/VIER%20PFOTEN_2020-10-07_00138-1806x1804-720x719.jpg',
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
