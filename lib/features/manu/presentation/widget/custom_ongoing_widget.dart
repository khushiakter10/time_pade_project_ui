import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../../constants/text_font_style.dart';
import '../../../../gen/assets.gen.dart';
import '../../../../gen/colors.gen.dart';
import '../../../../helpers/ui_helpers.dart';
class CustomOngoingWidget extends StatelessWidget {
  final String? title;
  final TextStyle? titleTextSy;
  final String? subtitle;
  final TextStyle? subTextStyle;
  const CustomOngoingWidget({
    super.key, this.title, this.titleTextSy, this.subtitle, this.subTextStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding:  EdgeInsets.symmetric(vertical: 35.h,horizontal: 30.w),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Container(
                padding: EdgeInsets.symmetric(vertical: 24.h,horizontal: 30.w),
                decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.r),
                    image: DecorationImage(image: AssetImage(Assets.images.dog.path))
                ),
              ),
              UIHelper.horizontalSpace(16.w),
              Expanded(
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      title?? '',
                      style: titleTextSy,
                    ),
                    UIHelper.verticalSpace(4.h),
                    Row(
                      children: [
                        Text(
                            subtitle??'',
                            style: subTextStyle),
                        UIHelper.horizontalSpace(8.w),
                        Text(
                          "|  03 Items",
                          style: TextFontStyle.headline646982w400text16.copyWith(fontSize: 12.sp),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Text(
                "#162432",
                style: TextFontStyle.headline646982w400text16.copyWith(fontSize: 14.sp),
              )
            ],
          ),
          UIHelper.verticalSpace(20.h),

          Row(
            children: [
              Expanded(
                child: ElevatedButton(
                  onPressed: () {},
                  style: ElevatedButton.styleFrom(
                    backgroundColor: Colors.orange,
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                  ),
                  child: Text(
                    "Track Order",
                    style: TextFontStyle.headlineFFFFFFw700text14.copyWith(fontSize: 12.sp),
                  ),
                ),
              ),
              UIHelper.horizontalSpace(16.w),
              Expanded(
                child: OutlinedButton(
                  onPressed: () {},
                  style: OutlinedButton.styleFrom(
                    padding: const EdgeInsets.symmetric(vertical: 14),
                    shape: RoundedRectangleBorder(
                      borderRadius: BorderRadius.circular(8),
                    ),
                    side: const BorderSide(color: AppColors.cFF7622),
                  ),
                  child: Text(
                    "Cancel",
                    style: TextFontStyle.headlineFF7622w700text14.copyWith(fontSize: 12.sp),
                  ),
                ),
              ),
            ],
          ),
          UIHelper.verticalSpace(20.h),
          Text('Drink',style: TextFontStyle.headline181C2Ew400text14),
          UIHelper.verticalSpace(10.h),
          UIHelper.customDivider(
              height: 3,
              color: AppColors.cECF0F4
          ),
        ],
      ),
    );
  }
}


