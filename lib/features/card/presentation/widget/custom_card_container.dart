import 'package:anytimetp_app/constants/text_font_style.dart';
import 'package:anytimetp_app/gen/colors.gen.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomCardContainer extends StatelessWidget {
  final String? title;
  final EdgeInsetsGeometry? padding;
  const CustomCardContainer({
    super.key, this.title, this.padding,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: padding ?? EdgeInsets.symmetric(vertical: 20.h, horizontal: 117.w),
      decoration: BoxDecoration(
        color: AppColors.cF0F5FA,
        borderRadius: BorderRadius.circular(12.r),
      ),
      child: Text(
        title ?? '',
        style: TextFontStyle.headline454850w400text16,
      ),
    );
  }
}
