import 'package:flutter/foundation.dart';
import 'dart:developer' as d;
import 'package:package_info_plus/package_info_plus.dart';

class AppUtils {
  static Future<String> getAppVersion() async {
    final packageInfo = await PackageInfo.fromPlatform();
    return 'Versi ${packageInfo.version}';
  }
}

logSys(String s) {
  if (kDebugMode) {
    d.log(s);
  }
}
