import 'package:anytimetp_app/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:anytimetp_app/gen/colors.gen.dart';

class CustomFixedContainer extends StatelessWidget {
  final bool showCheckbox;
  final bool? checkboxValue;
  final Function(bool?)? onCheckboxChanged;
  final bool showIcon;
  final Widget? iconWidget;
  final String? title;
  final TextStyle? titleTextStyle;
  final String? subtitle;
  final TextStyle? subtitleTextStyle;
  final String? number1;
  final TextStyle? number1TextStyle;
  final String? task;
  final TextStyle? taskTextStyle;
  final String? number2;
  final TextStyle? number2TextStyle;
  final String? task2;
  final TextStyle? task2TextStyle;

  const CustomFixedContainer({
    super.key,
    this.showCheckbox = false,
    this.checkboxValue,
    this.onCheckboxChanged,
    this.showIcon = false,
    this.iconWidget,
    this.title,
    this.titleTextStyle,
    this.subtitle,
    this.subtitleTextStyle,
    this.number1,
    this.number1TextStyle,
    this.task,
    this.taskTextStyle,
    this.number2,
    this.number2TextStyle,
    this.task2,
    this.task2TextStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      //padding: EdgeInsets.symmetric(vertical: 10.h,horizontal: 15.w),
      decoration: BoxDecoration(  color: AppColors.cFFFFFF,
        borderRadius: BorderRadius.circular(22.r),
      ),
      child: Padding(padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
        child: Column(
          children: [
            Row( crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                if (showCheckbox)
                  Transform.scale(
                    scale: 1.9,
                    child: Checkbox(
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(4.r),
                      ),
                      side:  const BorderSide(color: AppColors.cDFE1E6),
                      activeColor: AppColors.c07E092,
                      checkColor: AppColors.cFFFFFF,
                      value: checkboxValue,
                      onChanged: onCheckboxChanged,
                    ),
                  ),

                if (showIcon && iconWidget != null) iconWidget!,
                UIHelper.horizontalSpace(8.h),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                   Text(title!, style: titleTextStyle),
                    Text(subtitle!, style: subtitleTextStyle),
                  ],
                ),
              ],
            ),

            UIHelper.verticalSpace(12.h),
            Padding(
              padding: EdgeInsets.all(8.0.sp),
              child: Row(
                children: [
                  Text(number1??'',style: number1TextStyle,),
                  UIHelper.horizontalSpace(5.w),
                  Text(task?? '', style: taskTextStyle),
                  UIHelper.horizontalSpace(10.w),
                 Text(number2??'',style: number2TextStyle,),
                  UIHelper.horizontalSpace(5.w),
                 Text(task2??'',style: task2TextStyle),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
