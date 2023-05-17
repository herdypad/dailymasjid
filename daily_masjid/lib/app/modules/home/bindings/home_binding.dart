import 'package:daily_masjid/app/modules/home/controllers/book_controller.dart';
import 'package:daily_masjid/app/modules/home/controllers/branda_controller.dart';
import 'package:daily_masjid/app/modules/home/controllers/profile_controller.dart';
import 'package:daily_masjid/app/modules/home/controllers/search_controller.dart';
import 'package:get/get.dart';

import '../controllers/home_controller.dart';

class HomeBinding extends Bindings {
  @override
  void dependencies() {
    Get
      ..lazyPut<HomeController>(HomeController.new)
      ..lazyPut<BookController>(BookController.new)
      ..lazyPut<SearchController>(SearchController.new)
      ..lazyPut<BrandaController>(BrandaController.new)
      ..lazyPut<ProfileController>(ProfileController.new);
  }
}
