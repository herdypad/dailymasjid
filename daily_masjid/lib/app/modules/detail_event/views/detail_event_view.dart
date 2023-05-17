import 'package:get/get.dart';
import 'package:daily_masjid/app/modules/detail_event/component/detail_item_location.dart';
import 'package:daily_masjid/app/modules/home/component/detail_item_header.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../../../../themes.dart';
import '../../../../widgets/show_dialog.dart';
import '../component/btn_tag.dart';
import '../component/detail_item_date.dart';
import '../controllers/detail_event_controller.dart';

class DetailEventView extends GetView<DetailEventController> {
  const DetailEventView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    int currentIndex = 1;
    Widget indicator(int index) {
      return Container(
        width: currentIndex == index ? 18.w : 5.w,
        height: 5.h,
        margin: EdgeInsets.symmetric(horizontal: 2),
        decoration: BoxDecoration(
            color: currentIndex == index
                ? primaryColor2
                : primaryColor2.withOpacity(0.7),
            borderRadius: BorderRadius.circular(4)),
      );
    }

    return Obx(() {
      return Scaffold(
          appBar: AppBar(
            backgroundColor: kBg,
            shadowColor: kBg,
            elevation: 0,
            iconTheme: IconThemeData(color: primaryColor2),
            actions: <Widget>[
              InkWell(
                child: Padding(
                  padding: const EdgeInsets.all(18.0),
                  child: Image.asset(
                    'assets/icons/menu2.png',
                    width: 21,
                    height: 22,
                  ),
                ),
              ),
            ],
          ),
          backgroundColor: kBg,
          body: SingleChildScrollView(
            scrollDirection: Axis.vertical,
            child: Column(
              children: [
                detail_item_header(),
                SizedBox(height: 17.h),
                Center(
                    child: Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: [
                      indicator(1),
                      indicator(0),
                      indicator(0),
                    ])),
                SizedBox(height: 11.h),
                Container(
                  width: double.infinity,
                  decoration: BoxDecoration(
                    color: primaryColor2,
                    borderRadius: BorderRadius.only(
                      topLeft: Radius.circular(34),
                      topRight: Radius.circular(34),
                    ),
                  ),
                  child: Column(children: [
                    SizedBox(height: 23.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: [
                        Row(
                          children: [
                            Container(
                              width: 44.w,
                              height: 44.h,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image:
                                          AssetImage('assets/images/home1.png'),
                                      fit: BoxFit.cover),
                                  color: kWhite,
                                  borderRadius: BorderRadius.circular(6)),
                            ),
                            SizedBox(width: 9),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Romadhon event",
                                  style: mediumText14.copyWith(
                                      fontSize: 14.sp, color: kWhite),
                                ),
                                Text(
                                  "Masjid al-quds",
                                  style: mediumText11.copyWith(color: kWhite),
                                ),
                              ],
                            ),
                          ],
                        ),
                        Row(
                          children: [
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: primaryColor1,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 5, vertical: 5),
                                child: Icon(
                                  Icons.favorite_border,
                                  size: 24.0,
                                  color: kWhite,
                                ),
                              ),
                            ),
                            SizedBox(width: 9),
                            Container(
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(5),
                                color: primaryColor1,
                              ),
                              child: Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 5, vertical: 5),
                                child: Icon(
                                  Icons.person_add_outlined,
                                  size: 24.0,
                                  color: kWhite,
                                ),
                              ),
                            ),
                          ],
                        ),
                      ],
                    ),
                    SizedBox(height: 26.h),
                    Container(
                      width: double.infinity,
                      decoration: BoxDecoration(
                          color: kWhite,
                          borderRadius: BorderRadius.only(
                            topLeft: Radius.circular(34),
                            topRight: Radius.circular(34),
                          )),
                      child: Padding(
                        padding: const EdgeInsets.symmetric(horizontal: 29),
                        child: Column(
                          children: [
                            SizedBox(height: 13.h),
                            Container(height: 3.h, width: 150.w, color: kGrey),
                            SizedBox(height: 13.h),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Text("Buka Bersama",
                                    style: mediumText14.copyWith(
                                        fontSize: 14.sp, color: primaryColor2)),
                                Container(
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(14),
                                    color: primaryColor1,
                                  ),
                                  child: Padding(
                                    padding: EdgeInsets.symmetric(
                                        horizontal: 30.w, vertical: 5),
                                    child: Text(
                                      "Free",
                                      style: mediumText10.copyWith(
                                          fontSize: 10, color: kWhite),
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 13.h),
                            Text(
                                "Grilya adalah website jual beli baju dan aksesoris untuk perempuan yang di design dengan konsep modern dan juga elgant. terdepat banyak fiture yang di sediakan di grilya.co dengan mempermudah anda untuk berjualan fashion  yang trendy Load more",
                                style: mediumText10.copyWith(
                                    fontSize: 9.sp, color: primaryColor2)),
                            SizedBox(height: 13.h),
                            Row(
                              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                              children: [
                                Expanded(
                                  child: Container(
                                    height: 40.h,
                                    decoration: BoxDecoration(
                                      borderRadius: BorderRadius.circular(5),
                                      color: controller.statusDate.value == 0
                                          ? primaryColor2
                                          : null,
                                    ),
                                    child: OutlinedButton.icon(
                                      icon: Icon(
                                        Icons.date_range_rounded,
                                        size: 14.sp,
                                      ),
                                      label: Text(
                                        "Date & Time",
                                        style: mediumText11.copyWith(
                                            color:
                                                controller.statusDate.value == 0
                                                    ? kWhite
                                                    : primaryColor2),
                                      ),
                                      style: OutlinedButton.styleFrom(
                                        foregroundColor: kWhite,
                                        side: BorderSide(
                                          color: primaryColor2,
                                        ),
                                      ),
                                      onPressed: () {
                                        controller.statusDate(0);
                                        controller.statusLocation(1);
                                      },
                                    ),
                                  ),
                                ),
                                SizedBox(width: 10),
                                Container(
                                  height: 40.h,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(5),
                                    color: controller.statusLocation.value == 0
                                        ? primaryColor2
                                        : null,
                                  ),
                                  child: OutlinedButton.icon(
                                    icon: Icon(
                                      Icons.place_rounded,
                                      size: 14.sp,
                                    ),
                                    label: Text(
                                      "Location",
                                      style: mediumText11.copyWith(
                                          color:
                                              controller.statusLocation.value ==
                                                      0
                                                  ? kWhite
                                                  : primaryColor2),
                                    ),
                                    style: OutlinedButton.styleFrom(
                                      foregroundColor: primaryColor2,
                                      side: BorderSide(
                                        color: primaryColor2,
                                      ),
                                    ),
                                    onPressed: () {
                                      controller.statusDate(1);
                                      controller.statusLocation(0);
                                    },
                                  ),
                                ),
                              ],
                            ),
                            SizedBox(height: 13.h),
                            controller.statusDate.value == 0
                                ? detail_item_date()
                                : detail_item_location(),
                            SizedBox(height: 13.h),
                            Container(
                              child: Column(children: [
                                SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  controller: ScrollController(),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      btn_tag(title: "Romadhon"),
                                      btn_tag(title: "Free events"),
                                      btn_tag(title: "free"),
                                      btn_tag(title: "MY"),
                                    ],
                                  ),
                                )
                              ]),
                            ),
                            SizedBox(height: 13.h),
                            Container(
                              child: Column(children: [
                                SingleChildScrollView(
                                  scrollDirection: Axis.horizontal,
                                  controller: ScrollController(),
                                  child: Row(
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    crossAxisAlignment:
                                        CrossAxisAlignment.start,
                                    children: [
                                      btn_tag(
                                          title: "Malaysian event ramadhan"),
                                      btn_tag(title: "12"),
                                      btn_tag(title: "offline stage"),
                                    ],
                                  ),
                                )
                              ]),
                            ),
                            SizedBox(height: 13.h),
                            InkWell(
                              onTap: () {
                                showPopUpInfo(
                                  title: 'Congratulation',
                                  description:
                                      'you have successfully registered \n Check your Event on notification',
                                  onPress: () {
                                    Get
                                      ..back()
                                      ..back();
                                  },
                                );
                              },
                              child: Container(
                                width: Get.width,
                                decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(14),
                                  color: primaryColor2,
                                ),
                                child: Padding(
                                  padding: EdgeInsets.symmetric(
                                      horizontal: 30.w, vertical: 9),
                                  child: Center(
                                    child: Text(
                                      "Register",
                                      style:
                                          mediumText14.copyWith(color: kWhite),
                                    ),
                                  ),
                                ),
                              ),
                            ),
                            SizedBox(height: 15.h),
                          ],
                        ),
                      ),
                    )
                  ]),
                )
              ],
            ),
          ));
    });
  }
}
