import 'package:get/get.dart';
import 'package:get/get.dart';
import 'package:daily_masjid/app/modules/home/component/item_card_small.dart';
import 'package:daily_masjid/app/modules/home/controllers/branda_controller.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../themes.dart';
import '../../../routes/app_pages.dart';
import 'item_card_large.dart';

class browser_event extends GetView<BrandaController> {
  const browser_event({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    Column item_title(title, select) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: mediumText14.copyWith(
                color: select == 0 ? primaryColor2 : primaryColor3),
          ),
          Container(
            width: select == 0 ? 70 : 0,
            height: 5,
            decoration: BoxDecoration(
              color: primaryColor1,
              borderRadius: BorderRadius.circular(9),
            ),
          )
        ],
      );
    }

    return Obx(() {
      return Column(
        children: [
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              InkWell(
                onTap: () {
                  controller.statuUpcoming(1);
                  controller.statuNow(0);
                },
                child: item_title("Happening now", controller.statuNow.value),
              ),
              SizedBox(width: 40.w),
              InkWell(
                onTap: () {
                  controller.statuUpcoming(0);
                  controller.statuNow(1);
                },
                child: item_title(
                    "Upcoming events", controller.statuUpcoming.value),
              ),
            ],
          ),
          SizedBox(height: 9.h),
          Row(
            mainAxisAlignment: MainAxisAlignment.end,
            children: [
              Text("See all ",
                  style: mediumText10.copyWith(color: primaryColor2)),
              Image.asset(
                'assets/icons/ic_arrow_forward.png',
                width: 9,
              )
            ],
          ),
          SizedBox(height: 9.h),
          controller.statuNow == 0 ? Item_now() : Item_upcoming(),
        ],
      );
    });
  }

  Row Item_now() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        InkWell(
            onTap: () {
              Get.toNamed(Routes.DETAIL_EVENT);
            },
            child: item_card_large()),
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            InkWell(
                onTap: () {
                  Get.toNamed(Routes.DETAIL_EVENT);
                },
                child: item_card_small()),
            SizedBox(
              height: 10.h,
            ),
            item_card_small(),
          ],
        )
      ],
    );
  }

  Row Item_upcoming() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Column(
          mainAxisAlignment: MainAxisAlignment.start,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            item_card_small(),
            SizedBox(
              height: 10.h,
            ),
            item_card_small(),
          ],
        ),
        item_card_large(),
      ],
    );
  }

  Row item_online() {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Flexible(
          child: Container(
            height: 210.h,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage('assets/images/home3.png'),
                    fit: BoxFit.cover),
                color: primaryColor1,
                borderRadius: BorderRadius.circular(11)),
            child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Container(
                    color: kWhite,
                    width: Get.width,
                    height: 45,
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Column(
                            mainAxisAlignment: MainAxisAlignment.center,
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Text(
                                "Masjid Agung malang",
                                style: semiBoldText12.copyWith(
                                    color: primaryColor2),
                              ),
                              Text(
                                "Masjid Agung malang",
                                style:
                                    mediumText9.copyWith(color: primaryColor2),
                              ),
                            ],
                          ),
                          Row(children: [
                            Image.asset(
                              "assets/images/home4.png",
                              width: 30.0,
                              height: 30.0,
                              fit: BoxFit.fill,
                            ),
                            SizedBox(width: 10),
                            Image.asset(
                              "assets/images/home5.png",
                              width: 30.0,
                              height: 30.0,
                              fit: BoxFit.fill,
                            ),
                            SizedBox(width: 10),
                            Image.asset(
                              "assets/images/home3.png",
                              width: 30.0,
                              height: 30.0,
                              fit: BoxFit.fill,
                            ),
                          ]),
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
          ),
        )
      ],
    );
  }
}
