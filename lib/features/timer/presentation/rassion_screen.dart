import 'dart:async';
import 'package:anytimetp_app/constants/text_font_style.dart';
import 'package:anytimetp_app/gen/colors.gen.dart';
import 'package:anytimetp_app/helpers/all_routes.dart';
import 'package:anytimetp_app/helpers/navigation_service.dart';
import 'package:anytimetp_app/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:percent_indicator/circular_percent_indicator.dart';
import '../../../gen/assets.gen.dart';
class RasSionScreen extends StatefulWidget {
  const RasSionScreen({super.key});

  @override
  State<RasSionScreen> createState() => _RasSionScreenState();
}

class _RasSionScreenState extends State<RasSionScreen> {

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
      backgroundColor: AppColors.cFFFFFF,
      body: SingleChildScrollView(
        padding:  EdgeInsets.symmetric(horizontal: 16.w,vertical: 15.h),
        child: Column(
          children: [
            UIHelper.verticalSpace(70.h),
            Row(
              children: [
                GestureDetector(
                  onTap: (){
                    NavigationService.goBack;
                  },
                    child: Image.asset(Assets.icons.arrowBack.path,height: 24.h)),
                UIHelper.horizontalSpace(55.h),
                GestureDetector(
                  onTap: (){
                    NavigationService.navigateTo(Routes.finishScreen);
                  },
                    child: Text('RasTon Project',style: TextFontStyle.headlineTasKc070417.copyWith(fontSize: 20.sp))),
                UIHelper.horizontalSpace(55.h),
                Container( padding: EdgeInsets.symmetric(vertical: 7.h,horizontal: 7.w),
                  decoration: BoxDecoration( color: AppColors.cFFEFF1, borderRadius: BorderRadius.circular(8.r)),
                  child: Text('Work',style: TextFontStyle.headlineFD5B71),
                )
              ],
            ),
            UIHelper.verticalSpace(70.h),
            Row( mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Image.asset(Assets.icons.progressicon.path,height: 20.h),
                UIHelper.horizontalSpace(10.w),
                Text('UI Design',style: TextFontStyle.headline070417w40015)
              ],
            ),
            UIHelper.verticalSpace(80.h),
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
            // UIHelper.verticalSpace(100.h),
            Row(mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Column(
                  children: [
                    CircleAvatar(backgroundColor: AppColors.container,
                      radius: 22.r,
                      child: Image.asset(Assets.icons.redio.path,height: 24.h),
                    ),
                    Text('Pause',style: TextFontStyle.headline52505D)
                  ],
                ),
                UIHelper.horizontalSpace(70.w),
                Column(
                  children: [
                    CircleAvatar(radius: 22.r,
                      backgroundColor: AppColors.container,
                      child: Image.asset(Assets.icons.radiontwo.path,height: 24.h,),
                    ),
                    Text('Quit',style: TextFontStyle.headline52505D),
                  ],
                )
              ],
            )
          ],
        ),
      ),
    );
  }
}
