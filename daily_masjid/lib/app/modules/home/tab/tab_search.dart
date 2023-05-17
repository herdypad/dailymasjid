// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:daily_masjid/app/modules/home/controllers/search_controller.dart';
import 'package:daily_masjid/app/routes/app_pages.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';
import 'package:get/get.dart';

import '../../../../themes.dart';

class TabSearch extends GetView<SearchController> {
  const TabSearch({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController _searchController = TextEditingController();

    bool cekGenap(int number) {
      if (number % 2 == 0) {
        return true;
      }
      return false;
    }

    Row button_item(title) {
      return Row(
        children: [
          InkWell(
            onTap: () {},
            child: Ink(
              decoration: BoxDecoration(
                  color: kWhite, borderRadius: BorderRadius.circular(7)),
              child: Padding(
                padding:
                    const EdgeInsets.symmetric(horizontal: 25, vertical: 7),
                child: Text(title,
                    style: mediumText12.copyWith(color: primaryColor2)),
              ),
            ),
          ),
        ],
      );
    }

    return Scaffold(
      backgroundColor: kBg,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: kBg,
        // toolbarHeight: 100,

        title: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text("Browse",
                  style: mediumText24.copyWith(color: primaryColor2)),
              InkWell(
                  onTap: () {
                    // Get.toNamed(Routes.REGITER_EVENT);
                  },
                  hoverColor: primaryColor3,
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
                  ))
            ],
          ),
        ),
        actions: <Widget>[],
      ),
      body: SingleChildScrollView(
        child: Container(
          padding: const EdgeInsets.all(10.0),
          child: Column(
            children: [
              Container(
                height: 37,
                width: double.infinity,
                decoration: BoxDecoration(
                    color: kWhite, borderRadius: BorderRadius.circular(7)),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.start,
                  children: [
                    SizedBox(width: 9.h),
                    Icon(
                      Icons.search,
                      color: primaryColor3,
                    ),
                    SizedBox(width: 9.h),
                    Flexible(
                      child: TextField(
                        controller: _searchController,
                        decoration: InputDecoration(
                            hintText: "Event,mosque...",
                            border: InputBorder.none,
                            hintStyle: mediumText12,
                            labelStyle: mediumText12),
                      ),
                    ),
                  ],
                ),
              ),
              SizedBox(height: 21.h),
              SingleChildScrollView(
                scrollDirection: Axis.horizontal,
                child: Row(children: [
                  button_item("Mosque"),
                  const SizedBox(width: 12),
                  button_item("Offline event"),
                  const SizedBox(width: 12),
                  button_item("Online event"),
                ]),
              ),
              const SizedBox(height: 10),
              MasonryGridView.builder(
                shrinkWrap: true,
                physics: const ClampingScrollPhysics(),
                gridDelegate:
                    const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2),
                itemCount: 9,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: const EdgeInsets.all(10),
                    child: ClipRRect(
                        borderRadius: BorderRadius.circular(10),
                        child: Container(
                          height: cekGenap(index) ? 223.h : 152.h,
                          decoration: BoxDecoration(
                              image: const DecorationImage(
                                  image: AssetImage('assets/images/home0.png'),
                                  fit: BoxFit.fitHeight),
                              color: primaryColor2,
                              borderRadius: BorderRadius.circular(9)),
                          child: Padding(
                            padding: const EdgeInsets.all(8.0),
                            child: InkWell(
                              child: Ink(
                                child: Row(
                                    crossAxisAlignment: CrossAxisAlignment.end,
                                    mainAxisAlignment:
                                        MainAxisAlignment.spaceEvenly,
                                    children: [
                                      Text(
                                        "Masjid Baiturahman",
                                        style:
                                            mediumText9.copyWith(color: kWhite),
                                      ),
                                      Image.asset(
                                        "assets/icons/ic_love.png",
                                        width: 11.0,
                                        height: 11.0,
                                        color: kWhite,
                                        fit: BoxFit.fill,
                                      ),
                                      Image.asset(
                                        "assets/icons/ic_add.png",
                                        width: 11.0,
                                        height: 11.0,
                                        color: kWhite,
                                        fit: BoxFit.fill,
                                      ),
                                    ]),
                              ),
                            ),
                          ),
                        )),
                  );
                },
              ),
            ],
          ),
        ),
      ),
    );
  }
}

const List<String> images = [
  'assets/images/home1.png',
  'assets/images/home2.png',
  'assets/images/home3.png',
  'assets/images/home4.png',
  'assets/images/home5.png',
];
