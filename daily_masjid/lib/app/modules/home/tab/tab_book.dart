// ignore_for_file: camel_case_types, prefer_typing_uninitialized_variables

import 'package:daily_masjid/themes.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_staggered_grid_view/flutter_staggered_grid_view.dart';

import '../component/event_item_recent.dart';
import '../component/events_item.dart';

class TabBook extends StatelessWidget {
  const TabBook({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final TextEditingController _searchController = TextEditingController();

    bool cekGenap(int number) {
      if (number % 2 == 0) {
        return true;
      }
      return false;
    }

    Column item_title(title, select) {
      return Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(
            title,
            style: mediumText12.copyWith(
                color: select == 0 ? primaryColor2 : primaryColor3),
          ),
          Container(
            width: select == 0 ? 70 : 0,
            height: 3,
            decoration: BoxDecoration(
              color: primaryColor1,
              borderRadius: BorderRadius.circular(9),
            ),
          )
        ],
      );
    }

    return Scaffold(
      backgroundColor: kBg,
      appBar: AppBar(
        toolbarHeight: 22,
        elevation: 0,
        backgroundColor: kBg,
        // toolbarHeight: 100,
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
                child: Row(
                  children: [
                    InkWell(
                      onTap: () {
                        // controller.idSelect1(0);
                      },
                      child: item_title("This close event", 1),
                    ),
                    SizedBox(width: 20.w),
                    InkWell(
                      onTap: () {},
                      child: item_title("Events you like", 0),
                    ),
                    SizedBox(width: 20.w),
                    InkWell(
                      onTap: () {},
                      child: item_title("Events are save", 1),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 10),
              MasonryGridView.builder(
                shrinkWrap: true,
                physics: const ClampingScrollPhysics(),
                gridDelegate:
                    const SliverSimpleGridDelegateWithFixedCrossAxisCount(
                        crossAxisCount: 2),
                itemCount: 4,
                itemBuilder: (context, index) {
                  return events_item();
                },
              ),
              // const SizedBox(height: 10),
              Padding(
                padding: const EdgeInsets.all(8.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        Text("Recent event",
                            style: mediumText12.copyWith(color: primaryColor2)),
                      ],
                    ),
                    SizedBox(height: 10),
                    event_item_recent(),
                    SizedBox(height: 10),
                    event_item_recent()
                  ],
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
