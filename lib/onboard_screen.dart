import 'package:anytimetp_app/constants/text_font_style.dart';
import 'package:anytimetp_app/gen/colors.gen.dart';
import 'package:anytimetp_app/helpers/all_routes.dart';
import 'package:anytimetp_app/helpers/navigation_service.dart';
import 'package:anytimetp_app/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'common_widget/custom_food_button_widget.dart';
import 'gen/assets.gen.dart';

class OnboardScreen extends StatefulWidget {
  const OnboardScreen({super.key});
  @override
  State<OnboardScreen> createState() => _OnboardScreenState();
}

class _OnboardScreenState extends State<OnboardScreen> {
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 18.h, horizontal: 15.w),
        child: Column(
          children: [
            UIHelper.verticalSpace(50.h),
            Container(
              padding: EdgeInsets.symmetric(
                vertical: 100.h,
              ),
              decoration: BoxDecoration(
                  color: AppColors.cFFFFFF,
                  borderRadius: BorderRadius.circular(22.r),
                  image: DecorationImage(
                      image: AssetImage(Assets.images.imageui.path),
                      fit: BoxFit.cover)),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.1),
            Text("All your favorites",
                style: TextFontStyle.headline646982w400text16),
            UIHelper.verticalSpace(10.w),
            Padding(
              padding: EdgeInsets.all(8.0.sp),
              child: Text(
                'Get all your loved foods in one once place, you just place the order we do the rest',
                style: TextFontStyle.headline646982w400text16,textAlign: TextAlign.center,
              ),
            ),
            UIHelper.verticalSpace(10.w),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(4, (index) {
                return Padding(
                  padding: EdgeInsets.symmetric(horizontal: 5.w),
                  child: GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedIndex = index;
                      });
                    },
                    child: CircleAvatar(
                      backgroundColor: selectedIndex == index ?  AppColors.cFF7622 : AppColors.cFFE1CE,
                      radius: 6.r,
                    ),
                  ),
                );
              }),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.2),
            Padding(
              padding:  EdgeInsets.all(8.0.sp),
              child: CustomFoodButtonWidget(onTap: () {
                NavigationService.navigateTo(Routes.logInScreen);
              }, name: 'Next',),
            ),
           UIHelper.verticalSpace(10.h),
         Text('Skip',style: TextFontStyle.headline646982w400text16)
          ],
        ),
      ),
    );
  }
}
