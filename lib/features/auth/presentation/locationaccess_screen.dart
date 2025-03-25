import 'package:anytimetp_app/common_widget/custom_food_button_widget.dart';
import 'package:anytimetp_app/constants/text_font_style.dart';
import 'package:anytimetp_app/gen/assets.gen.dart';
import 'package:anytimetp_app/helpers/all_routes.dart';
import 'package:anytimetp_app/helpers/navigation_service.dart';
import 'package:anytimetp_app/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';


class LocationAccessScreen extends StatefulWidget {
  const LocationAccessScreen({super.key});

  @override
  State<LocationAccessScreen> createState() => _LocationAccessScreenState();
}

class _LocationAccessScreenState extends State<LocationAccessScreen> {
  int selectedIndex = -1;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 18.h, horizontal: 15.w),
        child: Column(
          children: [
            UIHelper.verticalSpace(50.h),
            Container(
              decoration: BoxDecoration(
                border: Border.all(color: Colors.white, width: 2),
                borderRadius: BorderRadius.circular(75.w),
              ),
              child: ClipRRect(
                borderRadius: BorderRadius.circular(75.w),
                child: Image.asset(
                  Assets.images.imageui.path,
                  fit: BoxFit.cover,
                ),
              ),
            ),
            SizedBox(height: MediaQuery.of(context).size.height * 0.1),
            CustomFoodButtonWidget(
              mapIcon: SvgPicture.asset(Assets.icons.map,height: 18.h),
              onTap: () {
                NavigationService.navigateTo(Routes.homeDeliveryScreen);
              },
              name: 'Access LOCATION',
              titleStyle: TextFontStyle.headlineFFFFFFw700text14.copyWith(fontSize: 13.sp),
            ),
            UIHelper.verticalSpace(20.h),
            Padding(
              padding: const EdgeInsets.all(19.0),
              child: Text('DFOOD WILL ACCESS YOUR LOCATION ONLY WHILE USING THE APP',style: TextFontStyle.headline646982w400text16,textAlign: TextAlign.center,),
            )
          ],
        ),
      ),
    );
  }
}
