import 'package:anytimetp_app/constants/text_font_style.dart';
import 'package:anytimetp_app/features/card/presentation/widget/custom_traking_widget.dart';
import 'package:anytimetp_app/gen/assets.gen.dart';
import 'package:anytimetp_app/gen/colors.gen.dart';
import 'package:anytimetp_app/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';

import '../../../helpers/navigation_service.dart';

class OrderTrackingScreen extends StatelessWidget {
  const OrderTrackingScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cD0D9E1,
      body: SingleChildScrollView(padding: EdgeInsets.symmetric( vertical: 55.h),
        child: Column(
          children: [
            Padding(
              padding:  EdgeInsets.all(11.0.sp),
              child: Row(
                children: [
                  GestureDetector( onTap: (){NavigationService.goBack;},
                    child: CircleAvatar(
                      radius: 22.r,
                      backgroundColor: AppColors.c000000,
                      child:  Image.asset(Assets.images.back.path,height: 16.h,)
                    ),
                  ),
                  UIHelper.horizontalSpace(10.w),
                  Text(
                    'Track Order',
                    style: TextFontStyle.headline181C2Ew400text14.copyWith(fontSize: 17.sp),
                  ),
                ],
              ),
            ),
            UIHelper.verticalSpace(130.h),
            const CustomTrakingWidget(
              title: 'Uttora Coffee House',
             subtitle: 'Orderd at 06 Sept, 10:00pm',
              subtitle2: '2x Burger',
            )
          ],
        ),
      ),
    );
  }}


