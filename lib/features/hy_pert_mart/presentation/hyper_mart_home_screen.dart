
import 'package:anytimetp_app/gen/colors.gen.dart';
import 'package:anytimetp_app/helpers/ui_helpers.dart';
import 'package:carousel_slider_plus/carousel_slider_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../common_widget/custom_textormfield_widget.dart';
import '../../../constants/text_font_style.dart';
import '../../../gen/assets.gen.dart';
import 'widget/custom_categorise_widget.dart';
class HyperMartHomeScreen extends StatefulWidget {
  const HyperMartHomeScreen({super.key});

  @override
  State<HyperMartHomeScreen> createState() => _HyperMartHomeScreenState();
}

class _HyperMartHomeScreenState extends State<HyperMartHomeScreen> {
  final List<String> image = [
    'assets/images/happywek.png',
  ];
  final List<String> icon = [
    'assets/icons/categorise.svg',
    'assets/icons/categorise2.svg',
    'assets/icons/categorise2.svg',
    'assets/icons/categorise3.svg',
    'assets/icons/categorise3.svg',
  ];
  final List<String> text = [
    'Appliances',
    'Appliances',
    'Fashion',
    'Groceries',
    'Groceries',
  ];

  final List<Color> decorationColors = [
    AppColors.mart,
    AppColors.c4B9DCB,
   AppColors.cBB6E9C,
   AppColors.cA187D9,
    AppColors.c4B9DCB,
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cFFFFFF,
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 18.h, horizontal: 15.w),
        child: Column(
          children: [
            UIHelper.verticalSpace(50.h),
            Row(
              children: [
                Text('Hyper', style: TextFontStyle.headlineFDAA5Dw700text20),
                Text('Mart', style: TextFontStyle.headline4AB7B6w700text20),
                UIHelper.horizontalSpace(100.w),
                Text('Eng', style: TextFontStyle.headline303733w400text20),
                UIHelper.horizontalSpace(5.w),
                SvgPicture.asset(Assets.icons.uparrw, height: 15.h),
                UIHelper.horizontalSpace(30.w),
                SvgPicture.asset(Assets.icons.notification, height: 35.h),
              ],
            ),
            UIHelper.verticalSpace(20.h),
            Row(
              children: [
                SvgPicture.asset(Assets.icons.location),
                UIHelper.horizontalSpace(10.w),
                Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      'Bengaluru',
                      style: TextFontStyle.headline293041w400text13,
                    ),
                    Text(
                      'BTM Layout, 500628',
                      style: TextFontStyle.headline293041w400text13.copyWith(fontSize: 16.sp),
                    ),
                  ],
                ),
                UIHelper.horizontalSpace(105.w),
                SvgPicture.asset(Assets.icons.givearrw, height: 16.h),
              ],
            ),
            UIHelper.verticalSpace(20.h),
            CustomTextFormWiget(
              suffixIcon: Padding(
                padding:  EdgeInsets.all(8.0.sp),
                child: SvgPicture.asset(Assets.icons.mikeicon,height: 24.h,),
              ),
              prefixIcon: Padding(
                padding: EdgeInsets.all(13.0.sp),
                child: SvgPicture.asset(Assets.icons.search, height: 24.h),
              ),
              hintTxt: 'Search Anything...',
              hinStyleColor: TextFontStyle.headline7D8FABw400text13,
              fillColor: AppColors.cEFF1F3,
              filled: true,
              border: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.r),
                borderSide: const BorderSide(color: Colors.transparent),
              ),
              focusedBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.r),
                borderSide: const BorderSide(color: Colors.transparent),
              ),
              enabledBorder: OutlineInputBorder(
                borderRadius: BorderRadius.circular(8.r),
                borderSide: const BorderSide(color: Colors.transparent),
              ),
            ),
            UIHelper.verticalSpace(10.h),
            ClipRRect(
              borderRadius: BorderRadius.circular(30.r),
              child: CarouselSlider(
                items: image.map((imageUrl) {
                  return SizedBox(
                    width: double.infinity,
                    child: Stack(
                      children: [
                        Image.asset(Assets.images.happywek.path),
                        Positioned(
                          bottom: 20.h,
                          left: 20.w,
                          child: Text(
                            'Sample Text',
                            style: TextStyle(
                              fontSize: 18.sp,
                              fontWeight: FontWeight.bold,
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ],
                    ),
                  );
                }).toList(),
                options: CarouselOptions(
                  height: 200.h,
                  aspectRatio: 16 / 9,
                  enlargeCenterPage: true,
                  viewportFraction: 1.0,
                  autoPlay: true,
                  enableInfiniteScroll: true,
                  pageSnapping: true,
                  autoPlayInterval: const Duration(seconds: 3),
                  autoPlayAnimationDuration: const Duration(milliseconds: 800),
                ),
              ),
            ),
            UIHelper.verticalSpace(10.h),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text('Categories', style: TextFontStyle.headline303733w700text21),
                SvgPicture.asset(Assets.icons.givearrw, height: 16.h),
              ],
            ),
            UIHelper.verticalSpace(16.h),
            SizedBox(
              height: 100.h,
              child: ListView.builder(
                padding: EdgeInsets.only(right: 10.r),
                shrinkWrap: true,
                itemCount: text.length,
                scrollDirection: Axis.horizontal,
                itemBuilder: (context, index) {
                  return Padding(
                    padding: EdgeInsets.only(right: 10.w), // Add horizontal space between items
                    child: CustomCategoriseWidget(
                      decorationColor: decorationColors[index % decorationColors.length], // Assign color based on index
                      categoriseIcon: SvgPicture.asset(icon[index]),
                      title: text[index],
                      titleTextStyle: TextFontStyle.headlineFFFFFF.copyWith(fontSize: 13.sp),
                    ),
                  );
                },
              ),
            ),
            UIHelper.verticalSpace(6.h),
            Row(
              children: [
                Text('Previous Order',style: TextFontStyle.headline313834w70021)
              ],
            )

          ],
        ),
      ),
    );
  }
}
