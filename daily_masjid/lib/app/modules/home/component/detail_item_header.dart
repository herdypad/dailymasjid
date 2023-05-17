import 'package:flutter/cupertino.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:get/get.dart';

import '../../../../themes.dart';

class detail_item_header extends StatelessWidget {
  const detail_item_header({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
        padding: EdgeInsets.symmetric(horizontal: 23.h),
        child: Container(
          width: double.infinity,
          height: 200.h,
          decoration: BoxDecoration(
            image: DecorationImage(
                image: AssetImage('assets/images/home1.png'), fit: BoxFit.fill),
            borderRadius: BorderRadius.circular(3),
          ),
        ));
  }
}
