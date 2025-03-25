import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

Widget buildTimelineTile(String text, {bool isActive = false}) {
  return Row(
    crossAxisAlignment: CrossAxisAlignment.start,
    children: [
      Column(
        children: [
          Icon(
            isActive ? Icons.radio_button_checked : Icons.radio_button_unchecked,
            color: isActive ? Colors.orange : Colors.grey,
            size: 20.r,
          ),
          Container(
            width: 2.w,
            height: 30.h,
            color: isActive ? Colors.orange : Colors.grey[300],
          ),
        ],
      ),
      SizedBox(width: 10.w),
      Text(
        text,
        style: TextStyle(
          fontSize: 14.sp,
          fontWeight: isActive ? FontWeight.bold : FontWeight.normal,
          color: isActive ? Colors.orange : Colors.grey,
        ),
      ),
    ],
  );
}

