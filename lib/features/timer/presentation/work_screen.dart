import 'dart:async';
import 'package:anytimetp_app/constants/text_font_style.dart';
import 'package:anytimetp_app/gen/colors.gen.dart';
import 'package:anytimetp_app/helpers/all_routes.dart';
import 'package:anytimetp_app/helpers/navigation_service.dart';
import 'package:anytimetp_app/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../common_widget/custom_button_widget.dart';
import '../../../gen/assets.gen.dart';
class WorkScreen extends StatefulWidget {
  const WorkScreen({super.key});
  @override
  State<WorkScreen> createState() => _WorkScreenState();
}
class _WorkScreenState extends State<WorkScreen> {
  int seconds = 0; int minutes = 0; int hours = 0;
  String currentTime = "00:00:00";
  @override
  void initState() {
    super.initState();
    startTimer();
  }
  void startTimer() {
    Timer.periodic(const Duration(seconds: 1), (timer) {
      setState(() { seconds++;
        if (seconds == 60) {
          seconds = 0;
          minutes++;
        }
        if (minutes == 60) { minutes = 0; hours++;}
        currentTime = "${hours.toString().padLeft(2, '0')}:${minutes.toString().padLeft(2, '0')}:${seconds.toString().padLeft(2, '0')}";
      });
    });
  }

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColors.scaFold,
      body: SingleChildScrollView(
        child: Column(
          children: [
            UIHelper.verticalSpace(70.h),
            Container(  height: 740.h,
              // height: MediaQuery.sizeOf(context).height,
              decoration: BoxDecoration(color: AppColors.cFFFFFF,
                  borderRadius: BorderRadius.circular(30.r)
              ),
              child: Padding( padding:  EdgeInsets.symmetric(horizontal: 16.w,vertical: 15.h),
                child: Column(
                  children: [
                    Row(mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(vertical: 4.h,horizontal: 35.w),
                          decoration: BoxDecoration(color: AppColors.container,
                            borderRadius: BorderRadius.circular(8.r)))]),

                    UIHelper.verticalSpace(50.h),

                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('RasTon Project',style: TextFontStyle.headlineTasKc070417.copyWith(fontSize: 20.sp)),
                        Container( padding: EdgeInsets.symmetric(vertical: 5.h,horizontal: 5.w),
                          decoration: BoxDecoration( color: AppColors.cFFFFFF,
                              borderRadius: BorderRadius.circular(8.r),
                              border: Border.all(color: AppColors.cFD5B71)),
                       child: Text('Work',style: TextFontStyle.headlineFD5B71))]),

                    UIHelper.verticalSpace(15.h),
                    Row(
                      children: [
                        Image.asset(Assets.icons.progressicon.path,height: 20.h),
                        UIHelper.horizontalSpace(10.w),
                        Text('UI Design',style: TextFontStyle.headline070417w40015)
                      ],
                    ),
                    UIHelper.verticalSpace(140.h),
                    Text( currentTime,
                      style: TextFontStyle.headline070417w40015.copyWith(fontSize: 32.sp)),

                    UIHelper.verticalSpace(190.h),
                    Padding(padding:   EdgeInsets.all(15.0.sp),

                      child: CustomButtonWidget(color: AppColors.container,textStyleColor: TextFontStyle.headlineTasKc070417.copyWith(fontSize: 20.sp),
                        onTap: () {
                        NavigationService.navigateTo(Routes.rasSionScreen);
                        }, name: 'Finish')),
                    Text('Quit',style: TextFontStyle.headline52505D)

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
