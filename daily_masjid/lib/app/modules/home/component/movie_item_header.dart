import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:get/get.dart';

import '../../../../themes.dart';
import '../../../routes/app_pages.dart';

class movie_item_header extends StatelessWidget {
  const movie_item_header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    List cards = [];

    int currentIndex = 1;

    return Container(
        width: MediaQuery.of(context).size.width,
        height: 168,
        decoration: BoxDecoration(
          image: DecorationImage(
              image: AssetImage('assets/images/home1.png'), fit: BoxFit.fill),
          borderRadius: BorderRadius.circular(12),
        ),
        child: Padding(
          padding: const EdgeInsets.all(8.0),
          child: Column(
            children: [
              SizedBox(height: 9),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: primaryColor2.withOpacity(0.25),
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 14, vertical: 6),
                      child: Text(
                        "Limited Quota",
                        style:
                            mediumText10.copyWith(fontSize: 10, color: kWhite),
                      ),
                    ),
                  ),
                  Container(
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(5),
                      color: btnRed,
                    ),
                    child: Padding(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 14, vertical: 5),
                      child: Text(
                        "free",
                        style:
                            mediumText10.copyWith(fontSize: 10, color: kWhite),
                      ),
                    ),
                  ),
                ],
              ),
              SizedBox(height: 9),
              Center(
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      Text("13 November 2020",
                          style: mediumText10.copyWith(
                              fontSize: 10, color: kWhite)),
                      Text("Pengajian kitab kuning",
                          style: semiBoldText24.copyWith(color: kWhite)),
                      Text("Masjid Agung malang",
                          style: mediumText10.copyWith(
                              fontSize: 10, color: kWhite)),
                      SizedBox(height: 7),
                      InkWell(
                        onTap: () {
                          Get.toNamed(Routes.DETAIL_EVENT);
                        },
                        child: Container(
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(5),
                            color: primaryColor1,
                          ),
                          child: Padding(
                            padding: const EdgeInsets.symmetric(
                                horizontal: 14, vertical: 5),
                            child: Text(
                              "Register now",
                              style: mediumText10.copyWith(
                                  fontSize: 10, color: kWhite),
                            ),
                          ),
                        ),
                      ),
                    ]),
              )
            ],
          ),
        ));
  }
}
