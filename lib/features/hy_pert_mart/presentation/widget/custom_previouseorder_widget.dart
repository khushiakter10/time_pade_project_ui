import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../gen/colors.gen.dart';
import '../../../../helpers/ui_helpers.dart';

class CustomPreviouseOrderWidget extends StatelessWidget {
  final String? title;
  final TextStyle? titleTextStyle;
  final String? subtitle;
  final TextStyle? subtitleTextStyle;
  final Widget? papayaIcon;
  final Widget? vagitbleIcon;
  final Widget? companIcon;
  final String? numbertitle;
  final TextStyle? numbertitleTextStyle;
  final String? moreText;
  final TextStyle? moreTextSytle;
  final String? idText;
  final TextStyle? idTextStyle;
  final String? totaltext;
  final TextStyle? totaltextStyle;
  final Color? color;
  final String? orderText;
  final TextStyle? orderTextStyle;
  const CustomPreviouseOrderWidget({
    super.key,
    this.title,
    this.titleTextStyle,
    this.subtitle,
    this.subtitleTextStyle,
    this.papayaIcon,
    this.vagitbleIcon,
    this.companIcon,
    this.numbertitle,
    this.numbertitleTextStyle,
    this.idText,
    this.idTextStyle,
    this.moreText,
    this.moreTextSytle,
    this.totaltext,
    this.totaltextStyle,
    this.color,
    this.orderText,
    this.orderTextStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      constraints: BoxConstraints(minHeight: 200.h),
      padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
      decoration: BoxDecoration(
        color: AppColors.cFFFFFF,
        borderRadius: BorderRadius.circular(8.r),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.1),
            spreadRadius: 2,
            blurRadius: 6,
            offset: const Offset(2, 3),
          ),
        ],
      ),
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 15.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(title!, style: titleTextStyle),
            Text(subtitle!, style: subtitleTextStyle),
            UIHelper.verticalSpace(10.h),
            Container(
              decoration: BoxDecoration(
                color: AppColors.cF7F7F7,
                borderRadius: BorderRadius.circular(8.r),
              ),
              child: Padding(
                padding: const EdgeInsets.all(20.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceAround,
                  children: [
                    papayaIcon ?? UIHelper.horizontalSpace(30.w),
                    vagitbleIcon ?? UIHelper.horizontalSpace(30.w),
                    companIcon ?? UIHelper.horizontalSpace(30.w),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text(numbertitle!, style: numbertitleTextStyle),
                        Text(moreText!, style: moreTextSytle),
                      ],
                    ),
                  ],
                ),
              ),
            ),
            UIHelper.verticalSpace(10.h),
            Row(
              children: [
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(idText!, style: idTextStyle),
                    UIHelper.verticalSpace(5.h),
                    Text(totaltext!, style: totaltextStyle)
                  ],
                ),
                UIHelper.horizontalSpace(24.w),
                Expanded(
                  child: Container(
                    alignment: Alignment.center,
                    padding: EdgeInsets.symmetric(vertical: 9.h),
                    decoration: BoxDecoration(
                      color: color,
                      borderRadius: BorderRadius.circular(10.r),
                    ),
                    child: Text(
                      orderText!,
                      style: orderTextStyle,
                      textAlign: TextAlign.center,
                    ),
                  ),
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
