import 'package:anytimetp_app/helpers/all_routes.dart';
import 'package:anytimetp_app/helpers/navigation_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../constants/text_font_style.dart';
import '../../../gen/assets.gen.dart';
import '../../../gen/colors.gen.dart';
import '../../../helpers/ui_helpers.dart';

class AddresssScreen extends StatefulWidget {
  const AddresssScreen({super.key});

  @override
  State<AddresssScreen> createState() => _AddresssScreenState();
}

class _AddresssScreenState extends State<AddresssScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cFFFFFF,
      body: SingleChildScrollView( padding: EdgeInsets.symmetric(vertical: 50.h, horizontal: 20.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                CircleAvatar(
                  radius: 22.r,
                  backgroundColor: AppColors.cECF0F4,
                  child: SvgPicture.asset(Assets.icons.back, height: 45.h),
                ),
                UIHelper.horizontalSpace(10.w),
                GestureDetector(
                  onTap: (){
                    NavigationService.navigateTo(Routes.addNewAdressScreen);
                  },
                  child: Text(
                    'My Address',
                    style: TextFontStyle.headline181C2Ew400text14.copyWith(fontSize: 17.sp),
                  ),
                ),

              ],
            ),
            UIHelper.verticalSpace(20.h),
            Container(padding: EdgeInsets.symmetric(vertical: 20.h,horizontal: 15.w),
              decoration:  BoxDecoration(
                borderRadius: BorderRadius.circular(15.r),
                color: AppColors.cF0F5FA),
              child:  Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(padding: EdgeInsets.symmetric(vertical: 24.h, horizontal: 25.w),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.r),
                    image: DecorationImage(image: AssetImage(Assets.images.home.path)),
                  ),
                ),
                UIHelper.horizontalSpace(7.w),
                Expanded(
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Home',
                        style: TextFontStyle.headline32343Ew400text13.copyWith(fontSize: 14.sp),
                      ),
                      UIHelper.verticalSpace(4.h),
                      Text('2464 Royal Ln. Mesa, New Jersey 45463', style: TextFontStyle.headline91949Cw400text14),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Image.asset(Assets.images.home.path,height: 36.h),
                    UIHelper.horizontalSpace(4.w),
                    Image.asset(Assets.images.deleteIcon.path,height: 20.h)
                  ],
                )
              ],
            ),
            ),
            UIHelper.verticalSpace(11.h),
            Container(padding: EdgeInsets.symmetric(vertical: 20.h,horizontal: 15.w),
              decoration:  BoxDecoration(
                  borderRadius: BorderRadius.circular(15.r),
                color: AppColors.cF0F5FA),
              child:  Row(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Container(padding: EdgeInsets.symmetric(vertical: 24.h, horizontal: 25.w),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(8.r),
                    image: DecorationImage(image: AssetImage(Assets.images.home.path)),
                  ),
                ),
                UIHelper.horizontalSpace(7.w),
                Expanded(
                  child: Column(crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Home',
                        style: TextFontStyle.headline32343Ew400text13.copyWith(fontSize: 14.sp),
                      ),
                      UIHelper.verticalSpace(4.h),
                      Text('2464 Royal Ln. Mesa, New Jersey 45463', style: TextFontStyle.headline91949Cw400text14),
                    ],
                  ),
                ),
                Row(
                  children: [
                    Image.asset(Assets.images.home.path,height: 36.h),
                    UIHelper.horizontalSpace(4.w),
                    Image.asset(Assets.images.deleteIcon.path,height: 20.h)
                  ],
                )
              ],
            ),
            ),

          ],
        ),
      ),
    );
  }
}
