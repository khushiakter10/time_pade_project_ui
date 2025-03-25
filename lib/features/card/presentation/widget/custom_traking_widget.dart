import 'package:anytimetp_app/constants/text_font_style.dart';
import 'package:anytimetp_app/features/card/presentation/widget/custom_time_line_widget.dart';
import 'package:anytimetp_app/gen/assets.gen.dart';
import 'package:anytimetp_app/gen/colors.gen.dart';
import 'package:anytimetp_app/helpers/all_routes.dart';
import 'package:anytimetp_app/helpers/navigation_service.dart';
import 'package:anytimetp_app/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CustomTrakingWidget extends StatelessWidget {
  final String? title;
  final String? subtitle;
  final String? subtitle2;
  const CustomTrakingWidget({
    super.key,
    this.title,
    this.subtitle,
    this.subtitle2,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      width: MediaQuery.of(context).size.width,
      height: 580.h,
      decoration: BoxDecoration(
          color: AppColors.cFFFFFF, borderRadius: BorderRadius.circular(22.r)),
      child: Padding(
        padding: EdgeInsets.all(18.0.sp),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            UIHelper.verticalSpace(10.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Container(
                  padding:
                      EdgeInsets.symmetric(vertical: 3.h, horizontal: 40.w),
                  decoration: BoxDecoration(
                    color: AppColors.cD8E3ED,
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                ),
              ],
            ),
            UIHelper.verticalSpace(20.h),
            Row(
              children: [
                Container(
                  padding:
                      EdgeInsets.symmetric(vertical: 30.h, horizontal: 30.w),
                  decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(10.r),
                      image: DecorationImage(
                          image: AssetImage(Assets.images.dog.path),
                          fit: BoxFit.cover)),
                ),
                UIHelper.horizontalSpace(7.w),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(title ?? '',
                        style: TextFontStyle.headline181C2Ew400text14
                            .copyWith(fontSize: 18.sp)),
                    UIHelper.verticalSpace(3.h),
                    Text(subtitle ?? '',
                        style: TextFontStyle.headlineA0A5BAw400text14),
                    UIHelper.verticalSpace(12.h),
                    Text(subtitle2 ?? '',
                        style: TextFontStyle.headline646982w400text16
                            .copyWith(fontSize: 13.sp)),
                    Text("4x Sandwich",
                        style: TextFontStyle.headline646982w400text16
                            .copyWith(fontSize: 13.sp)),
                  ],
                ),
              ],
            ),

            UIHelper.verticalSpace(40.h),
            Center(
              child: Text(
                "20 min",
                style: TextFontStyle.headline181C2Ew800text30,
              ),
            ),
            UIHelper.verticalSpace(7.h),
            Center(
              child: Text(
                "ESTIMATED DELIVERY TIME",
                style: TextFontStyle.headlineA0A5BAw400text14,
              ),
            ),
            UIHelper.verticalSpace(20.h),
            Expanded(
              child: Column(
                children: [
                  buildTimelineTile("Your order has been received",
                      isActive: true),
                  buildTimelineTile("The restaurant is preparing your food",
                      isActive: true),
                  buildTimelineTile(
                      "Your order has been picked up for delivery"),
                  buildTimelineTile("Order arriving soon!"),
                ],
              ),
            ),

            // Courier Info
            Container(
              padding: EdgeInsets.all(15.w),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: BorderRadius.circular(20.r),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 5.r,
                    spreadRadius: 1.r,
                  ),
                ],
              ),
              child: Row(
                children: [
                  CircleAvatar(
                      radius: 25.r,
                      backgroundImage: AssetImage(Assets.images.men.path)),
                  SizedBox(width: 15.w),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text("Robert F.",
                          style: TextFontStyle.headline181C2Ew700text16
                              .copyWith(fontSize: 20.sp)),
                      Text(
                        "Courier",
                        style: TextFontStyle.headlineA0A5BAw400text14,
                      ),
                    ],
                  ),
                  UIHelper.horizontalSpace(70.w),
                  GestureDetector(onTap: (){NavigationService.navigateTo(Routes.callingScreen);},
                    child: CircleAvatar(
                      radius: 16.r,
                      backgroundColor: AppColors.cFF7622,
                      child: Image.asset(
                        Assets.images.phoneCall.path,
                        height: 15.h,
                      ),
                    ),
                  ),
                  UIHelper.horizontalSpace(6.w),
                  GestureDetector(onTap: (){NavigationService.navigateTo(Routes.callingScreen);},
                    child: CircleAvatar(
                      radius: 16.r,
                      backgroundColor: AppColors.cFF7622,
                      child: Image.asset(
                        Assets.images.phoneCall.path,
                        height: 15.h,
                      ),
                    ),
                  ),
                ],
              ),
            ),
          ],
        ),
      ),
    );
  }
}
