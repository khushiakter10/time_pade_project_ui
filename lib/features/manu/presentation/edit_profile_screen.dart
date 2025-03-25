 import 'package:anytimetp_app/common_widget/custom_food_button_widget.dart';
import 'package:anytimetp_app/constants/text_font_style.dart';
import 'package:anytimetp_app/features/manu/presentation/widget/custom_container-widget.dart';
import 'package:anytimetp_app/gen/assets.gen.dart';
import 'package:anytimetp_app/gen/colors.gen.dart';
import 'package:anytimetp_app/helpers/all_routes.dart';
import 'package:anytimetp_app/helpers/navigation_service.dart';
import 'package:anytimetp_app/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';


class EditProfileScreen extends StatefulWidget {
  const EditProfileScreen({super.key});

  @override
  State<EditProfileScreen> createState() => _EditProfileScreenState();
}

class _EditProfileScreenState extends State<EditProfileScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColors.cFFFFFF,
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 50.h, horizontal: 15.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                GestureDetector( onTap: (){NavigationService.goBack;},
                  child: CircleAvatar(
                    radius: 22.r,
                    backgroundColor: AppColors.cECF0F4,
                    child: SvgPicture.asset(Assets.icons.back, height: 45.h),
                  ),
                ),
                UIHelper.horizontalSpace(10.w),
                Text(
                  'Profile',
                  style: TextFontStyle.headline181C2Ew400text14.copyWith(fontSize: 17.sp),
                ),

              ],
            ),
            Center(
              child: Stack(
                children: [
                  CircleAvatar(
                    radius: 50.r,
                    backgroundImage: AssetImage(Assets.images.dog.path),
                  ),
                  Positioned(
                    right: 0,
                    bottom: 0,
                    child: CircleAvatar(
                      radius: 12.r,
                      backgroundColor: Colors.transparent,
                      backgroundImage:
                      AssetImage(Assets.icons.penicon.path),
                    ),
                  ),
                ],
              ),
            ),
            UIHelper.verticalSpace(40.h),
            Text('Full Name',style: TextFontStyle.headline32343Ew400text13.copyWith(fontSize: 14.sp)),
            UIHelper.verticalSpace(8.h),
            CustomContainerWidget(
              name: 'Vishal Khadok',
              imagePath: Assets.images.dog.path,
            ),
            UIHelper.verticalSpace(19.h),
            Text('Email',style: TextFontStyle.headline32343Ew400text13.copyWith(fontSize: 14.sp)),
            UIHelper.verticalSpace(8.h),
            CustomContainerWidget(
              name: 'Settings',
              imagePath: Assets.images.burger.path,
            ),
            UIHelper.verticalSpace(19.h),
            Text('Phone Number',style: TextFontStyle.headline32343Ew400text13.copyWith(fontSize: 14.sp)),
            UIHelper.verticalSpace(8.h),
            CustomContainerWidget(
              name: 'About the app',
              imagePath: Assets.images.pizza.path,
            ),
            UIHelper.verticalSpace(19.h),
            Text(' Bio',style: TextFontStyle.headline32343Ew400text13.copyWith(fontSize: 14.sp)),
            UIHelper.verticalSpace(8.h),
            Container(
              padding: EdgeInsets.symmetric(vertical: 40.h,horizontal: 123.w),
              decoration: BoxDecoration(
                color: AppColors.cF0F5FA,
                borderRadius: BorderRadius.circular(9.r),
              ),child: Text('I love fast food',style: TextFontStyle.headline646982w400text16.copyWith(fontSize: 14.sp),),
            ),
            UIHelper.verticalSpace(50.h),
            CustomFoodButtonWidget(titleStyle: TextFontStyle.headlineFFFFFFw700text14,
                onTap: () {
                  NavigationService.navigateTo(Routes.addresssScreen);
                }, name: 'Verify'),
          ],
        ),
      ),
    );
  }
}
