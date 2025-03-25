import 'dart:async';

import 'package:anytimetp_app/constants/text_font_style.dart';
import 'package:anytimetp_app/gen/colors.gen.dart';
import 'package:anytimetp_app/helpers/all_routes.dart';
import 'package:anytimetp_app/helpers/navigation_service.dart';
import 'package:anytimetp_app/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import '../../../common_widget/custom_button_widget.dart';
import '../../../gen/assets.gen.dart';
class FinishScreen extends StatefulWidget {
  const FinishScreen({super.key});

  @override
  State<FinishScreen> createState() => _FinishScreenState();
}

class _FinishScreenState extends State<FinishScreen> {
  int seconds = 0; int minutes = 0; double progress = 0.5; String currentTime = "00:00";
  @override
  void initState() {
    super.initState();
    startTimer();
  }
  void startTimer() {
    Timer.periodic(const Duration(seconds: 1), (timer) {setState(() {  seconds++;
    if (seconds == 60) {seconds = 0; minutes++;
    }
    currentTime = "${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}";
    progress = 0.5 + ((minutes * 60 + seconds) / 7200.0);
    });
    });
  }
  Color getProgressColor(double progress) {
    if (progress <= 0.5) {int red = (255 * (1 - progress * 2)).toInt(); int green = (255 * progress * 2).toInt();
    return Color.fromRGBO(red, green, 0, 1);
    } else {
      return AppColors.c7012CE;

    }
  }
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColors.scaFold,
      body: SingleChildScrollView(
        child: Column(
          children: [
            UIHelper.verticalSpace(70.h),
            Container(
              height: 757.h,
              // height: MediaQuery.sizeOf(context).height,
              decoration: BoxDecoration(
                  color: AppColors.c070417,
                  borderRadius: BorderRadius.circular(30.r)
              ),
              child: Padding(
                padding:  EdgeInsets.symmetric(horizontal: 16.w,vertical: 15.h),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(padding: EdgeInsets.symmetric(vertical: 4.h,horizontal: 35.w),
                          decoration: BoxDecoration(
                            color: AppColors.container,
                            borderRadius: BorderRadius.circular(8.r),
                          ),
                        ),
                      ],
                    ),
                    UIHelper.verticalSpace(20.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('RasTon Project',style: TextFontStyle.headlineNumberFFFFFF.copyWith(fontSize: 20.sp)),
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 7.h,horizontal: 7.w),
                          decoration: BoxDecoration(
                              color: AppColors.c070417,
                              borderRadius: BorderRadius.circular(8.r),
                            border: Border.all(color: AppColors.cFD5B71)
                          ),child: Text('Work',style: TextFontStyle.headlineFD5B71),
                        )
                      ],
                    ),
                    UIHelper.verticalSpace(15.h),
                    Row(
                      children: [
                        Image.asset(Assets.icons.progressicon.path,height: 20.h),
                        UIHelper.horizontalSpace(10.w),
                        Text('UI Design',style: TextFontStyle.headlineFFFFFFw400)
                      ],
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.1),
                    Center(
                      child: CircularPercentIndicator(
                        radius: 90.0.r,
                        lineWidth: 14.0.w,
                        percent: progress.clamp(0.0, 1.0),
                        center: Text(
                            currentTime,
                            style: TextFontStyle.headlineNumberFFFFFF
                        ),
                        progressColor: getProgressColor(progress),
                        backgroundColor: AppColors.container,
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.2),
                    Padding(
                      padding:   EdgeInsets.all(8.0.sp),
                      child: CustomButtonWidget(
                        textStyleColor: TextFontStyle.headlineNumberFFFFFF.copyWith(fontSize: 20.sp),
                        color: AppColors.c1B143F,
                        onTap: () {
                          NavigationService.navigateTo(Routes.productivityScreen);

                        }, name: 'Finish',),
                    ),
                    UIHelper.verticalSpace(7.h),
                    Text('Quit',style: TextFontStyle.headlineB4B3B9)

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
