import 'package:daily_masjid/themes.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';
import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';

import '../../../../widgets/show_dialog.dart';
import '../controllers/regiter_event_controller.dart';

class RegiterEventView extends GetView<RegiterEventController> {
  const RegiterEventView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
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
          body: !controller.isLoad.value
              ? SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Padding(
                    padding: const EdgeInsets.symmetric(
                        horizontal: 20, vertical: 22),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.start,
                      children: [
                        Row(
                          children: [
                            Container(
                              height: 70,
                              width: 97.w,
                              decoration: BoxDecoration(
                                  image: DecorationImage(
                                      image:
                                          AssetImage('assets/images/home1.png'),
                                      fit: BoxFit.cover),
                                  color: kWhite,
                                  borderRadius: BorderRadius.circular(6)),
                            ),
                            SizedBox(width: 20.w),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              mainAxisAlignment: MainAxisAlignment.start,
                              children: [
                                Text(
                                  "BUKA BERSAMA",
                                  style: mediumText12.copyWith(
                                      fontSize: 24.sp, color: primaryColor2),
                                ),
                                Text(
                                  "Masjid al-quds",
                                  style: mediumText14.copyWith(
                                      color: primaryColor2),
                                ),
                                Text(
                                  "Rp.12.000",
                                  style: mediumText14.copyWith(
                                      fontSize: 18, color: primaryColor1),
                                ),
                              ],
                            ),
                          ],
                        ),
                        SizedBox(height: 40.w),
                        //inputan 1
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Full name",
                              style:
                                  semiBoldText16.copyWith(color: primaryColor2),
                            ),
                            const SizedBox(height: 7),
                            Container(
                              height: 50.h,
                              decoration: BoxDecoration(
                                  color: kWhite,
                                  borderRadius: BorderRadius.circular(5)),
                              child: Padding(
                                padding: EdgeInsets.all(1.0),
                                child: TextField(
                                  style: mediumText12.copyWith(
                                      fontSize: 20.sp, color: primaryColor2),
                                  decoration: InputDecoration(
                                      border: InputBorder.none, hintText: '  '),
                                ),
                              ),
                            ),
                            SizedBox(height: 10.w),
                            Text(
                              "Email",
                              style:
                                  semiBoldText16.copyWith(color: primaryColor2),
                            ),
                            const SizedBox(height: 7),
                            Container(
                              height: 50.h,
                              decoration: BoxDecoration(
                                  color: kWhite,
                                  borderRadius: BorderRadius.circular(5)),
                              child: Padding(
                                padding: EdgeInsets.all(1.0),
                                child: TextField(
                                  style: mediumText12.copyWith(
                                      fontSize: 20.sp, color: primaryColor2),
                                  decoration: InputDecoration(
                                      border: InputBorder.none, hintText: '  '),
                                ),
                              ),
                            ),
                          ],
                        ),
                        SizedBox(height: 20.w),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            Container(
                              height: 60.h,
                              width: 80.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/icons/ic_label1.png'),
                                    fit: BoxFit.fill),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      "Discount \n40%",
                                      style: mediumText14.copyWith(
                                          fontSize: 12.sp, color: kWhite),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 60.h,
                              width: 80.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/icons/ic_label1.png'),
                                    fit: BoxFit.fill),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.start,
                                children: [
                                  Padding(
                                    padding: const EdgeInsets.all(8.0),
                                    child: Text(
                                      "Free \npetrol",
                                      style: mediumText14.copyWith(
                                          fontSize: 12.sp, color: kWhite),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                            Container(
                              height: 65.h,
                              width: 60.w,
                              decoration: BoxDecoration(
                                borderRadius: BorderRadius.circular(6),
                                image: DecorationImage(
                                    image: AssetImage(
                                        'assets/icons/ic_add_vocher.png'),
                                    fit: BoxFit.cover),
                              ),
                              child: Row(
                                mainAxisAlignment: MainAxisAlignment.center,
                              ),
                            ),
                            Column(
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  "Total price",
                                  style: mediumText14.copyWith(
                                      fontSize: 12.sp, color: primaryColor2),
                                ),
                                Text(
                                  "Rp.10.000",
                                  style: semiBoldText14.copyWith(
                                      fontSize: 16.sp, color: primaryColor2),
                                ),
                              ],
                            )
                          ],
                        ),
                        SizedBox(height: 20.w),
                        Row(
                          mainAxisAlignment: MainAxisAlignment.spaceBetween,
                          children: [
                            pay_mothod('ic_cek_positif.png', "Credit card"),
                            pay_mothod('ic_cek_negatif.png', "OVO/GOPAY"),
                            pay_mothod('ic_cek_negatif.png', "Phone credit")
                          ],
                        ),
                        SizedBox(height: 20.w),
                        Container(
                          color: primaryColor2,
                          height: 2,
                          width: Get.width,
                        ),

                        //inputan 1
                        SizedBox(height: 20),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              "Card number",
                              style:
                                  mediumText14.copyWith(color: primaryColor2),
                            ),
                            const SizedBox(height: 7),
                            Container(
                              height: 50.h,
                              decoration: BoxDecoration(
                                  color: kWhite,
                                  borderRadius: BorderRadius.circular(5)),
                              child: Padding(
                                padding: EdgeInsets.all(1.0),
                                child: TextField(
                                  style: mediumText14.copyWith(
                                      color: primaryColor2),
                                  decoration: InputDecoration(
                                      border: InputBorder.none, hintText: '  '),
                                ),
                              ),
                            ),
                            SizedBox(height: 10.w),
                            Text(
                              "Name on card",
                              style:
                                  mediumText14.copyWith(color: primaryColor2),
                            ),
                            const SizedBox(height: 7),
                            Container(
                              height: 50.h,
                              decoration: BoxDecoration(
                                  color: kWhite,
                                  borderRadius: BorderRadius.circular(5)),
                              child: Padding(
                                padding: EdgeInsets.all(1.0),
                                child: TextField(
                                  style: mediumText12.copyWith(
                                      color: primaryColor2),
                                  decoration: InputDecoration(
                                      border: InputBorder.none, hintText: '  '),
                                ),
                              ),
                            ),
                            const SizedBox(height: 20),
                            Row(
                              children: [
                                Expanded(
                                  child: Container(
                                    width: 100,
                                    height: 40.h,
                                    decoration: BoxDecoration(
                                        color: kWhite,
                                        borderRadius: BorderRadius.circular(5)),
                                    child: Padding(
                                        padding: EdgeInsets.all(1.0),
                                        child: Row(
                                          mainAxisAlignment:
                                              MainAxisAlignment.spaceEvenly,
                                          children: [
                                            Text(
                                              "13 october,2020",
                                              style: mediumText12,
                                            ),
                                            Icon(
                                              Icons.calendar_month,
                                              size: 24.0,
                                            ),
                                          ],
                                        )),
                                  ),
                                ),
                                const SizedBox(width: 7),
                                Container(
                                  width: 90,
                                  height: 40.h,
                                  decoration: BoxDecoration(
                                      color: kWhite,
                                      borderRadius: BorderRadius.circular(5)),
                                  child: Center(
                                    child: Padding(
                                        padding: EdgeInsets.all(1.0),
                                        child: Text(
                                          "CVC",
                                          style: semiBoldText14,
                                        )),
                                  ),
                                ),
                              ],
                            ),
                            const SizedBox(height: 20),
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
                          ],
                        ),
                      ],
                    ),
                  ),
                )
              : Container(child: CircularProgressIndicator()));
    });
  }

  Column pay_mothod(icIcon, title) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Container(
          height: 30.h,
          width: 30.w,
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(6),
            image: DecorationImage(
                image: AssetImage('assets/icons/$icIcon'), fit: BoxFit.fill),
          ),
        ),
        SizedBox(height: 5.w),
        Text(
          title,
          style: semiBoldText14.copyWith(color: primaryColor2),
        ),

        //sizebox
        SizedBox(width: 7),
      ],
    );
  }
}
