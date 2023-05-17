import 'package:get/get.dart';

import '../controllers/detail_masjid_controller.dart';

class DetailMasjidBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<DetailMasjidController>(
      () => DetailMasjidController(),
    );
  }
}
