import 'package:anytimetp_app/constants/text_font_style.dart';
import 'package:anytimetp_app/gen/colors.gen.dart';
import 'package:anytimetp_app/helpers/ui_helpers.dart';
import 'package:contained_tab_bar_view/contained_tab_bar_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import '../../../gen/assets.gen.dart';
import 'widget/custom_container_productivity_widget.dart';
import 'widget/customline_chart_widget.dart';

class ProductivityScreen extends StatefulWidget {
  const ProductivityScreen({super.key});

  @override
  State<ProductivityScreen> createState() => _ProductivityScreenState();
}

class _ProductivityScreenState extends State<ProductivityScreen> {
  bool checkbox1 = true;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: AppColors.cFAFAFF,
      appBar: AppBar(
        elevation: 0,
        backgroundColor: Colors.transparent,
        leading: Padding(
          padding: EdgeInsets.all(14.0.sp),
          child: Image.asset(Assets.icons.arrowBack.path, height: 24.h),
        ),
        title: Text('My Productivity', style: TextFontStyle.headline070417),
        centerTitle: true,
      ),
      body: Padding(
        padding: EdgeInsets.symmetric(horizontal: 10.w, vertical: 10.h),
        child: Column(
          children: [
            Row(
              mainAxisAlignment: MainAxisAlignment.start,
              children: [
                Expanded(
                  child: CustomFixedContainer(
                    showCheckbox: true,
                    checkboxValue: checkbox1,
                    onCheckboxChanged: (bool? newValue) {
                      if (newValue != null) {
                        setState(() {
                          checkbox1 = newValue;
                        });
                      }
                    },
                    title: 'Task 1',
                    titleTextStyle: TextFontStyle.headline070417w40015.copyWith(fontSize: 20.sp),
                    subtitle: 'Completed',
                    subtitleTextStyle: TextFontStyle.headline070417w40015,
                    number1: '12',
                    number1TextStyle: TextFontStyle.headlineTasKc070417.copyWith(fontSize: 25.sp),
                  ),
                ),
                UIHelper.horizontalSpace(8.w),
                Expanded(
                  child: CustomFixedContainer(
                    showIcon: true,
                    iconWidget: Image.asset(Assets.icons.time.path, height: 30.h),
                    title: 'Time',
                    titleTextStyle: TextFontStyle.headline070417w40015.copyWith(fontSize: 20.sp),
                    subtitle: 'Duration',
                    subtitleTextStyle: TextFontStyle.headline070417w40015,
                    number1: '1',
                    number1TextStyle: TextFontStyle.headline070417.copyWith(fontSize: 25.sp),
                    task: 'h',
                    taskTextStyle: TextFontStyle.headline9C9BA215,
                    number2: '46',
                    number2TextStyle: TextFontStyle.headline070417.copyWith(fontSize: 25.sp),
                    task2: 'm',
                    task2TextStyle: TextFontStyle.headline9C9BA215,
                  ),
                ),
              ],
            ),
            UIHelper.verticalSpace(33.h),
            Expanded(
              child: ContainedTabBarView(
                tabs: const [
                  Tab(text: 'Tab 1'),
                  Tab(text: 'Tab 2'),
                ],
                views: const [
                  CustomLineChartWidget(),
                  CustomLineChartWidget(),
                ],
                onChange: (index) {
                  // Handle tab change
                },
                initialIndex: 0,
                tabBarProperties: TabBarProperties(
                  indicator: Decoration.lerp(
                    BoxDecoration(
                      color: Colors.blue.withOpacity(0.3),
                      borderRadius: BorderRadius.circular(8.0.r),
                    ),
                    BoxDecoration(   color: Colors.blue,
                      borderRadius: BorderRadius.circular(8.0.r),
                    ),
                    0.5,
                  ),
                  margin:  EdgeInsets.symmetric(vertical: 5.h, horizontal: 20.w),
                  background: Container(
                    decoration: BoxDecoration(
                      color:AppColors.cE9E9FF,
                      borderRadius: BorderRadius.circular(8.0.r),
                    ),
                  ),
                  height: 50.0.h,
                  indicatorWeight: 4.0.w,
                  labelColor: Colors.white,
                  labelStyle:  TextStyle(
                    fontSize: 16.sp,
                    fontWeight: FontWeight.bold,
                  ),
                  unselectedLabelColor: Colors.black,
                  unselectedLabelStyle:  TextStyle(
                    fontSize: 14.sp,
                    fontWeight: FontWeight.normal,
                  ),
                ),
              ),
            ),
          ],
        ),
      ),
    );

  }



}


