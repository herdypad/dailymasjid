import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';
import 'package:get_storage/get_storage.dart';

import 'app/binding/global_binding.dart';
import 'app/routes/app_pages.dart';

void main() async {
  // sharpaference
  await GetStorage.init();

  runApp(
    ScreenUtilInit(
      designSize: const Size(375, 812),
      builder: (context, child) {
        return GetMaterialApp(
          title: "Application",
          initialBinding: GlobalBinding(),
          initialRoute: AppPages.INITIAL,
          getPages: AppPages.routes,
          debugShowCheckedModeBanner: false,
        );
      },
    ),
  );
}
