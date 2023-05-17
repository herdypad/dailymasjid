import 'package:get/get.dart';
// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:carousel_slider/carousel_slider.dart';
import 'package:daily_masjid/app/modules/home/controllers/branda_controller.dart';
import 'package:daily_masjid/app/routes/app_pages.dart';
import 'package:daily_masjid/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../component/browser_event.dart';
import '../component/browser_mosque.dart';
import '../component/movie_item_header.dart';

class TabBranda extends GetView<BrandaController> {
  const TabBranda({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List cards = [
      movie_item_header(),
      movie_item_header(),
      movie_item_header(),
    ];
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

    Widget cardInfo() {
      int index = -1;
      return Column(
        children: [
          CarouselSlider(
            items: cards
                .map<Widget>((card) => Container(
                      child: card,
                    ))
                .toList(),
            options: CarouselOptions(
              viewportFraction: 1,
              height: 333,
              enableInfiniteScroll: false,
              initialPage: 0,
              onPageChanged: (index, reason) {
                currentIndex = index;
              },
            ),
          ),
          SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: cards.map((e) {
              index += 1;
              return indicator(index);
            }).toList(),
          )
        ],
      );
    }

    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 22.h,
        backgroundColor: kBg,
        shadowColor: kBg,
        elevation: 0,
      ),
      backgroundColor: kBg,
      body: SingleChildScrollView(
          child: SafeArea(
              child: Padding(
        padding: EdgeInsets.only(top: 0, left: 15.sp, right: 14.sp),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              "What’s happening in",
              style: mediumText14.copyWith(color: primaryColor2),
            ),
            SizedBox(height: 8.h),
            Row(mainAxisAlignment: MainAxisAlignment.spaceBetween, children: [
              Container(
                width: 270.w,
                height: 35.h,
                decoration: BoxDecoration(
                    color: kWhite, borderRadius: BorderRadius.circular(9)),
                child: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(children: [
                          Image.asset("assets/icons/ic_mark.png"),
                          SizedBox(width: 9.w),
                          Text(
                            "Petamburan Jakarta..",
                            style: mediumText11.copyWith(color: primaryColor3),
                          ),
                        ]),
                        Row(
                          children: [
                            Container(
                              width: 0.5,
                              color: Colors.black,
                            ),
                            SizedBox(width: 9),
                            Image.asset(
                              'assets/icons/ic_arrow_bottom.png',
                              width: 12,
                            )
                          ],
                        )
                      ]),
                ),
              ),
              InkWell(
                onTap: () {},
                child: Ink(
                  width: 41.w,
                  height: 35.h,
                  decoration: BoxDecoration(
                      color: kWhite, borderRadius: BorderRadius.circular(9)),
                  child: Padding(
                    padding: const EdgeInsets.all(6.0),
                    child: Image.asset(
                      'assets/icons/icon_bell.png',
                      width: 21,
                      height: 22,
                    ),
                  ),
                ),
              )
            ]),
            SizedBox(height: 23.h),
            CarouselSlider(
              options: CarouselOptions(
                viewportFraction: 1,
                enableInfiniteScroll: false,
                initialPage: 0,
              ),
              items: [1, 2, 3, 4, 5].map((i) {
                return movie_item_header();
              }).toList(),
            ),
            SizedBox(height: 17.h),
            Center(
                child:
                    Row(mainAxisAlignment: MainAxisAlignment.center, children: [
              indicator(1),
              indicator(0),
              indicator(0),
            ])),
            SizedBox(height: 17),
            browser_event(),
            browser_mosque(),
            SizedBox(height: 17),
            Text("Untuk Coba Screen Aja"),
            Row(mainAxisAlignment: MainAxisAlignment.spaceEvenly, children: [
              ElevatedButton(
                style: ElevatedButton.styleFrom(
                  backgroundColor: Colors.blueGrey,
                  shape: ContinuousRectangleBorder(
                    borderRadius: BorderRadius.circular(64.0),
                  ),
                ),
                onPressed: () {
                  Get.toNamed(Routes.DETAIL_EVENT);
                },
                child: const Text("Detail event"),
              ),
              Row(children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueGrey,
                    shape: ContinuousRectangleBorder(
                      borderRadius: BorderRadius.circular(64.0),
                    ),
                  ),
                  onPressed: () {
                    Get.toNamed(Routes.DETAIL_MASJID);
                  },
                  child: const Text("Detail Masjid"),
                ),
              ]),
              Row(children: [
                ElevatedButton(
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.blueGrey,
                    shape: ContinuousRectangleBorder(
                      borderRadius: BorderRadius.circular(64.0),
                    ),
                  ),
                  onPressed: () {
                    Get.toNamed(Routes.REGITER_EVENT);
                  },
                  child: const Text("Register"),
                ),
              ]),
            ]),
          ],
        ),
      ))),
    );
  }
}
