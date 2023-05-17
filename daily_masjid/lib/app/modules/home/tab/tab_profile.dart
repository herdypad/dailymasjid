// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../themes.dart';

class TabProfile extends StatelessWidget {
  const TabProfile({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Padding item_menu_profile(
      icon1,
      title,
      icon2,
    ) {
      return Padding(
        padding: const EdgeInsets.symmetric(horizontal: 15),
        child: Container(
          decoration: BoxDecoration(
              color: kItemProfile, borderRadius: BorderRadius.circular(9)),
          child: Center(
            child: Padding(
              padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 20),
              child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(children: [
                      SizedBox(width: 9.w),
                      Image.asset(
                        icon1,
                        width: 23.w,
                        height: 23.w,
                        color: kGrey,
                      ),
                      SizedBox(width: 9.w),
                      Text(
                        title,
                        style: mediumText12.copyWith(color: kGrey),
                      )
                    ]),
                    Image.asset(
                      icon2,
                      width: 23,
                      height: 23,
                      color: kGrey,
                    ),
                  ]),
            ),
          ),
        ),
      );
    }

    return Scaffold(
      backgroundColor: kBg,
      appBar: AppBar(
        toolbarHeight: 0,
        elevation: 0,
        backgroundColor: primaryColor1,
        title: const Text("TabProfile"),
        actions: const [],
      ),
      body: SingleChildScrollView(
        child: Container(
          child: Stack(
            children: [
              Container(
                width: double.infinity,
                height: 280.h,
                decoration: BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage('assets/images/bg_profile.png'),
                      fit: BoxFit.cover),
                  color: primaryColor1,
                ),
              ),
              Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    SizedBox(height: 70.h),
                    Image.asset(
                      'assets/icons/ic_foto.png',
                      width: 76.w,
                    ),
                    SizedBox(height: 20.h),
                    Stack(
                      children: [
                        Column(
                          children: [
                            SizedBox(height: 50.h),
                            //box white
                            Container(
                              width: Get.width,
                              decoration: BoxDecoration(
                                  color: kWhite,
                                  borderRadius: BorderRadius.circular(27)),
                              child: Column(children: [
                                SizedBox(height: 80.h),
                                Text(
                                  "Nurul sayfudin",
                                  style: semiBoldText16,
                                ),
                                Text("Online", style: mediumText10),
                                SizedBox(height: 12.h),
                                item_menu_profile(
                                    "assets/icons/settings-outline.png",
                                    "Account setting",
                                    'assets/icons/arrow1.png'),
                                SizedBox(height: 12.h),
                                item_menu_profile(
                                    "assets/icons/ic_refresh-sharp.png",
                                    "Recent activity",
                                    'assets/icons/arrow1.png'),
                                SizedBox(height: 12.h),
                                item_menu_profile(
                                    "assets/icons/ic_share-outline.png",
                                    "Share with friend",
                                    'assets/icons/arrow1.png'),
                                SizedBox(height: 12.h),
                                item_menu_profile(
                                    "assets/icons/ic_information-circle-outline.png",
                                    "Information",
                                    'assets/icons/arrow1.png'),
                                SizedBox(height: 22.h),
                              ]),
                            ),
                          ],
                        ),
                        Center(
                          child: Container(
                            padding: EdgeInsets.all(10.0),
                            width: 120.w,
                            height: 120.h,
                            decoration: BoxDecoration(
                              border: Border.all(color: Colors.white, width: 5),
                              shape: BoxShape.circle,
                              color: Colors.white,
                              image: DecorationImage(
                                fit: BoxFit.cover,
                                image: AssetImage('assets/images/profile.png'),
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                    Column(
                      children: [
                        SizedBox(height: 31.h),
                        Container(
                          height: 100,
                          width: Get.width,
                          decoration: BoxDecoration(
                              color: kWhite,
                              borderRadius: BorderRadius.circular(27)),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(horizontal: 22),
                            child: Column(
                                mainAxisAlignment: MainAxisAlignment.center,
                                children: [
                                  Text(
                                    "Change account",
                                    style: mediumText12.copyWith(
                                        color: primaryColor3),
                                  ),
                                  Divider(
                                    color: kGrey,
                                  ),
                                  Text(
                                    "Logout",
                                    style: mediumText12.copyWith(
                                        color: primaryColor3),
                                  ),
                                ]),
                          ),
                        )
                      ],
                    )
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }

  Padding item_menu_profile() {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 15),
      child: Container(
        decoration: BoxDecoration(
            color: kItemProfile, borderRadius: BorderRadius.circular(9)),
        child: Center(
          child: Padding(
            padding: const EdgeInsets.symmetric(horizontal: 22, vertical: 20),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Row(children: [
                    SizedBox(width: 9.w),
                    Image.asset(
                      'assets/icons/settings-outline.png',
                      width: 23.w,
                      height: 23.w,
                      color: kGrey,
                    ),
                    SizedBox(width: 9.w),
                    Text(
                      "Account setting",
                      style: mediumText12.copyWith(color: kGrey),
                    )
                  ]),
                  Image.asset(
                    'assets/icons/arrow1.png',
                    width: 23,
                    height: 23,
                    color: kGrey,
                  ),
                ]),
          ),
        ),
      ),
    );
  }
}
