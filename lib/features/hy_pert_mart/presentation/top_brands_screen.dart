import 'package:anytimetp_app/gen/colors.gen.dart';
import 'package:anytimetp_app/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../constants/text_font_style.dart';
import '../../../gen/assets.gen.dart';

class TopBrandsScreen extends StatefulWidget {
  const TopBrandsScreen({super.key});

  @override
  State<TopBrandsScreen> createState() => _TopBrandsScreenState();
}

class _TopBrandsScreenState extends State<TopBrandsScreen> {
  final List<String> images = [
    'assets/images/holione.png',
    'assets/images/holitwo.png',
    'assets/images/holithree.png',
    'assets/images/holione.png',
    'assets/images/holitwo.png',
    'assets/images/holithree.png',
    'assets/images/holione.png',
    'assets/images/holitwo.png',
    'assets/images/holithree.png',
    'assets/images/holione.png',
    'assets/images/holitwo.png',
    'assets/images/holithree.png',
  ];
  final List<String> iconList = [
    'assets/icons/rivison.png',
    'assets/icons/clin.png',
    'assets/icons/lakme.png',
    'assets/icons/garin.png',
    'assets/icons/clin.png',
    'assets/icons/garin.png',
  ];
  final List<String> text = [
    '  Up to',
    '  Up to',
    '  Up to',
    '  Up to',
    '  Up to',
    '  Up to',
  ];
  final List<String> data = [
    '10% OFF',
    '20% OFF',
    '30% OFF',
    '40% OFF',
    '50% OFF',
    '60% OFF',
  ];
  final List<String> image = [
    'assets/images/cips.png',
    'assets/images/strabery.jpg',
  ];
  final List<String> title = [
    'Strawberries',
    'Fried Chips',

  ];
  final List<String>  number= [
    '₹ 10',
    '₹ 20',
  ];
  final List<bool> _isFavorite = List.generate(6, (index) => false);
  final List<bool> _isStarSelected = List.generate(6, (index) => false);


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 18.h, horizontal: 15.w),
        child: Column(
          children: [
            UIHelper.verticalSpace(30.h),
            SizedBox(
              height: 300.h,
              child: GridView.builder(
                padding: EdgeInsets.zero,
                itemCount: 2,
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  crossAxisSpacing: 10.w,
                  mainAxisSpacing: 10.h,
                  childAspectRatio: 0.6,
                ),
                itemBuilder: (BuildContext context, int index) {
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
                              child: Text(title[index],
                                style: TextFontStyle.headline303733w400text20.copyWith(fontSize: 13.sp),
                              ),
                            ),
                            Row(
                              children: [
                                Text(number[index], style: TextFontStyle.headlineNumber000000.copyWith(fontSize: 14.sp)),
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
                                UIHelper.horizontalSpace(15.w),
                                const Text('2'),
                                UIHelper.horizontalSpace(13.w),
                                Container(
                                    padding: EdgeInsets.symmetric(vertical: 13.h,horizontal: 15.w),
                                    decoration: BoxDecoration(
                                      color: AppColors.cEA7173,
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
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Popular Deals', style: TextFontStyle.headline313834w70021),
                SvgPicture.asset(Assets.icons.arrwbak, height: 24.h),
              ],
            ),
            SizedBox(
              height: 100.h,
              child: ListView.builder(
                padding: EdgeInsets.zero,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                itemCount: images.length,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(vertical: 8.h),
                    child: Row(
                      children: [
                        Image.asset(images[index], height: 47.h),
                        UIHelper.horizontalSpace(7.w),
                      ],
                    ),
                  );
                },
              ),
            ),
            UIHelper.verticalSpace(7.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Exclusive Beauty Deals', style: TextFontStyle.headline313834w70021),
                SvgPicture.asset(Assets.icons.arrwbak, height: 24.h),
              ],
            ),
            UIHelper.verticalSpace(20.h),
            SizedBox(
              height: 120.h,
              child: ListView.builder(
                itemCount: iconList.length,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                    child: Stack(
                      clipBehavior: Clip.none,
                      alignment: Alignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 60.w),
                          // width: 120.w,
                          // height: 100.h,
                          decoration: BoxDecoration(
                            color: AppColors.cF6F6F6,
                            borderRadius: BorderRadius.circular(8.r),
                          ),
                        ),
                        Positioned(
                          top: 10.h,
                          child: Image.asset(
                            iconList[index],
                            height: 40.h,
                          ),
                        ),

                        Positioned(
                          top: 50.h,
                          left: 0.w,
                          right: 0.w,
                          child: CircleAvatar(
                            backgroundColor: AppColors.mart,
                            radius: 33.r,
                            child: Center(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  UIHelper.verticalSpace(10),
                                  Text(
                                    text[index],
                                    style: TextFontStyle.arabic26cFFFFFFFFStyleNotoNaskh
                                        .copyWith(fontSize: 12.sp),
                                  ),
                                  Text(
                                    data[index],
                                    style: TextFontStyle.arabic26cFFFFFFFFStyleNotoNaskh
                                        .copyWith(fontSize: 12.sp),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            UIHelper.verticalSpace(20.h),
            SizedBox(
              height: 120.h,
              child: ListView.builder(
                itemCount: iconList.length,
                scrollDirection: Axis.horizontal,
                shrinkWrap: true,
                physics: const BouncingScrollPhysics(),
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.symmetric(horizontal: 10.w),
                    child: Stack(
                      clipBehavior: Clip.none,
                      alignment: Alignment.center,
                      children: [
                        Container(
                          padding: EdgeInsets.symmetric(horizontal: 60.w),
                          // width: 120.w,
                          // height: 100.h,
                          decoration: BoxDecoration(
                            color: AppColors.cF6F6F6,
                            borderRadius: BorderRadius.circular(8.r),
                          ),
                        ),
                        Positioned(
                          top: 10.h,
                          child: Image.asset(
                            iconList[index],
                            height: 40.h,
                          ),
                        ),
                        Positioned(
                          top: 50.h,
                          left: 0.w,
                          right: 0.w,
                          child: CircleAvatar(
                            backgroundColor: AppColors.mart,
                            radius: 33.r,
                            child: Center(
                              child: Column(
                                mainAxisSize: MainAxisSize.min,
                                children: [
                                  UIHelper.verticalSpace(10),
                                  Text(
                                    text[index],
                                    style: TextFontStyle.arabic26cFFFFFFFFStyleNotoNaskh
                                        .copyWith(fontSize: 12.sp),
                                  ),
                                  Text(
                                    data[index],
                                    style: TextFontStyle.arabic26cFFFFFFFFStyleNotoNaskh
                                        .copyWith(fontSize: 12.sp),
                                  ),
                                ],
                              ),
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                },
              ),
            ),
            UIHelper.verticalSpace(40.h),
          ],
        ),
      ),
    );
  }
}
