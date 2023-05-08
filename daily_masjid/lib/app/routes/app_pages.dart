import 'package:get/get.dart';

import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/regiter_event/bindings/regiter_event_binding.dart';
import '../modules/regiter_event/views/regiter_event_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.HOME;

  static final routes = [
    GetPage(
      name: _Paths.HOME,
      page: () => const HomeView(),
      binding: HomeBinding(),
    ),
    GetPage(
      name: _Paths.REGITER_EVENT,
      page: () => const RegiterEventView(),
      binding: RegiterEventBinding(),
    ),
  ];
}
