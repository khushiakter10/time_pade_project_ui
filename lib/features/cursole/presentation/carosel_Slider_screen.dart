
import 'package:anytimetp_app/constants/text_font_style.dart';
import 'package:carousel_slider_plus/carousel_slider_plus.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../gen/colors.gen.dart';
import '../../../helpers/ui_helpers.dart';
class CarouselSliderScreen extends StatefulWidget {
  const CarouselSliderScreen({super.key});

  @override
  State<CarouselSliderScreen> createState() => _CarouselSliderScreenState();
}
class _CarouselSliderScreenState extends State<CarouselSliderScreen> {
  final List<String> misti = List.generate(7, (index) => 'assets/images/chare.png');
  final List<String> data = List.generate(7, (index) => 'Bengaluru');
  final List<String> text = List.generate(7, (index) => 'Groceries');


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        padding: EdgeInsets.symmetric(vertical: 10.h, horizontal: 15.w),
        child: Column(
          children: [
            CarouselSlider(
              items: misti.map((imageUrl) {
                return Stack(
                  children: [
                    ClipRRect(
                      borderRadius: BorderRadius.circular(50.r),
                      child:  Image.asset(
                        imageUrl,
                        width: double.infinity,
                        height: 200.h,
                        fit: BoxFit.cover,
                      ),
                    ),
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
                );
              }).toList(),
              options: CarouselOptions(
                height: 200.h,
                aspectRatio: 16 / 9,
                enlargeCenterPage: true,
                viewportFraction: 1.0,
                autoPlay: true,
              ),
            ),
            UIHelper.verticalSpace(20.h),
            GridView.builder(
              controller: ScrollController(),
              shrinkWrap: true,
              physics: const NeverScrollableScrollPhysics(),
              itemCount: data.length,
              gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                crossAxisCount: 2,
                mainAxisSpacing: 10.h,
                crossAxisSpacing: 15.w,
                childAspectRatio: 0.8,
              ),
              itemBuilder: (context, index) {
                return Container(
                  decoration: BoxDecoration(
                    color:  Colors.transparent,
                    borderRadius: BorderRadius.circular(8.r),
                  ),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Container(
                        padding: EdgeInsets.symmetric(vertical: 74.h,),
                        decoration: BoxDecoration(
                          borderRadius: BorderRadius.circular(8.r),
                          image: DecorationImage(
                            image: AssetImage(misti[index]),
                            fit: BoxFit.cover,
                          ),
                        ),
                      ),
                      Expanded(
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 31.w,),
                          decoration: BoxDecoration(
                             color:  AppColors.c4AB7B6,
                            borderRadius: BorderRadius.circular(8.r),
                          ),
                          child: Padding(
                            padding: EdgeInsets.all(8.0.r),
                            child: Column(
                              mainAxisAlignment: MainAxisAlignment.center,
                              crossAxisAlignment: CrossAxisAlignment.start,
                              children: [
                                Text(
                                  data[index],
                                  style: TextFontStyle.headline303733w700text21.copyWith(fontSize: 16.sp)
                                ),
                                Text(
                                  text[index],
                                  style:  TextFontStyle.headline293041w400text13
                                ),
                              ],
                            ),
                          ),
                        ),
                      )
                    ],
                  ),
                );
              },
            ),

          ],
        ),
      ),
    );
  }
}
