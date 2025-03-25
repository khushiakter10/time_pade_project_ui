import 'package:anytimetp_app/constants/text_font_style.dart';
import 'package:anytimetp_app/gen/colors.gen.dart';
import 'package:anytimetp_app/helpers/all_routes.dart';
import 'package:anytimetp_app/helpers/navigation_service.dart';
import 'package:anytimetp_app/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:pinput/pinput.dart';
import '../../../common_widget/custom_food_button_widget.dart';
class VerificationScreen extends StatefulWidget {
  const VerificationScreen({super.key});

  @override
  State<VerificationScreen> createState() => _VerificationScreenState();
}

class _VerificationScreenState extends State<VerificationScreen> {
  final  _pinController = TextEditingController();
  bool checkbox1 = true;
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColors.c121223,
      body: SingleChildScrollView(
        child: Column(
          children: [
            UIHelper.verticalSpace(90.h),
            Center(child: Text('Verification',style: TextFontStyle.arabic26cFFFFFFFFStyleNotoNaskh.copyWith(fontSize: 30.sp))),
            UIHelper.verticalSpace(3.h),
            Text('We have sent a code to your email',style: TextFontStyle.headlineDCDCDEw400text16),
            Text('example@gmail.com',style: TextFontStyle.headlineDCDCDEw400text16),
            UIHelper.verticalSpace(40.h),
            Container(
              width: MediaQuery.of(context).size.width,
              height: MediaQuery.of(context).size.height * 0.7,
              decoration: BoxDecoration(
                  color: AppColors.cFFFFFF,
                  borderRadius: BorderRadius.circular(30.r)
              ),
              child: Padding(padding:  EdgeInsets.symmetric(vertical: 28.h,horizontal: 18.w),
                child: Column( crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Code',style: TextFontStyle.headline32343Ew400text13),
                        Text('Resend in.50sec',style: TextFontStyle.headline32343Ew700text14)
                      ],
                    ),
                    UIHelper.verticalSpace(20.h),
                    Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Pinput(
                          preFilledWidget: Text(
                            "0",
                            style:TextFontStyle.headline32343Ew700text14.copyWith(fontSize: 16.sp)
                          ),
                          controller: _pinController,
                          length: 4,
                          pinAnimationType: PinAnimationType.fade,
                          onCompleted: (pin) {
                          },
                          onChanged: (pin) {
                          },
                          defaultPinTheme: PinTheme(
                            padding: const EdgeInsets.symmetric(vertical: 17,horizontal: 25),
                            margin: EdgeInsets.symmetric(horizontal: 9.w),
                            // height: 62.h,
                            // width: 62.w,
                            textStyle:  TextFontStyle.headline070417,
                            decoration: BoxDecoration(
                              color: AppColors.cF0F5FA,
                              border: Border.all(color: Colors.transparent),
                              borderRadius: BorderRadius.circular(6.r))))],
                    ),
                    UIHelper.verticalSpace(60.h),
                    CustomFoodButtonWidget(titleStyle: TextFontStyle.headlineFFFFFFw700text14,
                        onTap: () {
                      NavigationService.navigateTo(Routes.locationAccessScreen);
                        }, name: 'Verify'),
                    UIHelper.verticalSpace(25.h),
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


