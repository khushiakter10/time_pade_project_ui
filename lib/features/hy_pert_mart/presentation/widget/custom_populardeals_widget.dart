import 'package:flutter/foundation.dart';
import 'package:flutter/material.dart';
import 'package:flutter_rating_bar/flutter_rating_bar.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:anytimetp_app/constants/text_font_style.dart';
import 'package:anytimetp_app/gen/assets.gen.dart';
import 'package:anytimetp_app/gen/colors.gen.dart';
import 'package:anytimetp_app/helpers/ui_helpers.dart';

class CustomPopularDealsWidget extends StatelessWidget {
  final ImageProvider? image;
  final Widget? loveIcon;
  final String? strateText;
  final TextStyle? strateTextStyle;
  final String? teantext;
  final TextStyle? teantextStyle;
  final String? numbertext;
  final TextStyle? numbertextStyle;
  final Widget? ratingicon;
  final Color? color;
  final String? twotext;
  final TextStyle? twotextStyle;

  const CustomPopularDealsWidget({
    super.key,
    this.image,
    this.loveIcon,
    this.strateText,
    this.strateTextStyle,
    this.teantext,
    this.teantextStyle,
    this.numbertext,
    this.numbertextStyle,
    this.ratingicon,
    this.color,
    this.twotext,
    this.twotextStyle,
  });

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 35.w),
      child:
      Container(
        decoration: BoxDecoration(
          color: AppColors.cFFFFFF,
          borderRadius: BorderRadius.circular(20.r),
          border: Border.all(color: AppColors.cE8EFF3, width: 2.w),
        ),
        child: Padding(
          padding: EdgeInsets.symmetric(vertical: 18.h, horizontal: 15.w),
          child: Column(
            children: [
              Container(
                height: 200.h,
                decoration: BoxDecoration(
               color:AppColors.cFFFFFF,
                  borderRadius: BorderRadius.circular(20.r),
                  image: DecorationImage(
                    image: image ?? AssetImage(Assets.images.cips.path),
                    fit: BoxFit.cover,
                  ),
                ),
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    loveIcon ?? Container(),
                  ],
                ),
              ),
              UIHelper.verticalSpace(18.h),
              Container(
                decoration: BoxDecoration(
                  //color: Colors.red,
                  borderRadius: BorderRadius.circular(20.r),
                ),
                child: Column(
                  children: [
                    Text(
                      strateText ?? '',
                      style: strateTextStyle ?? TextFontStyle.headline303733w400text20,
                    ),
                    UIHelper.verticalSpace(10.h),
                    Padding(
                      padding: EdgeInsets.all(15.0.sp),
                      child: Row(
                        children: [
                          Text(
                            teantext ?? "₹ 0",
                            style: teantextStyle ?? TextFontStyle.headlineNumber000000,
                          ),
                          UIHelper.horizontalSpace(67.w),
                          Text(
                            numbertext ?? "0.0",
                            style: numbertextStyle ?? TextFontStyle.headlineEA7173w600text12,
                          ),
                          UIHelper.horizontalSpace(5.w),
                          RatingBar.builder(
                            itemSize: 26.h,
                            initialRating: 3.5,
                            direction: Axis.horizontal,
                            itemCount: 1,
                            itemPadding: const EdgeInsets.symmetric(horizontal: 2),
                            itemBuilder: (context, _) =>
                            ratingicon ?? SvgPicture.asset(Assets.icons.starticon, height: 16.h),
                            onRatingUpdate: (rating) {
                              if (kDebugMode) print(rating);
                            },
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              UIHelper.verticalSpace(15.h),
              Row(
                children: [
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 11.h,),
                    decoration: BoxDecoration(
                      color: AppColors.cEA7173,
                      borderRadius: BorderRadius.circular(16.r),
                    ),
                    child: Image.asset(
                      Assets.icons.mines.path,
                      height: 22.h,
                    ),
                  ),
                  UIHelper.horizontalSpace(30.w),
                  Text(
                    twotext ?? "0",
                    style: twotextStyle ?? TextFontStyle.headline14AB87w600text22,
                  ),
                  UIHelper.horizontalSpace(37.w),
                  Container(
                    padding: EdgeInsets.symmetric(vertical: 11.h, horizontal: 15.w),
                    decoration: BoxDecoration(
                      color: AppColors.cEA7173,
                      borderRadius: BorderRadius.circular(16.r),
                    ),
                    child: Image.asset(
                      Assets.icons.pluse.path,
                      height: 22.h,
                    ),
                  ),
                ],
              ),
            ],
          ),
        ),
      ),
    );
  }
}
