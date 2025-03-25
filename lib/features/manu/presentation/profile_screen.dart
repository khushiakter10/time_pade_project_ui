
import 'package:anytimetp_app/helpers/all_routes.dart';
import 'package:anytimetp_app/helpers/navigation_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../constants/text_font_style.dart';
import '../../../gen/assets.gen.dart';
import '../../../gen/colors.gen.dart';
import '../../../helpers/ui_helpers.dart';
class ProfileScreen extends StatefulWidget {
  const ProfileScreen({super.key});

  @override
  State<ProfileScreen> createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cFFFFFF,
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 50.h, horizontal: 15.w),
        child: Column(
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 22.r,
                  backgroundColor: AppColors.cECF0F4,
                  child: SvgPicture.asset(Assets.icons.back, height: 45.h),
                ),
                UIHelper.horizontalSpace(10.w),
                Text(
                  'Profile',
                  style: TextFontStyle.headline181C2Ew400text14.copyWith(fontSize: 17.sp),
                ),
                UIHelper.horizontalSpace(170.w),
                SvgPicture.asset(Assets.icons.toptop),
              ],
            ),
            UIHelper.verticalSpace(20.h),
            GestureDetector(
              onTap: (){
                NavigationService.navigateTo(Routes.editProfileScreen);
              },
              child: Row(
                children: [
                  CircleAvatar(
                    radius: 25.r,
                    backgroundColor: AppColors.c000000,
                    child: Image.asset(Assets.images.burger.path),
                  ),
                  UIHelper.horizontalSpace(30.w),
                  Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Vishal Khadok',
                        style: TextFontStyle.headline32343Ew700text14.copyWith(fontSize: 20.sp),
                      ),
                      Text(
                        'I love fast food',
                        style: TextFontStyle.headlineA0A5BAw400text14,
                      ),
                    ],
                  ),
                ],
              ),
            ),
            UIHelper.verticalSpace(30.h),
            Container(
              decoration: BoxDecoration(
                color: AppColors.cF6F8FA,
                borderRadius: BorderRadius.circular(20.r),
              ),
              child: Padding(
                padding: const EdgeInsets.all(15.0),
                child: Column(
                  children: [
                    Row(
                      children: [
                        SvgPicture.asset(Assets.icons.homeicon),
                       UIHelper.horizontalSpace(11.w),
                       Column(
                         crossAxisAlignment: CrossAxisAlignment.start,
                         children: [
                           Text('Full Name',style:  TextFontStyle.headline32343Ew400text13.copyWith(fontSize: 15.sp)),
                           Text('Vishal Khadok',style: TextFontStyle.headline646982w400text16.copyWith(fontSize: 13.sp),)
                         ],
                       )
                      ],
                    ),
                    UIHelper.verticalSpace(15.h),
                    Row(
                      children: [
                        SvgPicture.asset(Assets.icons.homeicon),
                        UIHelper.horizontalSpace(10.w),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Full Name',style:  TextFontStyle.headline32343Ew400text13.copyWith(fontSize: 15.sp)),
                            Text('Vishal Khadok',style: TextFontStyle.headline646982w400text16.copyWith(fontSize: 13.sp),)
                          ],
                        )
                      ],
                    ),
                    UIHelper.verticalSpace(15.h),
                    Row(
                      children: [
                        SvgPicture.asset(Assets.icons.homeicon),
                        UIHelper.horizontalSpace(10.w),
                        Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Text('Phone Number',style:  TextFontStyle.headline32343Ew400text13.copyWith(fontSize: 15.sp)),
                            Text('408-841-0926',style: TextFontStyle.headline646982w400text16.copyWith(fontSize: 13.sp),)
                          ],
                        )
                      ],
                    ),
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
