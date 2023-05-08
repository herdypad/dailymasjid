import 'dart:convert';

import 'package:flutter/material.dart';
import 'package:get/get.dart';
import 'package:url_launcher/url_launcher.dart';

import '../../utils/app_utils.dart';
import '../ApiService/api_data.dart';
import '../routes/app_pages.dart';

class ConfigController extends GetxController {
  int _islod = 0;

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

  //==========================///

  Future<void> checkTokenAndRoute() async {
    try {
      //* DEFAULT ROUTES TO SIGN IN
      await Get.offNamed(Routes.HOME);
      return;
    } on Exception {
      await Get.offNamed(Routes.HOME);
    }
  }

  Future<void> cekConfig(context) async {
    // logSys("config get 1 ================================");
    final result = await ApiData.getConfig();

    try {
      dynamic jsonObject = jsonDecode(result);
      String isForce = jsonObject['isForce'].toString();
      // logSys("================= ${jsonObject['isForce']}");
      // logSys("================= ${jsonObject['urlApp']}");

      if (isForce == "true") {
        // logSys("config get error 1 ===== xxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxxx");
        showAlertDialog(jsonObject['urlApp'], context);
      }
    } catch (e) {
      logSys("config get error 1 ===== ${e}");
    }
    logSys("config get ===== $result");
  }

  Future<void> showAlertDialog(String url, context) async {
    return showDialog<void>(
      context: context,
      barrierDismissible: false, // user must tap button!
      builder: (BuildContext context) {
        return WillPopScope(
            child: AlertDialog(
              // <-- SEE HERE
              title: const Text('Update Aplikasi'),
              content: SingleChildScrollView(
                child: ListBody(
                  children: const <Widget>[
                    Text('Kamu Mengunakan Versi Lama Silakan Update'),
                  ],
                ),
              ),
              actions: <Widget>[
                TextButton(
                  child: const Text('Update'),
                  onPressed: () async {
                    final uri = Uri.parse(url);
                    if (await canLaunchUrl(uri)) {
                      await launchUrl(
                        uri,
                        mode: LaunchMode.externalApplication,
                      );
                    } else {
                      throw "Could not launch $url";
                    }
                  },
                ),
              ],
            ),
            onWillPop: () async => false);
      },
    );
  }

  //==========================///
}
