import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../themes.dart';

class events_item extends StatelessWidget {
  const events_item({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: const EdgeInsets.all(10),
        child: ClipRRect(
          borderRadius: BorderRadius.circular(10),
          child: Container(
            height: 223.h,
            decoration: BoxDecoration(
                color: kWhite, borderRadius: BorderRadius.circular(0)),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Container(
                  width: double.infinity,
                  height: 100.h,
                  child: Image.asset(
                    "assets/images/home6.png",
                    fit: BoxFit.cover,
                  ),
                ),
                Center(
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text(
                        "Buka Bersama",
                        style: mediumText14.copyWith(color: primaryColor2),
                      ),
                      Text(
                        "Masjid al-quds",
                        style: mediumText9.copyWith(color: primaryColor1),
                      ),
                      Text(
                        "9 October 2020",
                        style: mediumText9.copyWith(color: primaryColor2),
                      ),
                    ],
                  ),
                ),
                Container(
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(5),
                    color: primaryColor2,
                  ),
                  child: Padding(
                    padding:
                        const EdgeInsets.symmetric(horizontal: 14, vertical: 5),
                    child: Text(
                      "Cancel Register",
                      style: mediumText10.copyWith(fontSize: 10, color: kWhite),
                    ),
                  ),
                ),
                SizedBox(height: 9)
              ],
            ),
          ),
        ));
  }
}
