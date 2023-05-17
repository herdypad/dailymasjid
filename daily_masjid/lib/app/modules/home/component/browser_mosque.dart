import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../themes.dart';
import '../../../routes/app_pages.dart';
import 'mosque_item.dart';

class browser_mosque extends StatelessWidget {
  const browser_mosque({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.start,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        SizedBox(height: 11.h),
        Text("Mosque", style: mediumText14.copyWith(color: primaryColor2)),
        SizedBox(height: 11.h),
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            InkWell(
                onTap: () {
                  Get.toNamed(Routes.DETAIL_MASJID);
                },
                child: mosque_item()),
            InkWell(
                onTap: () {
                  Get.toNamed(Routes.DETAIL_MASJID);
                },
                child: mosque_item()),
          ],
        )
      ],
    );
  }
}
