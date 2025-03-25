import 'package:anytimetp_app/constants/text_font_style.dart';
import 'package:anytimetp_app/gen/assets.gen.dart';
import 'package:anytimetp_app/gen/colors.gen.dart';
import 'package:anytimetp_app/helpers/all_routes.dart';
import 'package:anytimetp_app/helpers/navigation_service.dart';
import 'package:anytimetp_app/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

class CallingScreen extends StatelessWidget {
  const CallingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.c4C6176,
      body: Stack(
        children: [
          Positioned(
            bottom: 0,
            left: 0,
            right: 0,
            child: Container(
              width: double.infinity,
              padding: EdgeInsets.symmetric(vertical: 60.h),
              decoration: BoxDecoration(
                color: Colors.white,
                borderRadius: const BorderRadius.vertical(top: Radius.circular(20)),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black12,
                    blurRadius: 10.r,
                    spreadRadius: 2.r,
                  ),
                ],
              ),
              child: Column(
                mainAxisSize: MainAxisSize.min,
                children: [
                  CircleAvatar(
                    radius: 40.r,
                    backgroundImage: AssetImage(Assets.images.profile.path),
                    // Placeholder image
                  ),
                  UIHelper.verticalSpace(12.h),
                  Text(
                      "Khusbu",
                      style: TextFontStyle.headline181C2Ew700text16.copyWith(fontSize: 20.sp)
                  ),
                  UIHelper.verticalSpace(4.h),
                  Text(
                      "Connecting.......",
                      style: TextFontStyle.headline979797w400text16
                  ),
                  UIHelper.verticalSpace(24.h),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      IconButton(
                        icon: const Icon(Icons.mic_off, color: Colors.black54),
                        iconSize: 30.sp,
                        onPressed: () {},
                      ),
                      Stack(
                        alignment: Alignment.center,
                        children: [
                          Container(
                            padding: EdgeInsets.symmetric(horizontal: 10.w,vertical: 15.h),
                            decoration:  const BoxDecoration(
                              shape: BoxShape.circle,
                              color: AppColors.cFF3434,
                            ),
                            child: IconButton(
                              icon:  const Icon(Icons.call_end, color: Colors.white),
                              onPressed: () {
                                NavigationService.navigateTo(Routes.masterCardScreen);
                              },
                            ),
                          ),
                        ],
                      ),
                      IconButton(
                        icon: const Icon(Icons.volume_up, color: Colors.black54),
                        iconSize: 30.sp,
                        onPressed: () {},
                      ),
                    ],
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
