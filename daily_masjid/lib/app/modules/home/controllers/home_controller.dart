import 'package:daily_masjid/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../views/test_page.dart';

class HomeController extends GetxController {
  PageController pageController = PageController();
  RxInt selectedPage = 0.obs;

  @override
  void onInit() async {
    final args = Get.arguments;
    if (args != null) {
      final pageIndex = args['index'];
      pageController = PageController(initialPage: pageIndex);
      selectedPage(pageIndex);
    }
    cekStatus();
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

  //==========================///

  void navigation(int index) {
    selectedPage(index);
    pageController.jumpToPage(index);
  }

  Future<void> cekStatus() async {
    var dt = DateTime.now();
    print(dt.day.toString());

    if (dt.day.toString() == "12") {
      // Get.off(UnderDevelopmentView());
    }
  }
}
