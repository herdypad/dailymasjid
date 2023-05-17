import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../themes.dart';

class event_item_recent extends StatelessWidget {
  const event_item_recent({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      decoration:
          BoxDecoration(color: kWhite, borderRadius: BorderRadius.circular(4)),
      child: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            //recent 1
            Row(
              children: [
                Container(
                  height: 34.w,
                  child: Image.asset(
                    "assets/images/home2.png",
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(width: 15.w),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("Maulid nabi ",
                        style: mediumText12.copyWith(color: primaryColor2)),
                    Text("Masjid al-quds",
                        style: mediumText9.copyWith(color: primaryColor1)),
                  ],
                )
              ],
            ),

            //recnt 2
            Row(
              children: [
                Text(
                  "9 October 2020",
                  style: mediumText10,
                ),
                SizedBox(width: 10.w),
                Container(
                  height: 15.h,
                  child: Image.asset(
                    "assets/icons/menu.png",
                    fit: BoxFit.cover,
                  ),
                ),
                SizedBox(width: 10.w),
              ],
            )
          ],
        ),
      ),
    );
  }
}
