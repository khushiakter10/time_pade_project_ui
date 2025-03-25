import 'package:anytimetp_app/common_widget/custom_food_button_widget.dart';
import 'package:anytimetp_app/constants/text_font_style.dart';
import 'package:anytimetp_app/gen/assets.gen.dart';
import 'package:anytimetp_app/gen/colors.gen.dart';
import 'package:anytimetp_app/helpers/all_routes.dart';
import 'package:anytimetp_app/helpers/navigation_service.dart';
import 'package:anytimetp_app/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'widget/custom_card_container.dart';



class AddToCardScreen extends StatefulWidget {
  const AddToCardScreen({super.key});

  @override
  State<AddToCardScreen> createState() => _AddToCardScreenState();
}
class _AddToCardScreenState extends State<AddToCardScreen> {
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      body: SingleChildScrollView(padding: EdgeInsets.symmetric(vertical: 40.h,horizontal: 15.w),
        child: Column(crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Row(
              children: [
                GestureDetector(onTap: (){NavigationService.goBack;},
                  child: CircleAvatar(
                    radius: 22.r,
                    backgroundColor: AppColors.cECF0F4,
                    child: SvgPicture.asset(Assets.icons.back, height: 45.h),
                  ),
                ),
                UIHelper.horizontalSpace(10.w),
                Text(
                  'Add Card',
                  style: TextFontStyle.headline181C2Ew400text14.copyWith(fontSize: 17.sp),
                ),
              ],
            ),
            UIHelper.verticalSpace(40.h),
            Text('card holder name',style: TextFontStyle.headlineA0A5BAw400text14),
            UIHelper.verticalSpace(15.h),
           const CustomCardContainer(
             title: 'Vishal Khadok',
           ),
            UIHelper.verticalSpace(25.h),
            Text('Card number',style: TextFontStyle.headlineA0A5BAw400text14),
            UIHelper.verticalSpace(15.h),
            CustomCardContainer(
              padding: EdgeInsets.symmetric(horizontal: 89.w,vertical: 20.h),
             title: '2134 _ _ _ _ _ _ _ _',
           ) ,
            UIHelper.verticalSpace(25.h),
            Row(
              children: [
                Text('Expire date',style: TextFontStyle.headlineA0A5BAw400text14),
              UIHelper.horizontalSpace(130.w),
              Text('cvc',style: TextFontStyle.headlineA0A5BAw400text14)
              ],
            ),
            UIHelper.verticalSpace(15.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                CustomCardContainer(
                  padding: EdgeInsets.symmetric(horizontal: 30.w,vertical: 20.h),
                  title: 'mm/yyyy',
                ) ,
                // UIHelper.horizontalSpace(75.w),
                CustomCardContainer(
                  padding: EdgeInsets.symmetric(horizontal: 50.w,vertical: 20.h),
                  title: '***  ',
                ) ,
              ],
            ),
            UIHelper.verticalSpace(25.h),
            SizedBox(height: MediaQuery.of(context).size.height * 0.2.h),
            CustomFoodButtonWidget(
              titleStyle: TextFontStyle.headlineFFFFFFw700text14,
                onTap: (){
                NavigationService.navigateTo(Routes.messageScreen);
                }, name: 'Add & Make Payment')
          ],
        ),
      ),
    );
  }
}


