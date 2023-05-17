import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../themes.dart';

class btn_tag extends StatelessWidget {
  const btn_tag({
    super.key,
    required this.title,
  });
  final title;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.only(
              topLeft: Radius.circular(6),
              topRight: Radius.circular(6),
            ),
            color: kGrey.withOpacity(0.1),
          ),
          child: Center(
              child: Padding(
            padding: const EdgeInsets.all(5.0),
            child: Text(
              title,
              style:
                  mediumText9.copyWith(color: primaryColor2.withOpacity(0.3)),
            ),
          )),
        ),
        SizedBox(width: 13.h),
      ],
    );
  }
}
