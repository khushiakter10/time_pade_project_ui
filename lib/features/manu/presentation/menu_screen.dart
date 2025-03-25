import 'package:anytimetp_app/features/manu/presentation/widget/custom_personal_widget.dart';
import 'package:anytimetp_app/helpers/all_routes.dart';
import 'package:anytimetp_app/helpers/navigation_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../constants/text_font_style.dart';
import '../../../gen/assets.gen.dart';
import '../../../gen/colors.gen.dart';
import '../../../helpers/ui_helpers.dart';
class MenuScreen extends StatefulWidget {
  const MenuScreen({super.key});

  @override
  State<MenuScreen> createState() => _MenuScreenState();
}

class _MenuScreenState extends State<MenuScreen> {
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
            Row(
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
            UIHelper.verticalSpace(20.h),
            GestureDetector(
              onTap: (){
                NavigationService.navigateTo(Routes.profilescreen);
              },
              child: ListView.separated(
                physics: const NeverScrollableScrollPhysics(),
                padding: EdgeInsets.zero,
                itemCount: 3,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemBuilder: (context, index) {
                  return CustomVisalWidget(
                    title: 'Personal Info',
                    titleTextStyle: TextFontStyle.headline32343Ew400text13,
                    icon1: SvgPicture.asset(Assets.icons.homeicon, height: 44.h),
                    subtitleicon: SvgPicture.asset(Assets.icons.iconback, height: 24.h),
                    icon2: SvgPicture.asset(Assets.icons.book, height: 44.h),
                    text: 'Addresses',
                    textStyle: TextFontStyle.headline32343Ew400text13,
                    subtitleicon2: SvgPicture.asset(Assets.icons.iconback, height: 24.h),
                    iconlove: SvgPicture.asset(Assets.icons.book),
                    iconbox: SvgPicture.asset(Assets.icons.love2),
                    iconnotification: SvgPicture.asset(Assets.icons.notification),
                    subtitleicon4: SvgPicture.asset(Assets.icons.iconback, height: 24.h),
                    subtitleicon3: SvgPicture.asset(Assets.icons.iconback, height: 24.h),
                  );
                }, separatorBuilder: (BuildContext context, int index) {
                  return UIHelper.verticalSpace(20.h);
              },
              ),
            )

          ],
        ),
      ),
    );
  }
}
