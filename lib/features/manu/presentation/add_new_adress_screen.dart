import 'package:anytimetp_app/features/manu/presentation/widget/custom_container-widget.dart';
import 'package:anytimetp_app/features/manu/presentation/widget/custom_select_unselect.dart';
import 'package:anytimetp_app/helpers/all_routes.dart';
import 'package:anytimetp_app/helpers/navigation_service.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../common_widget/custom_food_button_widget.dart';
import '../../../constants/text_font_style.dart';
import '../../../gen/assets.gen.dart';
import '../../../gen/colors.gen.dart';
import '../../../helpers/ui_helpers.dart';

class AddNewAdressScreen extends StatefulWidget {
  const AddNewAdressScreen({super.key});

  @override
  State<AddNewAdressScreen> createState() => _AddNewAdressScreenState();
}

class _AddNewAdressScreenState extends State<AddNewAdressScreen> {
  bool _isSelected1 = false;
  bool _isSelected2 = false;
  bool _isSelected3 = false;

  void _handleSelection(int selectedIndex) {
    setState(() {
      if (selectedIndex == 1) {
        _isSelected1 = true;
        _isSelected2 = false;
        _isSelected3 = false;
      } else if (selectedIndex == 2) {
        _isSelected1 = false;
        _isSelected2 = true;
        _isSelected3 = false;
      } else if (selectedIndex == 3) {
        _isSelected1 = false;
        _isSelected2 = false;
        _isSelected3 = true;
      }
    });
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Stack(
            children: [
              Container(padding: EdgeInsets.symmetric(vertical: 100.h),
                decoration: BoxDecoration(
                  borderRadius: BorderRadius.circular(8.r),
                  image: DecorationImage(
                    image: AssetImage(Assets.images.dog.path), // Correct image
                    fit: BoxFit.cover,
                  ),
                ),
              ),
              Positioned(
                left: 20,
                top: 22,
                child: Row(
                  children: [
                    CircleAvatar(
                      radius: 22.r,
                      backgroundColor: AppColors.cECF0F4,
                      child: Image.asset(
                        Assets.images.back.path, // Correct image
                        height: 16.h,
                      ),
                    ),
                  ],
                ),
              ),
            ],
          ),
          UIHelper.verticalSpace(15.h),
          Padding(
            padding:  EdgeInsets.symmetric(vertical: 20.h,horizontal: 17.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  'Address',
                  style: TextFontStyle.headline32343Ew400text13.copyWith(fontSize: 14.sp),
                ),
                UIHelper.verticalSpace(15.h),
                CustomContainerWidget(
                    name: '3235 Royal Ln. mesa, new jersy 34567',
                    imagePath: Assets.icons.love2
                ),
                UIHelper.verticalSpace(15.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text('street',style: TextFontStyle.headline32343Ew400text13,),
                    Text('Post code',style: TextFontStyle.headline32343Ew400text13,)
                  ],
                ),
                UIHelper.verticalSpace(10.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Container(padding: EdgeInsets.symmetric(vertical: 15.h,horizontal: 25.w),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.transparent),
                        color: AppColors.cF0F5FA,
                        borderRadius: BorderRadius.circular(11.r),
                      ),
                      child: Text('hason nagar',style:TextFontStyle.headline646982w400text16.copyWith(fontSize: 14.sp)),
                    ),
                    Container(
                      padding: EdgeInsets.symmetric(vertical: 15.h,horizontal: 25.w),
                      decoration: BoxDecoration(
                        border: Border.all(color: Colors.transparent),
                        color: AppColors.cF0F5FA,
                        borderRadius: BorderRadius.circular(11.r),
                      ),
                      child: Text('34567          ',style:TextFontStyle.headline646982w400text16.copyWith(fontSize: 14.sp)),
                    )
                  ],
                ),
                UIHelper.verticalSpace(15.h),
                Text(
                  'Appartment',
                  style: TextFontStyle.headline32343Ew400text13.copyWith(fontSize: 14.sp),
                ),
                UIHelper.verticalSpace(15.h),
                Container(
                  padding: EdgeInsets.symmetric(vertical: 19.h,horizontal: 155.w),
                  decoration: BoxDecoration(
                       color: AppColors.cF0F5FA,
                    borderRadius: BorderRadius.circular(11.r)
                  ),
                  child: Text('345',style:TextFontStyle.headline646982w400text16.copyWith(fontSize: 14.sp)),
                ),
                UIHelper.verticalSpace(15.h),
                Text(
                  'Label as',
                  style: TextFontStyle.headline32343Ew400text13.copyWith(fontSize: 14.sp),
                ),
                UIHelper.verticalSpace(20.h),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    SelectableButton(
                      label: "Home",
                      isSelected: _isSelected1,
                      onTap: () => _handleSelection(1),
                    ),
                    UIHelper.horizontalSpace(7.w),
                    SelectableButton(
                      label: "Work",
                      isSelected: _isSelected2,
                      onTap: () => _handleSelection(2),
                    ),
                    UIHelper.horizontalSpace(7.w),
                    SelectableButton(
                      label: "Other",
                      isSelected: _isSelected3,
                      onTap: () => _handleSelection(3),
                    ),
                  ],
                ),
                UIHelper.verticalSpace(90.h),
                CustomFoodButtonWidget(
                  titleStyle: TextFontStyle.headlineFFFFFFw700text14,
                  onTap: () {
                    NavigationService.navigateTo(Routes.editCardScreen);
                  }, name: 'Save location',)

              ],
            ),
          )
        ],
      ),
    );
  }
}
