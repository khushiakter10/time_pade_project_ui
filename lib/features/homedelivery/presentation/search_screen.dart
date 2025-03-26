import 'package:anytimetp_app/common_widget/custom_textormfield_widget.dart';
import 'package:anytimetp_app/constants/text_font_style.dart';
import 'package:anytimetp_app/features/homedelivery/presentation/widget/custom_container_widget.dart';
import 'package:anytimetp_app/gen/assets.gen.dart';
import 'package:anytimetp_app/gen/colors.gen.dart';
import 'package:anytimetp_app/helpers/all_routes.dart';
import 'package:anytimetp_app/helpers/navigation_service.dart';
import 'package:anytimetp_app/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';

import 'widget/custom_chip_widget.dart';
class SearchScreen extends StatefulWidget {
  const SearchScreen({super.key});

  @override
  State<SearchScreen> createState() => _SearchScreenState();
}
class _SearchScreenState extends State<SearchScreen> {
  int? selectedChipIndex;
  String? selectedValue;
  List<String> items = ['Health', 'Food', 'Lifestyle', 'Sports', 'Nature'];
  @override
  Widget build(BuildContext context) {
    return  Scaffold(
      backgroundColor: AppColors.cFFFFFF,
        body: SingleChildScrollView(
            padding: EdgeInsets.symmetric(vertical: 50.h,horizontal: 15.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    GestureDetector(
                      onTap: (){NavigationService.goBack;},
                      child: CircleAvatar(
                        radius: 22.r,
                        backgroundColor: AppColors.cECF0F4,
                        child: SvgPicture.asset(Assets.icons.back, height: 45.h),
                      ),
                    ),
                    UIHelper.horizontalSpace(20.w),
                    Text('Search',style: TextFontStyle.headline181C2Ew400text14.copyWith(fontSize: 17.sp)),
                    UIHelper.horizontalSpace(160.w),
                    CircleAvatar( radius: 25, backgroundColor: AppColors.c000000,
                        child: SvgPicture.asset(Assets.icons.drwer)
                    )

                  ],
                ),
                UIHelper.verticalSpace(15.h),
                CustomTextFormWiget(
                  prefixIcon: Padding(
                    padding:  const EdgeInsets.all(14.0),
                    child: SvgPicture.asset(Assets.icons.search,height: 11.h,),
                  ),
                  hintTxt: 'Pizza',
                  hinStyleColor: TextFontStyle.headline676767w400text14,
                  suffixIcon: Padding(
                    padding: const EdgeInsets.all(13.0),
                    child: SvgPicture.asset(Assets.icons.crosss,height: 11.h,),
                  ),
                  fillColor: AppColors.cF0F5FA, filled: true,
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
                UIHelper.verticalSpace(10.h),
                GestureDetector(
                  onTap: (){
                    NavigationService.navigateTo(Routes.ongoingScreen);
                  },
                    child: Text('Recent Keywords',style: TextFontStyle.headline32343Ew400text13.copyWith(fontSize: 20.sp))),
                UIHelper.verticalSpace(20.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    CustomChipWidget(
                      titleTextStyle: TextFontStyle.headline32343Ew700text14,label: 'Burger',
                      imagePath: Assets.images.burger.path,  defaultColor: AppColors.cFFFFFF,
                      index: 1, isSelected: selectedChipIndex == 1,
                      onSelect: (int index) {
                        setState(() {
                          if (selectedChipIndex == index) {
                            selectedChipIndex = null;
                          } else {
                            selectedChipIndex = index;
                          }
                        });
                      },
                    ),
                    UIHelper.horizontalSpace(10.w),
                    CustomChipWidget(
                      titleTextStyle: TextFontStyle.headline32343Ew700text14,label: 'Burger',
                      imagePath: Assets.images.dog.path,  defaultColor: AppColors.cFFFFFF,
                      index: 2, isSelected: selectedChipIndex == 2,
                      onSelect: (int index) {
                        setState(() {
                          if (selectedChipIndex == index) {
                            selectedChipIndex = null;
                          } else {
                            selectedChipIndex = index;
                          }
                        });
                      },
                    ),
                    UIHelper.horizontalSpace(10.w),
                    CustomChipWidget(
                      titleTextStyle: TextFontStyle.headline32343Ew700text14,label: 'Burger',
                      imagePath: Assets.images.picture2.path,  defaultColor: AppColors.cFFFFFF,
                      index: 3, isSelected: selectedChipIndex == 3,
                      onSelect: (int index) {
                        setState(() {
                          if (selectedChipIndex == index) {
                            selectedChipIndex = null;
                          } else {
                            selectedChipIndex = index;
                          }
                        });
                      },
                    ),
                  ],
                ),
                UIHelper.verticalSpace(20.h),
                Text('Suggested Restaurants',style: TextFontStyle.headline32343Ew400text13.copyWith(fontSize: 20.sp)),
                UIHelper.verticalSpace(20.h),

                GestureDetector(
                  onTap: (){
                    NavigationService.navigateTo(Routes.ongoingScreen);
                  },
                  child: ListView.builder(
                    controller: ScrollController(),
                    padding: EdgeInsets.zero,
                    itemCount: 20,
                    scrollDirection: Axis.vertical,
                    shrinkWrap: true,
                    itemBuilder: (context, index) {
                      return Column(
                        children: [
                          CustomDesignWidget(
                            data: '4.7',
                           staricon: SvgPicture.asset(Assets.icons.starticon),
                            image1: AssetImage(Assets.images.dog.path),
                            title: 'Pansi Restaurant',
                          ),
                         UIHelper.verticalSpace(8.h),
                          UIHelper.customDivider(
                            color: AppColors.cEBEBEB,
                            height: 2.h
                          ),
                          UIHelper.verticalSpace(8.h),
                        ],
                      );
                    },
                  ),
                )
              ],
            )));

  }
}
