
import 'package:anytimetp_app/constants/text_font_style.dart';
import 'package:anytimetp_app/gen/assets.gen.dart';
import 'package:anytimetp_app/gen/colors.gen.dart';
import 'package:anytimetp_app/helpers/navigation_service.dart';
import 'package:anytimetp_app/helpers/ui_helpers.dart';
import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import 'ongoing_screen_two.dart';
class OngoingScreen extends StatefulWidget {
  const OngoingScreen({super.key});

  @override
  State<OngoingScreen> createState() => _OngoingScreenState();
}

class _OngoingScreenState extends State<OngoingScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
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
                UIHelper.horizontalSpace(20.w),
                Text('My Orders',style: TextFontStyle.headline181C2Ew400text14.copyWith(fontSize: 17.sp)),
                UIHelper.horizontalSpace(130.w),
                CircleAvatar( radius: 25, backgroundColor: AppColors.c000000,
                    child: Image.asset(Assets.images.toptop.path)
                )

              ],
            ),
            UIHelper.verticalSpace(10.h),
            Expanded(
              child: ContainedTabBarView(
                tabs:  const [
                  Tab(text: 'Ongoing'),
                  Tab(text: 'History'),
                ],
                views: const [
                  OngoingScreenTwo(),
                  OngoingScreenTwo(),
                ],
                onChange: (index) {
                  // Handle tab change
                },
                initialIndex: 0,
                tabBarProperties: TabBarProperties(
                  margin:  EdgeInsets.symmetric(vertical: 5.h, horizontal: 20.w),
                  height: 50.0.h,
                  indicatorWeight: 4.0.w,
                  labelColor: AppColors.cFF7622,
                  labelStyle:  TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                  ),
                  unselectedLabelColor: AppColors.cA5A7B9,
                  unselectedLabelStyle:  TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ),

          ],
        ),
      ),
    );
  }
}


