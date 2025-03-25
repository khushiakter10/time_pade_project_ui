import 'package:anytimetp_app/common_widget/custom_food_button_widget.dart';
import 'package:anytimetp_app/common_widget/custom_textormfield_widget.dart';
import 'package:anytimetp_app/constants/text_font_style.dart';
import 'package:anytimetp_app/gen/assets.gen.dart';
import 'package:anytimetp_app/gen/colors.gen.dart';
import 'package:anytimetp_app/helpers/all_routes.dart';
import 'package:anytimetp_app/helpers/navigation_service.dart';
import 'package:anytimetp_app/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'widget/custom_card_widget.dart';



class EditCardScreen extends StatefulWidget {
  const EditCardScreen({super.key});
  @override
  State<EditCardScreen> createState() => _EditCardScreenState();
}
class _EditCardScreenState extends State<EditCardScreen> {
  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      backgroundColor: AppColors.c121223,
      body: SingleChildScrollView(
        padding:  EdgeInsets.symmetric(vertical: 50.h),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                GestureDetector( onTap: (){NavigationService.goBack;},
                  child: CircleAvatar(
                    radius: 22.r,
                    backgroundColor: AppColors.c000000,
                    child: SvgPicture.asset(Assets.icons.back, height: 45.h),
                  ),
                ),
                UIHelper.horizontalSpace(20.h),
                Text('Cart', style:  TextFontStyle.headlineFFFFFFw400.copyWith(fontSize: 17.sp)),
                UIHelper.horizontalSpace(160.h),
                Text('EDIT ITEMS', style: TextFontStyle.headlineFF7622w400text14),
              ],
            ),
            UIHelper.verticalSpace(20.h),
            const CustomCartWidget(name: "Pizza Calzone European", price: 64, quantity: 2),
            UIHelper.verticalSpace(20.h),
            const CustomCartWidget(name: "Pizza Calzone European", price: 32, quantity: 1),
            UIHelper.verticalSpace(100.h),

            Container(
              width: MediaQuery.of(context).size.width,
              height: 386.h,
              decoration: BoxDecoration(
                  color: AppColors.cFFFFFF,
                  borderRadius: BorderRadius.circular(30.r)
              ),
              child: Padding(
                padding:  EdgeInsets.all(20.0.sp),
                child: Column(
                  children: [
                    Row(mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Text('Delivery Address',style: TextFontStyle.headlineA0A5BAw400text14,),
                        Text('EDIT',style: TextFontStyle.headlineFF7622w400text14,)
                      ],
                    ),
                    UIHelper.verticalSpace(10.h),
                    CustomTextFormWiget(
                      hintTxt: '2118 Thornridge Cir. Syracuse',
                      hinStyleColor: TextFontStyle.headline91949Cw400text14.copyWith(fontSize: 16.sp),
                      fillColor: AppColors.cF0F5FA,
                      filled: true,
                      focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.r),
                          borderSide: const BorderSide(color: Colors.transparent)
                      ),
                      border: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.r),
                          borderSide: const BorderSide(color: Colors.transparent)
                      ),
                      enabledBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.circular(8.r),
                          borderSide: const BorderSide(color: Colors.transparent)
                      ),
                    ),
                    UIHelper.verticalSpace(30.h),
                    Row(
                      children: [
                        Text('Total:',style: TextFontStyle.headlineA0A5BAw400text14),
                        UIHelper.horizontalSpace(10.w),
                        Text('\$96',style: TextFontStyle.headline181C2Ew400text14),
                        UIHelper.horizontalSpace(155.w),
                        Text('breakdown',style: TextFontStyle.headlineFF7622w400text14),
                        UIHelper.horizontalSpace(10.w),
                        SvgPicture.asset(Assets.icons.arrwbak)
                      ],
                    ),
                    UIHelper.verticalSpace(120.h),
                    CustomFoodButtonWidget(onTap: () {
                      NavigationService.navigateTo(Routes.paymentMethodScreen);
                    }, name: 'Place ORder',),
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
