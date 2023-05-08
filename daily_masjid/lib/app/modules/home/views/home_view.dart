import 'package:daily_masjid/app/modules/home/tab/tab_book.dart';
import 'package:daily_masjid/app/modules/home/tab/tab_branda.dart';
import 'package:daily_masjid/app/modules/home/tab/tab_profile.dart';
import 'package:daily_masjid/app/modules/home/tab/tab_search.dart';
import 'package:daily_masjid/themes.dart';
import 'package:flutter/material.dart';

import 'package:get/get.dart';

import '../../../widgets/custom_bottom_navbar.dart';
import '../controllers/home_controller.dart';

class HomeView extends GetView<HomeController> {
  const HomeView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Obx(() => Scaffold(
        bottomNavigationBar: BottomAppBar(
          shape: const CircularNotchedRectangle(),
          color: primaryColor2,
          child: CustomBottomNavBar(
            selectedIndex: controller.selectedPage.value,
            onTap: (index) {
              controller.navigation(index);
            },
          ),
        ),
        body: PageView(
          controller: controller.pageController,
          physics: const NeverScrollableScrollPhysics(),
          children: const [
            TabBranda(),
            TabSearch(),
            TabBook(),
            TabProfile(),
          ],
        )));
  }
}
