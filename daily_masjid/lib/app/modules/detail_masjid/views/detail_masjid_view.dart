import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import 'package:get/get.dart';

import '../../../../themes.dart';
import '../controllers/detail_masjid_controller.dart';

class DetailMasjidView extends GetView<DetailMasjidController> {
  const DetailMasjidView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        toolbarHeight: 0.h,
        backgroundColor: Colors.transparent,
        shadowColor: kBg,
        elevation: 0,
        iconTheme: IconThemeData(color: primaryColor2),
        actions: <Widget>[],
      ),
      body: SingleChildScrollView(
        scrollDirection: Axis.vertical,
        controller: ScrollController(),
        child: Column(
          children: [
            Stack(children: [
              Container(
                height: 345.h,
                width: Get.width,
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(0),
                  image: DecorationImage(
                      image: AssetImage('assets/images/home7.png'),
                      fit: BoxFit.fill),
                ),
              ),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  InkWell(
                    onTap: () {
                      Get.back();
                    },
                    child: Padding(
                      padding: EdgeInsets.all(18.0),
                      child: Icon(
                        Icons.arrow_back,
                        size: 24.0,
                      ),
                    ),
                  ),
                  InkWell(
                    onTap: () {},
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
            ]),
            SizedBox(height: 23.h),
            Padding(
              padding: const EdgeInsets.all(15.0),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text(
                              'Masjid al-quds',
                              style: mediumText24,
                            ),
                            Row(
                              children: [
                                const Icon(
                                  Icons.place_rounded,
                                  size: 17.0,
                                ),
                                Text(
                                  'Jln jendral sudirman , Malang',
                                  style: mediumText12,
                                ),
                              ],
                            )
                          ],
                        ),
                        Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9),
                            color: primaryColor1,
                          ),
                          child: Padding(
                            padding: EdgeInsets.symmetric(
                                horizontal: 30.w, vertical: 10),
                            child: Text(
                              "Chat now",
                              style: mediumText12.copyWith(
                                  fontSize: 10, color: kWhite),
                            ),
                          ),
                        ),
                      ]),
                  SizedBox(height: 9.h),
                  Text(
                    "Grilya adalah website jual beli baju dan aksesoris untuk perempuan yang di design dengan konsep modern dan juga elgant. terdepat banyak fiture yang di sediakan di grilya.co dengan mempermudah anda untuk berjualan fashion  yang trendy Load more",
                    style: mediumText11.copyWith(
                        color: primaryColor2.withOpacity(0.4)),
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceAround,
                    children: [
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(9),
                          color: kWhite,
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10.w, vertical: 10),
                          child: Row(
                            children: [
                              Icon(
                                Icons.email,
                                size: 16.0,
                                color: primaryColor3,
                              ),
                              Text(
                                " masjidexemples@gmail.comw",
                                style: mediumText12.copyWith(
                                    fontSize: 10, color: primaryColor3),
                              ),
                            ],
                          ),
                        ),
                      ),
                      Container(
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(9),
                          color: kWhite,
                        ),
                        child: Padding(
                          padding: EdgeInsets.symmetric(
                              horizontal: 10.w, vertical: 10),
                          child: Row(
                            children: [
                              Icon(
                                Icons.call,
                                size: 16.0,
                                color: primaryColor3,
                              ),
                              Text(
                                " 60897876654",
                                style: mediumText12.copyWith(
                                    fontSize: 10, color: primaryColor3),
                              ),
                            ],
                          ),
                        ),
                      ),
                    ],
                  ),
                  SizedBox(height: 9.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: [
                      button1("Facilities", 1),
                      button1("Weekly event", 0),
                      button1("Jadwal imam", 0),
                    ],
                  ),
                  SizedBox(height: 15.h),
                  //fasilitas
                  Row(
                    children: [
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          title_1("Lapangan parkir",
                              "assets/icons/ic_car_parking.png"),
                          SizedBox(height: 11),
                          title_1("Ruangan meeting",
                              "assets/icons/ic_conference-hall.png"),
                        ],
                      ),
                      SizedBox(width: 25),
                      Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          title_1("Kamar mandi ", "assets/icons/ic_bath.png"),
                          SizedBox(height: 11),
                          title_1("Toilet", "assets/icons/ic_toilet.png"),
                        ],
                      ),
                    ],
                  ),
                  SizedBox(height: 15.h),
                  //recent
                  Text(
                    "Recent mosque",
                    style: mediumText14.copyWith(color: primaryColor2),
                  ),
                  SizedBox(height: 15.h),
                  SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    controller: ScrollController(),
                    child: Row(
                      children: [
                        Container(
                          width: 128,
                          height: 137,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9),
                            image: DecorationImage(
                                image: AssetImage('assets/images/home0.png'),
                                fit: BoxFit.cover),
                            color: primaryColor1,
                          ),
                        ),
                        SizedBox(width: 11),
                        Container(
                          width: 128,
                          height: 137,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9),
                            image: DecorationImage(
                                image: AssetImage('assets/images/home7.png'),
                                fit: BoxFit.cover),
                            color: primaryColor1,
                          ),
                        ),
                        SizedBox(width: 11),
                        Container(
                          width: 128,
                          height: 137,
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(9),
                            image: DecorationImage(
                                image: AssetImage('assets/images/home4.png'),
                                fit: BoxFit.cover),
                            color: primaryColor1,
                          ),
                        )
                      ],
                    ),
                  )
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }

  Column title_1(title, icon) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Row(
          children: [
            Image.asset(
              icon,
              width: 19.0,
              height: 19.0,
              fit: BoxFit.fill,
            ),
            SizedBox(width: 5),
            Text(
              title,
              style: mediumText9.copyWith(color: primaryColor2),
            ),
          ],
        )
      ],
    );
  }

  Container button1(title, status) {
    return Container(
      decoration: BoxDecoration(
        border: Border.all(
          color: primaryColor2, //color of border
          width: 1, //width of border
        ),
        borderRadius: BorderRadius.circular(9),
        color: status == 1 ? primaryColor2 : kWhite,
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 20.w, vertical: 7),
        child: Text(
          title,
          style: mediumText12.copyWith(
            fontSize: 10,
            color: status != 1 ? primaryColor2 : kWhite,
          ),
        ),
      ),
    );
  }
}
