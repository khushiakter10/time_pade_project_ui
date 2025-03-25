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
class LogInScreen extends StatefulWidget {
  const LogInScreen({super.key});

  @override
  State<LogInScreen> createState() => _LogInScreenState();
}

class _LogInScreenState extends State<LogInScreen> {
  final emailController = TextEditingController();
  final passwordController = TextEditingController();
  @override
  void dispose() {
    // TODO: implement dispose
    super.dispose();
    emailController.dispose();
    passwordController.dispose();
  }
  bool checkbox1 = true;

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColors.c121223,
      body: SingleChildScrollView(
        child: Column(
          children: [
            UIHelper.verticalSpace(120.h),
            Center(child: Text('Log In',style: TextFontStyle.arabic26cFFFFFFFFStyleNotoNaskh.copyWith(fontSize: 30.sp))),
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
                      controller: emailController,
                      fillColor: AppColors.cF0F5FA,filled: true,
                      border: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.r),borderSide: BorderSide.none),
                      focusedBorder: OutlineInputBorder(
                        borderRadius: BorderRadius.circular(8.r),
                          borderSide: BorderSide.none
                      ),
                      hintTxt: 'example@gmail.com',hinStyleColor: TextFontStyle.headlineA0A5BAw400text14),
                    UIHelper.verticalSpace(26.h),
                    Text('Password',style: TextFontStyle.headline32343Ew400text13),
                    UIHelper.verticalSpace(10.h),
                    CustomTextFormWiget(
                      controller: passwordController,
                      fillColor: AppColors.cF0F5FA,
                      filled: true,
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.r),
                          borderSide: BorderSide.none
                      ),
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.r),
                          borderSide: BorderSide.none
                      ),
                      hintTxt: '12345',
                      hinStyleColor: TextFontStyle.headlineA0A5BAw400text14,
                      suffixIcon: Padding(
                        padding: const EdgeInsets.all(17.0),
                        child: Image.asset(Assets.icons.icon.path,height: 14.h),
                      ),
                    ),
                    UIHelper.verticalSpace(26.h),
                    Row(
                      children: [
                        Transform.scale(
                          scale: 1.7,
                          child: Checkbox(
                            shape: OutlinedBorder.lerp(
                                const RoundedRectangleBorder(),
                                const CircleBorder(),
                                0.33.r),
                            side: const BorderSide(
                                color: AppColors.cE3EBF2, width: 1),
                            activeColor: AppColors.cFFFFFF,
                            checkColor: AppColors.c000000,
                            value: checkbox1,
                            onChanged: (newValue) {
                              setState(() {
                                checkbox1 = newValue!;
                              });
                            },
                          ),
                        ),
                        Text("Remember me",
                            style: TextFontStyle.headline7E8A97w400text13),
                        UIHelper.horizontalSpace(80),
                        Text("Forgot password?",
                            style: TextFontStyle.headlineFF7622w400text14)
                      ],
                    ),
                    UIHelper.verticalSpace(26.h),
                    CustomFoodButtonWidget(
                      titleStyle: TextFontStyle.headlineFFFFFFw700text14,
                      onTap: () {
                        NavigationService.navigateTo(Routes.signUpScreen);
                      }, name: 'Log In'),
                    UIHelper.verticalSpace(25.h),
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Don’t have an account?',style: TextFontStyle.headline646982w700text14),
                        Text('Sign Up',style: TextFontStyle.headlineFF7622w700text14)
                      ],
                    ),
                    UIHelper.verticalSpace(20.h),
                    Center(child: Text('Or',style: TextFontStyle.headline646982w400text16)),
                    UIHelper.verticalSpace(25.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        SvgPicture.asset(Assets.icons.fachbook),
                        UIHelper.horizontalSpace(15.w),
                        SvgPicture.asset(Assets.icons.openpakhi),
                        UIHelper.horizontalSpace(15.w),
                        SvgPicture.asset(Assets.icons.apple)
                      ],
                    )
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


