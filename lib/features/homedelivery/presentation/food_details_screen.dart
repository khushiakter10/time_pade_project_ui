import 'package:anytimetp_app/constants/text_font_style.dart';
import 'package:anytimetp_app/features/homedelivery/presentation/widget/custom-favorite_widget.dart';
import 'package:anytimetp_app/features/homedelivery/presentation/widget/custom_delivery_widget.dart';
import 'package:anytimetp_app/features/homedelivery/presentation/widget/custom_chiken_widget.dart';
import 'package:anytimetp_app/gen/colors.gen.dart';
import 'package:anytimetp_app/helpers/all_routes.dart';
import 'package:anytimetp_app/helpers/navigation_service.dart';
import 'package:anytimetp_app/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../gen/assets.gen.dart';

class FoodDetailsScreen extends StatefulWidget {
  const FoodDetailsScreen({super.key});

  @override
  State<FoodDetailsScreen> createState() => _FoodDetailsScreenState();
}

class _FoodDetailsScreenState extends State<FoodDetailsScreen> {
  int? selectedChipIndex;
  String? selectedValue;
  List<String> items = ['Health', 'Food', 'Lifestyle', 'Sports', 'Nature'];
  bool isFavorite = false;
  int selectedSizeIndex = 0;

  final List<String> sizes = ['10"', '12"', '14"'];
  final List<String> salt = [
    'assets/icons/Salt.png',
    'assets/icons/Chicken.png',
    'assets/icons/Onion.png',
    'assets/icons/Garlic.png',
    'assets/icons/Chili pepper.png'
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cFFFFFF,
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 50.h, horizontal: 15.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
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
                UIHelper.horizontalSpace(20.w),
                GestureDetector(onTap: (){NavigationService.navigateTo(Routes.searchScreen);},
                  child: Text(
                    'Details',
                    style: TextFontStyle.headline181C2Ew400text14.copyWith(fontSize: 17.sp),
                  ),
                ),
              ],
            ),
            UIHelper.verticalSpace(20.h),
            GestureDetector(onTap: (){NavigationService.navigateTo(Routes.searchScreen);},
              child: CustomFavoriteWidget(
                borderRadius: 22.r,
                imageProvider: AssetImage(Assets.images.vagitable.path),
              ),
            ),
            UIHelper.verticalSpace(20.h),
            Row(
              children: [
                Container(
                  padding: EdgeInsets.symmetric(vertical: 9.h, horizontal: 10.w),
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(30.r),
                    border: Border.all(color: AppColors.cADB9C6),
                  ),
                  child: Row(
                    children: [
                      Image.asset(Assets.icons.banna.path, height: 24.h),
                      UIHelper.horizontalSpace(17.w),
                      Text('Uttora Coffee House', style: TextFontStyle.headline181C2Ew400text14),
                    ],
                  ),
                ),
              ],
            ),
            UIHelper.verticalSpace(15.h),
            Text(
              'Pizza Calzone European',
              style: TextFontStyle.headline181C2Ew700text16.copyWith(fontSize: 20.sp),
            ),
            UIHelper.verticalSpace(7.h),
            Text(
              'Prosciutto e funghi is a pizza variety that is topped with tomato sauce.',
              style: TextFontStyle.headlineA0A5BAw400text14,
            ),
            UIHelper.verticalSpace(10.h),
            CustomDeliveryWidget(
              staricon: SvgPicture.asset(Assets.icons.star1),
              deliveryicon: SvgPicture.asset(Assets.icons.delivery),
              clockicon: SvgPicture.asset(Assets.icons.clock),
            ),
            UIHelper.verticalSpace(10.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Text(
                  'Size:',
                  style: TextFontStyle.headline32343Ew400text13.copyWith(fontSize: 13.sp),
                ),
                UIHelper.horizontalSpace(10.w),
                ...List.generate(sizes.length, (index) {
                  return GestureDetector(
                    onTap: () {
                      setState(() {
                        selectedSizeIndex = index;
                      });
                    },
                    child: Padding(
                      padding: EdgeInsets.symmetric(horizontal: 5.w),
                      child: CircleAvatar(
                        radius: 22.r,
                        backgroundColor: selectedSizeIndex == index
                            ? AppColors.cF58D1D
                            : Colors.grey.shade300,
                        child: Text(
                          sizes[index],
                          style: TextFontStyle.headline121223w400text16.copyWith(
                            color: selectedSizeIndex == index
                                ? AppColors.cFFFFFF
                                : AppColors.c000000,
                          ),
                        ),
                      ),
                    ),
                  );
                }),
              ],
            ),
            UIHelper.verticalSpace(10.h),
            Text('Ingredients', style: TextFontStyle.headline32343Ew400text13.copyWith(fontSize: 13.sp)),
            UIHelper.verticalSpace(15.h),
            CustomChikenWidget(salt: salt),
            UIHelper.verticalSpace(10.h),
          ],
        ),
      ),
    );
  }
}


