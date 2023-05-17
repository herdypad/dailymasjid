import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../themes.dart';

class item_card_large extends StatelessWidget {
  const item_card_large({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          width: 165.w,
          height: 210.h,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage('assets/images/home1.png'),
                  fit: BoxFit.cover),
              color: primaryColor1,
              borderRadius: BorderRadius.circular(11)),
          child: Column(
              mainAxisAlignment: MainAxisAlignment.end,
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.start,
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        "13 November 2020 ",
                        style: mediumText11.copyWith(
                            color: kWhite.withOpacity(0.6)),
                      ),
                      Text(
                        "Pengajian kitab kuning",
                        style: mediumText12.copyWith(
                            color: kWhite.withOpacity(0.6)),
                      ),
                    ],
                  ),
                ),
                Container(
                  color: kWhite,
                  width: Get.width,
                  height: 34,
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Text(
                          "Masjid Agung malang",
                          style: mediumText12.copyWith(color: primaryColor2),
                        ),
                        Container(
                          height: 18,
                          width: 18,
                          decoration: BoxDecoration(
                              image: DecorationImage(
                                scale: 0.1,
                                image: AssetImage(
                                    'assets/icons/ic_arrow_forward__round.png'),
                              ),
                              color: primaryColor1,
                              borderRadius: BorderRadius.circular(4)),
                        ),
                      ]),
                ),
              ]),
        )
      ],
    );
  }
}
