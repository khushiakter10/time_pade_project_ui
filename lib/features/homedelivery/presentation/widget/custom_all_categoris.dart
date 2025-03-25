
import 'package:anytimetp_app/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../../constants/text_font_style.dart';

class CustomAllCategorisewidget extends StatelessWidget {
  final Widget image;
  final String name;
  final String price;

  final TextStyle starttextStyle;
  final TextStyle dataStyle;

  const CustomAllCategorisewidget({
    super.key,
    required this.image,
    required this.name,
    required this.price,

    required this.starttextStyle,
    required this.dataStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(horizontal: 30.w),
      margin: EdgeInsets.symmetric(horizontal: 8.w),
      decoration: BoxDecoration(
        color: Colors.white,
        borderRadius: BorderRadius.circular(20.r),
        // boxShadow: [
        //   BoxShadow(
        //     color: Colors.black.withOpacity(0.1),
        //     blurRadius: 10.r,
        //     spreadRadius: 2,
        //   ),
        // ],
      ),
      child: Column(
        mainAxisSize: MainAxisSize.min,
        children: [
          Container(
            height: 80.h,
            width: 80.w,
            decoration: BoxDecoration(
              color: Colors.grey.shade400,
              borderRadius: BorderRadius.circular(15),
            ),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(15.r),
              child: image,
            ),
          ),
          UIHelper.verticalSpace(10.h),
          Text(
            name,
            style: TextFontStyle.headline32343Ew700text14,
          ),
          UIHelper.verticalSpace(4.h),
          Text(
            'Starting',
            style: starttextStyle,
          ),
          UIHelper.verticalSpace(2.h),
          Text(
            '\$$price',
            style: dataStyle,
          ),
        ],
      ),
    );
  }
}
