import 'dart:async';
import 'package:anytimetp_app/constants/text_font_style.dart';
import 'package:anytimetp_app/gen/colors.gen.dart';
import 'package:anytimetp_app/helpers/all_routes.dart';
import 'package:anytimetp_app/helpers/navigation_service.dart';
import 'package:anytimetp_app/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../gen/assets.gen.dart';
import 'widget/custom_taskContainer_widget.dart';
import 'custom_today_widget.dart';
class HomeScreen extends StatefulWidget {
  const HomeScreen({super.key});

  @override
  State<HomeScreen> createState() => _HomeScreenState();
}
class _HomeScreenState extends State<HomeScreen> {
  final List<String> image = [
    'assets/images/picture1.png','assets/images/picture2.png',
    'assets/images/picture1.png', 'assets/images/picture3.png',
    'assets/images/picture4.png','assets/images/picture1.png',
    'assets/images/picture3.png','assets/images/picture1.png','assets/images/picture4.png',
  ];
  final List<String> title = [
    'UI Design','100x Sit-Up','UI Design','UI Design','100x Sit-Up',
    'UI Design','UI Design','100x Sit-Up','100x Sit-Up',

  ];
  final List<String> time = [
    '00:42:21','00:14:06','00:24:52','00:21:09','00:24:52',
    '00:42:21','00:14:06','00:24:52','00:21:09',
  ];
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
    return Scaffold(
      backgroundColor: AppColors.scaFold,
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 15.h, horizontal: 20.w),
        child: Column(
          children: [
            UIHelper.verticalSpace(50.h),
            Row(
              children: [
                Text('Task', style: TextFontStyle.headlineTasKc070417),
                 UIHelper.horizontalSpace(225.w),
                 const CustomTaskContainerWidget(),
                UIHelper.horizontalSpace(5.w),
                 const CustomTaskContainerWidget(),
                UIHelper.horizontalSpace(5.w),
                 const CustomTaskContainerWidget(),
              ],
            ),
            UIHelper.verticalSpace(10.h),
            Container(padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 10.w),
              decoration: BoxDecoration(color: AppColors.c070417,
                borderRadius: BorderRadius.circular(8.r),
              ),
              child: Padding( padding:  EdgeInsets.all(8.0.sp),
                child: Column(
                  children: [
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text( currentTime,
                            style: TextFontStyle.headlineNumberFFFFFF.copyWith(fontSize: 20.sp) ),

                        GestureDetector( onTap: (){ NavigationService.navigateTo(Routes.timerScreen);},
                            child: SvgPicture.asset( Assets.icons.arrw, height: 24.h))]),

                    UIHelper.verticalSpace(10.h),
                    Row(
                      children: [SvgPicture.asset(Assets.icons.progres, height: 12.h),
                        UIHelper.horizontalSpace(11.w),
                        Text('RasTon Project',style: TextFontStyle.headlineFFFFFFw400.copyWith(fontSize: 16.sp))])]))),

            UIHelper.verticalSpace(17.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Today', style: TextFontStyle.headlineTasKc070417.copyWith(fontSize: 20.sp,fontWeight: FontWeight.w500)),
                Text('See All', style: TextFontStyle.headlineTasKc070417.copyWith(fontSize: 20.sp))
              ],
            ),
            UIHelper.verticalSpace(17.h),
            GestureDetector(
              onTap: (){
               NavigationService.navigateTo(Routes.timerScreen);
              },
              child: ListView.separated(
                controller: ScrollController(),
                padding: EdgeInsets.zero,
                shrinkWrap: true,
                scrollDirection: Axis.vertical,
                itemBuilder: (BuildContext context, int index) {
                  return CustomTodayListContainer(
                    title: title[index], titleTextStyle: TextFontStyle.headline14StyleMontserrat500,
                    time: time[index],timeTextStyle: TextFontStyle.headline4F4F4F,
                    subTitle1: 'Work',subTitleTextStyle1: TextFontStyle.headlineWorkFD5B71,
                    subTitle2: 'Working',subTitleTextStyle2: TextFontStyle.headline9B51E0,
                    image: Image.asset( image[index],height: 24.h,
                    ),
                    playIcon: SvgPicture.asset(Assets.icons.soundIcon),
                  );
                },
                separatorBuilder: (BuildContext context, int index) {
                  return UIHelper.verticalSpace(10.h);
                },
                itemCount: image.length),
            )],
        )),
    );
  }
}
