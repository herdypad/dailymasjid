import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../themes.dart';

class mosque_item extends StatelessWidget {
  const mosque_item({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 165.w,
      height: 170.h,
      decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/home4.png'), fit: BoxFit.cover),
          color: primaryColor1,
          borderRadius: BorderRadius.circular(11)),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.end,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Container(
              color: kWhite,
              height: 34.h,
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    SizedBox(width: 2.w),
                    Text(
                      "Masjid Agung malang",
                      style: mediumText9.copyWith(color: primaryColor2),
                    ),
                    Container(
                      width: 30.w,
                      decoration: BoxDecoration(
                        image: DecorationImage(
                            image: AssetImage(
                                'assets/icons/ic_arrow_forward__round2.png'),
                            fit: BoxFit.cover),
                      ),
                    ),
                  ]),
            ),
          ]),
    );
  }
}
