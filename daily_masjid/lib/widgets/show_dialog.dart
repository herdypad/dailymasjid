import 'package:daily_masjid/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:fluttertoast/fluttertoast.dart';
import 'package:get/get.dart';

showPopUpInfo({
  String? title,
  String? description,
  String? labelButton,
  Function()? onPress,
}) {
  Get.dialog(
    Dialog(
      backgroundColor: Colors.transparent,
      insetPadding: EdgeInsets.symmetric(horizontal: 24.w),
      child: Container(
        padding: EdgeInsets.fromLTRB(20.w.w, 20.w, 20.w, 4.w),
        decoration: BoxDecoration(
            borderRadius: BorderRadius.all(Radius.circular(12)),
            color: Colors.white),
        child: Column(
          mainAxisSize: MainAxisSize.min,
          children: [
            Image.asset(
              "assets/icons/ic_checklist.png",
              width: 120.0,
              height: 120.0,
              fit: BoxFit.fill,
            ),
            Text(
              title ?? '',
              style:
                  mediumText14.copyWith(fontSize: 16.w, color: primaryColor1),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 5),
            Text(
              description ?? '',
              style: mediumText11.copyWith(color: kGrey),
              textAlign: TextAlign.center,
            ),
            SizedBox(height: 5),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                backgroundColor: primaryColor2,
                shape: ContinuousRectangleBorder(
                  borderRadius: BorderRadius.circular(12),
                ),
              ),
              onPressed: () {
                Get.back();
              },
              child: Padding(
                padding: const EdgeInsets.symmetric(horizontal: 15),
                child: const Text("Done"),
              ),
            ),
            SizedBox(height: 20.h),
          ],
        ),
      ),
    ),
    barrierDismissible: false,
  );
}
