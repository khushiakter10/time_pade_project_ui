import 'dart:async';
import 'package:anytimetp_app/constants/text_font_style.dart';
import 'package:anytimetp_app/gen/colors.gen.dart';
import 'package:anytimetp_app/helpers/navigation_service.dart';
import 'package:anytimetp_app/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import '../../../common_widget/custom_button_widget.dart';
import '../../../gen/assets.gen.dart';
import 'package:anytimetp_app/helpers/all_routes.dart';

class TimerScreen extends StatefulWidget {
  const TimerScreen({super.key});

  @override
  State<TimerScreen> createState() => _TimerScreenState();
}
class _TimerScreenState extends State<TimerScreen> {

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
    return Scaffold(
      backgroundColor: AppColors.scaFold,
      body: SingleChildScrollView(
        child: Column(
          children: [
            UIHelper.verticalSpace(70.h),
            Container(
              decoration: BoxDecoration(
                color: AppColors.cFFFFFF,
                borderRadius: BorderRadius.circular(30.r),
              ),
              child: Padding( padding: EdgeInsets.symmetric(horizontal: 16.w, vertical: 15.h),
                child: Column(
                  children: [
                    Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(  padding: EdgeInsets.symmetric(vertical: 4.h, horizontal: 35.w),
                          decoration: BoxDecoration(
                            color: AppColors.container,
                            borderRadius: BorderRadius.circular(8.r),
                          ),
                        )
                      ],
                    ),
                    UIHelper.verticalSpace(50.h),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('RasTon Project', style: TextFontStyle.headlineTasKc070417.copyWith(fontSize: 20.sp)),
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 7.h, horizontal: 7.w),
                          decoration: BoxDecoration(
                            color: AppColors.cFFEFF1,
                            borderRadius: BorderRadius.circular(8.r),
                          ),
                          child: Text('Work', style: TextFontStyle.headlineFD5B71),
                        )
                      ],
                    ),
                    UIHelper.verticalSpace(15.h),
                    Row(
                      children: [
                        Image.asset(Assets.icons.progressicon.path, height: 20.h),
                        UIHelper.horizontalSpace(10.w),
                        Text('UI Design', style: TextFontStyle.headline070417w40015)
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
                            style: TextFontStyle.headline070417w50032
                        ),
                        progressColor: getProgressColor(progress),
                        backgroundColor: AppColors.container,
                      ),
                    ),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.1),
                    Padding(padding: EdgeInsets.all(15.0.sp),
                      child: CustomButtonWidget(
                        textStyleColor: TextFontStyle.headlineTasKc070417.copyWith(fontSize: 20.sp),
                        color: AppColors.container,
                        onTap: () {NavigationService.navigateTo(Routes.workScreen);
                          },
                        name: 'Finish',
                      ),
                    ),
                    GestureDetector(
                      onTap: (){
                        NavigationService.navigateTo(Routes.workScreen);
                      },
                        child: Text('Quit', style: TextFontStyle.headline52505D)),
                    SizedBox(height: MediaQuery.of(context).size.height * 0.2),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
