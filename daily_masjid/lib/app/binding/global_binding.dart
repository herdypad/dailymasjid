import 'package:get/get.dart';

import '../controllers/config_controller.dart';

class GlobalBinding extends Bindings {
  @override
  void dependencies() {
    Get.put(ConfigController());
  }
}
