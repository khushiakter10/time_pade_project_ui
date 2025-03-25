import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../gen/colors.gen.dart';
import '../../../helpers/ui_helpers.dart';

class CustomTodayListContainer extends StatelessWidget {
  final String? title;
  final TextStyle? titleTextStyle;
  final String? time;
  final TextStyle? timeTextStyle;
  final String? subTitle1;
  final TextStyle? subTitleTextStyle1;
  final String? subTitle2;
  final TextStyle? subTitleTextStyle2;
  final Widget? image;
  final ImageProvider? image1;
  final Widget? playIcon;


  const CustomTodayListContainer({
    super.key,
    required this.title,
    this.titleTextStyle,
    this.time,
    this.timeTextStyle, this.subTitle1,
    this.subTitleTextStyle1,
    this.subTitle2,
    this.subTitleTextStyle2,
    this.image, this.image1, this.playIcon,

  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: AppColors.cFFFFFF,
        borderRadius: BorderRadius.circular(8.r),
      ),
      child: Padding(
        padding: const EdgeInsets.all(12.0),
        child: Row(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
           image?? const CircleAvatar(),
            UIHelper.horizontalSpace(7.w),
            Column(crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    Text(title!,style: titleTextStyle),
                    UIHelper.horizontalSpace(145.w),
                    Text(time??'',style: timeTextStyle)
                  ],
                ),
                UIHelper.verticalSpace(10.h),
                Row(
                  children: [
                    Container(padding: EdgeInsets.symmetric(vertical: 7.h, horizontal: 7.w),
                        decoration: BoxDecoration(color: AppColors.cFFEFF1,
                          borderRadius: BorderRadius.circular(8.r),
                        ),
                        child:
                            Text(subTitle1 ?? '', style: subTitleTextStyle1)),
                    UIHelper.horizontalSpace(7.w),
                    Container(
                      padding:EdgeInsets.symmetric(vertical: 7.h, horizontal: 7.w),
                      decoration: BoxDecoration(color: AppColors.cF5EEFC,
                        borderRadius: BorderRadius.circular(8.r),
                      ),
                      child: Text(subTitle2?? '',  style: subTitleTextStyle2),
                    ),
                    UIHelper.horizontalSpace(140.w),
                    playIcon ??  Container(),
                  ],
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
