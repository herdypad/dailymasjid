import 'package:get/get.dart';

import '../modules/detail_event/bindings/detail_event_binding.dart';
import '../modules/detail_event/bindings/detail_event_binding.dart';
import '../modules/detail_event/views/detail_event_view.dart';
import '../modules/detail_event/views/detail_event_view.dart';
import '../modules/detail_masjid/bindings/detail_masjid_binding.dart';
import '../modules/detail_masjid/views/detail_masjid_view.dart';
import '../modules/home/bindings/home_binding.dart';
import '../modules/home/views/home_view.dart';
import '../modules/home/views/test_page.dart';
import '../modules/paid_event/bindings/paid_event_binding.dart';
import '../modules/paid_event/views/paid_event_view.dart';
import '../modules/regiter_event/bindings/regiter_event_binding.dart';
import '../modules/regiter_event/views/regiter_event_view.dart';
import '../modules/splash_screen_view.dart';

part 'app_routes.dart';

class AppPages {
  AppPages._();

  static const INITIAL = Routes.SPLASH_SCREEN;

  static final routes = [
    GetPage(
      name: _Paths.SPLASH_SCREEN,
      page: () => const SplashScreenView(),
    ),
    GetPage(
      name: _Paths.UNDER_DEVELOPMENT,
      page: () => const UnderDevelopmentView(),
    ),
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
    GetPage(
      name: _Paths.PAID_EVENT,
      page: () => const PaidEventView(),
      binding: PaidEventBinding(),
    ),
    GetPage(
      name: _Paths.DETAIL_EVENT,
      page: () => const DetailEventView(),
      binding: DetailEventBinding(),
    ),
    GetPage(
      name: _Paths.DETAIL_EVENT,
      page: () => const DetailEventView(),
      binding: DetailEventBinding(),
    ),
    GetPage(
      name: _Paths.DETAIL_MASJID,
      page: () => const DetailMasjidView(),
      binding: DetailMasjidBinding(),
    ),
  ];
}
