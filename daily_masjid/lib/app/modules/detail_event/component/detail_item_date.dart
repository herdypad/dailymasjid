import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../themes.dart';

class detail_item_date extends StatelessWidget {
  const detail_item_date({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Column(children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: primaryColor1,
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 5),
                child: Text(
                  "9 October",
                  style: mediumText10.copyWith(
                      fontSize: 10.sp, color: primaryColor2),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: primaryColor1,
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 30.w, vertical: 5),
                child: Text(
                  "2020",
                  style: mediumText10.copyWith(
                      fontSize: 10.sp, color: primaryColor2),
                ),
              ),
            ),
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.circular(5),
                color: primaryColor1,
              ),
              child: Padding(
                padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 5),
                child: Text(
                  "16.00 - 18.00 AM",
                  style: mediumText10.copyWith(
                      fontSize: 10.sp, color: primaryColor2),
                ),
              ),
            ),
          ],
        )
      ]),
    );
  }
}
