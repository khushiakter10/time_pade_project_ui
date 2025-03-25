import 'package:anytimetp_app/constants/text_font_style.dart';
import 'package:anytimetp_app/gen/colors.gen.dart';
import 'package:anytimetp_app/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../gen/assets.gen.dart';
import 'widget/custom_previouseorder_widget.dart';

class PreviouseOrderScreen extends StatefulWidget {
  const PreviouseOrderScreen({super.key});

  @override
  State<PreviouseOrderScreen> createState() => _PreviouseOrderScreenState();
}

class _PreviouseOrderScreenState extends State<PreviouseOrderScreen> {
  final List<String> image = [
    'assets/images/cips.png',
    'assets/images/strabery.jpg',
    'assets/images/strabery.jpg',
    'assets/images/soundbox.png',
    'assets/images/soundbox.png',
    'assets/images/pija.png',
  ];
  final List<String> text = [
    'Strawberries',
    'Fried Chips',
    'Bengaluru',
    'Delivered',
    'Groceries',
    'Fashion'
  ];
  final List<String> data = [
    '₹ 10',
    '₹ 20',
    '₹ 30',
    '₹ 40',
    '₹ 50',
    '₹ 60'
  ];
  final List<bool> _isFavorite = List.generate(6, (index) => false);
  final List<bool> _isStarSelected = List.generate(6, (index) => false);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cF9F9F9,
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 18.h, horizontal: 10.w),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            UIHelper.verticalSpace(30.h),
            Text('Previous Order',style: TextFontStyle.headline313834w70021),
            UIHelper.verticalSpace(20.h),
            CustomPreviouseOrderWidget(
              subtitle: 'On Wed, 27 Jul 2022',
              subtitleTextStyle: TextFontStyle.headline303733w400text20.copyWith(fontSize: 13.sp),
              title: 'Delivered',
              titleTextStyle: TextFontStyle.headline14AB87w700text12,
              papayaIcon: Image.asset(Assets.images.pape.path, height: 41.h),
              vagitbleIcon: Image.asset(Assets.images.pija.path, height: 41.h),
              companIcon:  Image.asset(Assets.images.compan.path, height: 41.h),
              numbertitle: '+5',
              numbertitleTextStyle:  TextFontStyle.headline303733w500text18,
              moreText: 'More',
              moreTextSytle: TextFontStyle.headline303733w500text18,
              idText: 'Order ID : #28292999',
              idTextStyle: TextFontStyle.headline303733w700text21.copyWith(fontSize: 12.sp),
              totaltext: ' Final Total : ₹ 123',
              totaltextStyle: TextFontStyle.headlineNumber000000w700,
              color: AppColors.mart,
              orderText: 'Order Again',
              orderTextStyle: TextFontStyle.arabic26cFFFFFFFFStyleNotoNaskh.copyWith(fontSize: 13.sp),
            ),
            UIHelper.verticalSpace(10.h),
            SizedBox(
              height: 500.h,
              child: GridView.builder(
                physics: const NeverScrollableScrollPhysics(),
                shrinkWrap: true,
                padding: EdgeInsets.zero,
                itemCount: 6,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 1.w,
                  mainAxisSpacing: 6.h,
                  childAspectRatio: 0.67,
                ),
                itemBuilder: ( context,  index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                    child: Container(
                      decoration: BoxDecoration(
                        color: AppColors.cFFFFFF,
                        borderRadius: BorderRadius.circular(20.r),
                        border: Border.all(color: AppColors.cE8EFF3, width: 2.w),
                      ),
                      child: Padding(
                        padding: EdgeInsets.symmetric(vertical: 18.h, horizontal: 15.w),
                        child: Column(
                          crossAxisAlignment: CrossAxisAlignment.start,
                          children: [
                            Stack(
                              clipBehavior: Clip.none,
                              children: [
                                Container(
                                  padding: EdgeInsets.symmetric(vertical: 55.h,),
                                  // height: 140.h,
                                  decoration: BoxDecoration(
                                    borderRadius: BorderRadius.circular(20.r),
                                    image: DecorationImage(
                                      image: AssetImage(image[index]),
                                      fit: BoxFit.cover,
                                    ),
                                  ),
                                ),
                                Positioned(
                                  left: 1,
                                  top: -5.h,
                                  child: GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        // Toggle the favorite state
                                        _isFavorite[index] = !_isFavorite[index];
                                      });
                                    },
                                    child: Icon(
                                      Icons.favorite,
                                      color: _isFavorite[index] ? AppColors.cEA7173 : AppColors.mart,
                                      size: 24.sp,
                                    ),
                                  ),
                                ),
                              ],
                            ),
                            UIHelper.verticalSpace(20.h),
                            Center(
                              child: Text(
                                text[index],
                                style: TextFontStyle.headline303733w400text20.copyWith(fontSize: 13.sp),
                              ),
                            ),
                            Row(
                              children: [
                                Text(data[index], style: TextFontStyle.headlineNumber000000.copyWith(fontSize: 14.sp)),
                                UIHelper.horizontalSpace(20.w),
                                Text('4.8', style: TextFontStyle.headlineEA7173w600text12),
                                UIHelper.horizontalSpace(20.w),
                                GestureDetector(
                                  onTap: () {
                                    setState(() {
                                      _isStarSelected[index] = !_isStarSelected[index];
                                    });
                                  },
                                  child: Icon(
                                    Icons.star,
                                    color: _isStarSelected[index] ? AppColors.cFFA902 : AppColors.mart,
                                    size: 24.sp,
                                  ),
                                ),
                              ],
                            ),
                            UIHelper.verticalSpace(7.h),
                            Row(
                              children: [
                                Container(
                                    padding: EdgeInsets.symmetric(vertical: 15.h,horizontal: 15.w),
                                    decoration: BoxDecoration(
                                      color: AppColors.cEA7173,
                                      borderRadius: BorderRadius.circular(11.r),
                                    ),
                                    child: Image.asset(Assets.icons.mines.path,height: 3.h,)
                                ),
                                UIHelper.horizontalSpace(20.w),
                                const Text('2'),
                                UIHelper.horizontalSpace(13.w),
                                Container(
                                    padding: EdgeInsets.symmetric(vertical: 13.h,horizontal: 15.w),
                                    decoration: BoxDecoration(
                                      color: AppColors.c4AB7B6,
                                      borderRadius: BorderRadius.circular(10.r),
                                    ),
                                    child: Image.asset(Assets.icons.pluse.path,height: 7.h,)
                                ),
                              ],
                            )
                          ],
                        ),
                      ),
                    ),
                  );
                },
              ),
            ),
          ],
        ),
      ),
    );
  }
}
