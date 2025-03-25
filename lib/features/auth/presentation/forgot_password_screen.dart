import 'package:anytimetp_app/constants/text_font_style.dart';
import 'package:anytimetp_app/gen/colors.gen.dart';
import 'package:anytimetp_app/helpers/all_routes.dart';
import 'package:anytimetp_app/helpers/navigation_service.dart';
import 'package:anytimetp_app/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../common_widget/custom_food_button_widget.dart';
import '../../../common_widget/custom_textormfield_widget.dart';
class ForgotPasswordScreen extends StatefulWidget {
  const ForgotPasswordScreen({super.key});

  @override
  State<ForgotPasswordScreen> createState() => _ForgotPasswordScreenState();
}

class _ForgotPasswordScreenState extends State<ForgotPasswordScreen> {
  bool checkbox1 = true;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColors.c121223,
      body: SingleChildScrollView(
        child: Column(
          children: [
            UIHelper.verticalSpace(120.h),
            Center(child: Text('Forgot Password',style: TextFontStyle.arabic26cFFFFFFFFStyleNotoNaskh.copyWith(fontSize: 30.sp))),
            UIHelper.verticalSpace(3.h),
            Text('Please sign in to your existing account',style: TextFontStyle.headlineDCDCDEw400text16),
            UIHelper.verticalSpace(50.h),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.7,
              decoration: BoxDecoration(
                  color: AppColors.cFFFFFF,
                  borderRadius: BorderRadius.circular(30.r)
              ),
              child: Padding(padding:  EdgeInsets.symmetric(vertical: 28.h,horizontal: 18.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Email',style: TextFontStyle.headline32343Ew400text13),
                    UIHelper.verticalSpace(10.h),
                    CustomTextFormWiget(
                        fillColor: AppColors.cF0F5FA,filled: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.r),borderSide: BorderSide.none),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.r),
                            borderSide: BorderSide.none
                        ),
                        hintTxt: 'example@gmail.com',hinStyleColor: TextFontStyle.headlineA0A5BAw400text14),
                    UIHelper.verticalSpace(60.h),
                    CustomFoodButtonWidget(
                      titleStyle: TextFontStyle.headlineFFFFFFw700text14,
                        onTap: (){
                        NavigationService.navigateTo(Routes.verificationScreen);
                        }, name: 'Send Code')
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


