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

class MasterCardScreen extends StatefulWidget {
  const MasterCardScreen({super.key});

  @override
  State<MasterCardScreen> createState() => _MasterCardScreenState();
}
class _MasterCardScreenState extends State<MasterCardScreen> {
  int selectedIndex = 2;

  final List<Map<String, String>> paymentMethods = [
    {"name": "Cash", "image": "assets/images/card.png"},
    {"name": "Visa", "image": "assets/images/card.png"},
    {"name": "Mastercard", "image": "assets/images/dog.png"},
    {"name": "Paypal", "image": "assets/images/card.png"},
  ];
  bool _showCardNumber = false;

  @override
  Widget build(BuildContext context) {
    return   Scaffold(
      backgroundColor: AppColors.cFFFFFF,
      body: Padding(
        padding: EdgeInsets.symmetric(vertical: 60.h, horizontal: 20.w),
        child: SingleChildScrollView(
          child: Column(
            children: [
              Row(
                children: [
                  GestureDetector( onTap: (){NavigationService.goBack;},
                    child: CircleAvatar(
                      radius: 22.r,
                      backgroundColor: AppColors.cECF0F4,
                      child: SvgPicture.asset(Assets.icons.back, height: 45.h),
                    ),
                  ),
                  UIHelper.horizontalSpace(10.w),
                  Text(
                    'Payment',style: TextFontStyle.headline181C2Ew400text14.copyWith(fontSize: 17.sp))]),

              UIHelper.verticalSpace(25.h),
              SizedBox(
                height: 100.h,
                child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: paymentMethods.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selectedIndex = index;
                        });
                      },
                      child: Column(
                        children: [
                          Container( margin:  EdgeInsets.symmetric(horizontal: 10.w),padding:  EdgeInsets.all(10.sp),
                            decoration: BoxDecoration(
                              border: Border.all(color: selectedIndex == index ? Colors.orange : Colors.transparent,  width: 2.w,
                              ),
                              borderRadius: BorderRadius.circular(10.r),
                            ),
                            child: Image.asset(paymentMethods[index]['image']!,
                                width: 50.w, height: 40.h),
                          ),
                          Text(paymentMethods[index]['name']!,style:   const TextStyle(color: AppColors.c464E57)),

                        ],
                      ),
                    );
                  },
                ),
              ),
              UIHelper.verticalSpace(20.h),
              Container(padding: EdgeInsets.symmetric(vertical: 7.h,horizontal: 18.w),
                decoration: BoxDecoration(  color: AppColors.cF4F5F7,   borderRadius: BorderRadius.circular(12.r)),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  mainAxisSize: MainAxisSize.min,
                  children: [
                    Text(
                        "Master Card",  style: TextFontStyle.headline32343Ew700text14.copyWith(fontSize: 16.sp)),
                  UIHelper.verticalSpace(8.h),
                    Row( mainAxisAlignment: MainAxisAlignment.spaceBetween,
                      children: [
                        Row(
                          children: [
                            Image.asset(
                              Assets.images.mastercard.path,
                              height: 24.h,
                            ),
                            SizedBox(width: 8.w),
                            Text(
                                _showCardNumber ? "1234 5678 9012 436" : "**** **** **** 436",
                                style:  TextFontStyle.headline93949Aw400text16
                            ),
                          ],
                        ),
                        IconButton(
                          icon: const Icon(Icons.arrow_drop_down),
                          onPressed: () {
                            setState(() {
                              _showCardNumber = !_showCardNumber;
                            });
                          },
                        ),
                      ],
                    ),
                  ],
                ),
              ),UIHelper.verticalSpace(20.h),
              GestureDetector(
                onTap: () {},
                child: Container(
                  padding:  EdgeInsets.symmetric(vertical: 15.h),
                  decoration: BoxDecoration(
                    color: AppColors.cFFFFFF,
                    border: Border.all(color: AppColors.cF0F5FA,width: 1.w),
                    borderRadius: BorderRadius.circular(10.r),
                  ),
                  child:  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: [
                      const Icon(Icons.add, color: Colors.orange),
                      UIHelper.horizontalSpace(10.w),
                      Text(
                          "ADD NEW",
                          style:  TextFontStyle.headlineFF7622w700text14
                      ),
                    ],
                  ),
                ),
              ),
           UIHelper.verticalSpace(210.h),
              Row(
                children: [
                  Text('Total:',style: TextFontStyle.headlineA0A5BAw400text14),
                  UIHelper.horizontalSpace(10.w),
                  Text('\$96',style: TextFontStyle.headline181C2Ew400text14),
                ],
              ),
              UIHelper.verticalSpace(40.h),
              CustomFoodButtonWidget(titleStyle: TextFontStyle.headlineFFFFFFw700text14,
                  onTap: (){
                    NavigationService.navigateTo(Routes.addCardScreen);
                  }, name: 'Pay & Confirm'),
              UIHelper.verticalSpace(20.h)
            ],
          ),
        ),
      ),
    );
  }
}
