import 'package:get/get.dart';

import '../controllers/regiter_event_controller.dart';

class RegiterEventBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<RegiterEventController>(
      () => RegiterEventController(),
    );
  }
}
