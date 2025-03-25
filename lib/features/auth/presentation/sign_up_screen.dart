import 'package:anytimetp_app/constants/text_font_style.dart';
import 'package:anytimetp_app/gen/colors.gen.dart';
import 'package:anytimetp_app/helpers/all_routes.dart';
import 'package:anytimetp_app/helpers/navigation_service.dart';
import 'package:anytimetp_app/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../common_widget/custom_food_button_widget.dart';
import '../../../common_widget/custom_textormfield_widget.dart';
import '../../../gen/assets.gen.dart';

class SignUpScreen extends StatefulWidget {
  const SignUpScreen({super.key});

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  final nameController = TextEditingController();
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  final reTypePasswrdController = TextEditingController();
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    nameController.dispose();
    emailController.dispose();
    passwordController.dispose();
    reTypePasswrdController.dispose();
  }

  bool checkbox1 = true;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.c121223,
      body: SingleChildScrollView(
        child: Column(
          children: [
            UIHelper.verticalSpace(120.h),
            Center(
                child: Text('Sign Up',
                    style: TextFontStyle.arabic26cFFFFFFFFStyleNotoNaskh
                        .copyWith(fontSize: 30.sp))),
            UIHelper.verticalSpace(3.h),
            Text('Please sign up to get started',
                style: TextFontStyle.headlineDCDCDEw400text16),
            UIHelper.verticalSpace(50.h),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.7,
              decoration: BoxDecoration(
                  color: AppColors.cFFFFFF,
                  borderRadius: BorderRadius.circular(30.r)),
              child: Padding(
                padding: EdgeInsets.symmetric(vertical: 28.h, horizontal: 18.w),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text('Name', style: TextFontStyle.headline32343Ew400text13),
                    UIHelper.verticalSpace(10.h),
                    CustomTextFormWiget(
                        controller: nameController,
                        fillColor: AppColors.cF0F5FA,
                        filled: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.r),
                            borderSide: BorderSide.none),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.r),
                            borderSide: BorderSide.none),
                        hintTxt: 'John doe',
                        hinStyleColor: TextFontStyle.headlineA0A5BAw400text14),
                    UIHelper.verticalSpace(26.h),
                    Text('Email',
                        style: TextFontStyle.headline32343Ew400text13),
                    UIHelper.verticalSpace(10.h),
                    CustomTextFormWiget(
                        controller: emailController,
                        fillColor: AppColors.cF0F5FA,
                        filled: true,
                        border: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.r),
                            borderSide: BorderSide.none),
                        focusedBorder: OutlineInputBorder(
                            borderRadius: BorderRadius.circular(8.r),
                            borderSide: BorderSide.none),
                        hintTxt: 'example@gmail.com',
                        hinStyleColor: TextFontStyle.headlineA0A5BAw400text14),
                    UIHelper.verticalSpace(26.h),
                    Text('Password',
                        style: TextFontStyle.headline32343Ew400text13),
                    UIHelper.verticalSpace(10.h),
                    CustomTextFormWiget(
                      controller: passwordController,
                      fillColor: AppColors.cF0F5FA,
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.r),
                          borderSide: BorderSide.none),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.r),
                          borderSide: BorderSide.none),
                      hintTxt: '12345',
                      hinStyleColor: TextFontStyle.headlineA0A5BAw400text14,
                      suffixIcon: Padding(
                          padding: const EdgeInsets.all(17.0),
                          child: SvgPicture.asset(Assets.icons.eyeoff,
                              height: 19.h)),
                    ),
                    UIHelper.verticalSpace(26.h),
                    Text('Re-Type Password',
                        style: TextFontStyle.headline32343Ew400text13),
                    UIHelper.verticalSpace(10.h),
                    CustomTextFormWiget(
                      controller: reTypePasswrdController,
                      fillColor: AppColors.cF0F5FA,
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.r),
                          borderSide: BorderSide.none),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.r),
                          borderSide: BorderSide.none),
                      hintTxt: '***************',
                      hinStyleColor: TextFontStyle.headlineA0A5BAw400text14,
                      suffixIcon: Padding(
                          padding: EdgeInsets.all(17.0.sp),
                          child: SvgPicture.asset(Assets.icons.eyeoff,
                              height: 19.h)),
                    ),
                    UIHelper.verticalSpace(40.h),
                    CustomFoodButtonWidget(
                        titleStyle: TextFontStyle.headlineFFFFFFw700text14,
                        onTap: () {
                          NavigationService.navigateTo(Routes.forgotPasswordScreen);
                        },
                        name: 'Sign Up')
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
