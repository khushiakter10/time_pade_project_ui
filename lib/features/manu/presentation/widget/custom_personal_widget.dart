import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../gen/colors.gen.dart';
import '../../../../helpers/ui_helpers.dart';

class CustomVisalWidget extends StatelessWidget {
  final Widget? icon1;
  final String? title;
  final TextStyle? titleTextStyle;
  final Widget? subtitleicon;
  final Widget? icon2;
  final String? text;
  final TextStyle? textStyle;
  final Widget? subtitleicon2;
  final Widget? subtitleicon3;
  final Widget? subtitleicon4;
  final Widget? iconlove;
  final Widget? iconnotification;
  final Widget? iconbox;

  const CustomVisalWidget({
    super.key,
    this.icon1,
    this.title,
    this.titleTextStyle,
    this.subtitleicon,
    this.icon2,
    this.text,
    this.textStyle,
    this.subtitleicon2,
    this.iconlove,
    this.iconnotification,
    this.iconbox,
    this.subtitleicon3,
    this.subtitleicon4,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.symmetric(vertical: 20.h, horizontal: 25.w),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(16.r),
        color: AppColors.cF6F8FA,
      ),
      child: Column(
        children: [
          Row(
            children: [
              icon1 ?? const CircleAvatar(),
              Text(title?? '', style: titleTextStyle),
              UIHelper.horizontalSpace(135.w),
              subtitleicon ?? const CircleAvatar(),
            ],
          ),
          UIHelper.verticalSpace(10.h),
          Row(
            children: [
              iconlove ?? const CircleAvatar(),
              Text(text?? '', style: textStyle),
              UIHelper.horizontalSpace(157.w),
              subtitleicon2 ?? const CircleAvatar(),
            ],
          ),
          UIHelper.verticalSpace(10.h),
          Row(
            children: [
              iconnotification ?? const CircleAvatar(),
              Text(text?? '', style: textStyle),
              UIHelper.horizontalSpace(157.w),
              subtitleicon3 ?? const CircleAvatar(),
            ],
          ),
          UIHelper.verticalSpace(10.h),
          Row(
            children: [
              iconbox ?? const CircleAvatar(),
              Text(text?? '', style: textStyle),
              UIHelper.horizontalSpace(156.w),
              subtitleicon4 ?? const CircleAvatar(),
            ],
          ),
        ],
      ),
    );
  }
}
