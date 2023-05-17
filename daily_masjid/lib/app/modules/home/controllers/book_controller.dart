import 'package:get/get_state_manager/src/simple/get_controllers.dart';

class BookController extends GetxController {
  @override
  void onInit() {
    super.onInit();
  }

  @override
  void onReady() {
    super.onReady();
  }

  @override
  void onClose() {
    super.onClose();
  }

  //==========================//

//cek grid genap atau ganjil
  bool cekGenap(int number) {
    if (number % 2 == 0) {
      return true;
    }
    return false;
  }
}
