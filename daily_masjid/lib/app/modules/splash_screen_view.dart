import 'package:daily_masjid/themes.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../controllers/config_controller.dart';

class SplashScreenView extends StatefulWidget {
  const SplashScreenView({Key? key}) : super(key: key);

  @override
  State<SplashScreenView> createState() => _SplashScreenViewState();
}

class _SplashScreenViewState extends State<SplashScreenView> {
  final cUtility = Get.find<ConfigController>();
  double width = Get.width * 0.2;

  @override
  void initState() {
    super.initState();
    checkRoute();
    startAnimation();
  }

  Future<void> checkRoute() async {
    await Future.delayed(const Duration(milliseconds: 3000));
    await cUtility.checkTokenAndRoute();
  }

  Future<void> startAnimation() async {
    await Future.delayed(const Duration(milliseconds: 100));
    if (mounted) {
      setState(() {
        width = Get.width * 0.65;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: kBg,
      body: Center(
        child: AnimatedContainer(
          duration: const Duration(milliseconds: 1000),
          width: width,
          height: width,
          child: Column(
            children: [
              Image.asset('assets/images/home3.png'),
              Text("Loading.....")
            ],
          ),
        ),
      ),
    );
  }
}
