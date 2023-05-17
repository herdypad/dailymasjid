import 'package:get/get.dart';

import '../controllers/paid_event_controller.dart';

class PaidEventBinding extends Bindings {
  @override
  void dependencies() {
    Get.lazyPut<PaidEventController>(
      () => PaidEventController(),
    );
  }
}
