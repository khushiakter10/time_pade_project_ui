import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../gen/colors.gen.dart';
class CustomTaskContainerWidget extends StatelessWidget {
  final  Color? color;
  const CustomTaskContainerWidget({
    super.key, this.color,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 4.h,horizontal: 4.w),
      decoration: BoxDecoration(
        color: AppColors.c828282,
        borderRadius: BorderRadius.circular(10.r),
      ),
    );
  }
}