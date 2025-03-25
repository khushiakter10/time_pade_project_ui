import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../../constants/text_font_style.dart';
import '../../../../gen/assets.gen.dart';
import '../../../../gen/colors.gen.dart';
import '../../../../helpers/ui_helpers.dart';
class CustomBurgerWidget extends StatelessWidget {
  const CustomBurgerWidget({
    super.key,
    required this.image,
    required this.text,
    required this.title,
    required this.data,
  });

  final List<String> image;
  final List<String> text;
  final List<String> title;
  final List<String> data;

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      padding: EdgeInsets.zero,
      controller: ScrollController(),
      shrinkWrap: true,
      scrollDirection: Axis.vertical,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          mainAxisSpacing:11,
          crossAxisSpacing: 11,
          childAspectRatio: 0.7),
      itemCount: image.length,
      itemBuilder: (BuildContext context, int index) {
        return Center(
          child: Stack(
            alignment: Alignment.topCenter,
            clipBehavior: Clip.none,
            children: [
              Container(
                height: 170.h,
                width: 320.w,
                margin: EdgeInsets.only(top: 60.h),
                padding: EdgeInsets.symmetric(horizontal: 15.w, vertical: 20.h),
                decoration: BoxDecoration(
                  color: AppColors.cFFFFFF,
                  borderRadius: BorderRadius.circular(20.r),
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    UIHelper.verticalSpace(60.h),
                    Expanded(
                      child: Text(
                        text[index],
                        style: TextFontStyle.headline32343Ew700text14.copyWith(fontSize: 15.sp),
                      ),
                    ),
                    Text(
                      title[index],
                      style: TextFontStyle.headline646982w400text16.copyWith(fontSize: 13.sp),
                    ),
                    UIHelper.verticalSpace(4.h),
                    Row(
                      children: [
                        Text(data[index], style: TextFontStyle.headline32343Ew700text14.copyWith(fontSize: 16.sp)),
                        UIHelper.horizontalSpace(45.w),
                        CircleAvatar(
                          radius: 15.r,
                          backgroundColor: AppColors.cF58D1D,
                          child: SvgPicture.asset(
                            Assets.icons.plusss,
                            height: 10.h,
                          ),
                        )
                      ],
                    ),
                  ],
                ),
              ),
              Positioned(
                top: -4.h,
                width: 135.w,
                child: ClipRRect(
                  borderRadius: BorderRadius.circular(15.r),
                  child: Container(
                    height: 100.h,
                    decoration: BoxDecoration(
                      borderRadius: BorderRadius.circular(15.r),
                    ),
                    child: Image.asset(
                      image[index],
                      fit: BoxFit.cover,
                    ),
                  ),
                ),
              ),
            ],
          ),
        );
      },
    );
  }
}