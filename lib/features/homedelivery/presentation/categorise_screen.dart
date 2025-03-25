import 'package:anytimetp_app/constants/text_font_style.dart';
import 'package:anytimetp_app/gen/colors.gen.dart';
import 'package:anytimetp_app/helpers/all_routes.dart';
import 'package:anytimetp_app/helpers/navigation_service.dart';
import 'package:anytimetp_app/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/svg.dart';
import '../../../common_widget/custom_textormfield_widget.dart';
import '../../../gen/assets.gen.dart';
import 'widget/custom_all_categoris.dart';
class CategoriseScreen extends StatefulWidget {
  const CategoriseScreen({super.key});

  @override
  State<CategoriseScreen> createState() => _CategoriseScreenState();
}
class _CategoriseScreenState extends State<CategoriseScreen> {
  int? selectedChipIndex;
  String? selectedValue;
  List<String> items = ['Health', 'Food', 'Lifestyle', 'Sports', 'Nature'];
  final List<Map<String, dynamic>> foodItems = const [
    {
      "name": "Pizza",
      "price": "70",
      "image": "assets/images/pizza.jpg",
    },
    {
      "name": "Burger",
      "price": "50",
      "image": "assets/images/happywek.png",
    },
    {
      "name": "Pasta",
      "price": "40",
      "image": "assets/images/pizza.jpg",
    },
    {
      "name": "Sandwich",
      "price": "30",
      "image": "assets/images/pizza.jpg",
    },
    {
      "name": "Noodles",
      "price": "45",
      "image": "assets/images/happywek.png",
    },
    {
      "name": "Ice Cream",
      "price": "25",
      "image": "assets/images/pizza.jpg",
    },
  ];

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
        body: SingleChildScrollView(
            padding: EdgeInsets.symmetric(vertical: 50.h,horizontal: 15.w),
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Row(
                  children: [
                    SvgPicture.asset(Assets.icons.menu,height: 45.h),
                    const Column(crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text('Deliver to'),
                          Text('Halal Lab office'),
                        ]),
                    DropdownButton<String>(
                      value: selectedValue,
                      items: items.map((String item) {
                        return DropdownMenuItem<String>(
                          value: item,
                          child: Text(item),
                        );
                      }).toList(),
                      onChanged: (String? newValue) {
                        setState(() {
                          selectedValue = newValue;
                        });
                      },
                    ),
                    UIHelper.horizontalSpace(50.w),
                    CircleAvatar( radius: 25, backgroundColor: AppColors.c000000,
                        child: SvgPicture.asset(Assets.icons.drwer)
                    )

                  ],
                ),
                UIHelper.verticalSpace(15.h),
                Row(
                  children: [
                    Text('Hey Halal',style: TextFontStyle.headline1E1D1Dw700text16.copyWith(fontSize: 10.sp)),
                    UIHelper.horizontalSpace(10.w),
                    Text('Good Afternoon!',style: TextFontStyle.headline1E1D1Dw700text16),
                  ],
                ),
                UIHelper.verticalSpace(20.h),
                CustomTextFormWiget(
                  prefixIcon: Padding(
                    padding:  EdgeInsets.all(17.0.sp),
                    child: SvgPicture.asset(Assets.icons.search,height: 24.h,),
                  ),
                  hintTxt: 'Search dishes, restaurants',
                  hinStyleColor: TextFontStyle.headline676767w400text14,
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
                Row(
                  children: [
                    Text('All Categories',style: TextFontStyle.headline32343Ew400text13.copyWith(fontSize: 20.sp)),
                    UIHelper.horizontalSpace(130.w),
                    Text('See All',style: TextFontStyle.headline32343Ew400text13.copyWith(fontSize: 16.sp)),
                    UIHelper.horizontalSpace(10.w),
                    SvgPicture.asset(Assets.icons.lefticon,height: 11.h,)
                  ],
                ),
                UIHelper.verticalSpace(20.h),
                GestureDetector(
                  onTap: (){
                    NavigationService.navigateTo(Routes.burgerScreen);
                  },
                  child: SizedBox(
                    height: 150.h,
                    child: ListView.builder(
                      scrollDirection: Axis.horizontal,
                      itemCount: foodItems.length,
                      itemBuilder: (context, index) {
                        final item = foodItems[index];
                        return CustomAllCategorisewidget(
                          name: item["name"],
                          price: item["price"],
                          image: Image.asset(
                            item["image"],
                            fit: BoxFit.cover,
                          ),
                          titleTextStyle: TextFontStyle.headline32343Ew700text14,
                          starttextStyle: TextFontStyle.headline646982w400text16
                              .copyWith(fontSize: 14.sp),
                          dataStyle: TextFontStyle.headline32343Ew400text13
                              .copyWith(fontSize: 16.sp),
                        );
                      },
                    ),
                  ),
                ),
                UIHelper.verticalSpace(20.h),
                Row(
                  children: [
                    Text('Open Restaurants',style: TextFontStyle.headline32343Ew400text13.copyWith(fontSize: 20.sp)),
                    UIHelper.horizontalSpace(100.w),
                    Text('See All',style: TextFontStyle.headline32343Ew400text13.copyWith(fontSize: 16.sp)),
                    UIHelper.horizontalSpace(10.w),
                    SvgPicture.asset(Assets.icons.lefticon,height: 11.h,)
                  ],
                ),
                UIHelper.verticalSpace(20.h),
                GestureDetector(
                  onTap: (){
                    NavigationService.navigateTo(Routes.homeDeliveryScreen);
                  },
                  child: Container( padding: EdgeInsets.symmetric(vertical: 90.h),
                    decoration: BoxDecoration(image: DecorationImage(image: AssetImage(Assets.images.happywek.path))),),
                ),
                UIHelper.verticalSpace(20.h),
                Text('rose garden restaurant',style: TextFontStyle.headline32343Ew400text13.copyWith(fontSize: 20.sp)),
                UIHelper.verticalSpace(20.h),
                GestureDetector(
                  onTap: (){
                    NavigationService.navigateTo(Routes.burgerScreen);
                  },
                    child: Text('Burger - Chiken - Riche - Wings',style: TextFontStyle.headlineA0A5BAw400text14,)),
                UIHelper.verticalSpace(20.h),
                Row(
                  children: [
                    SvgPicture.asset(Assets.icons.star1),
                    UIHelper.horizontalSpace(7.w),
                    Text('4.7',style: TextFontStyle.headline181C2Ew700text16,),
                    UIHelper.horizontalSpace(25.w),
                    SvgPicture.asset(Assets.icons.delivery),
                    UIHelper.horizontalSpace(7.w),
                    Text('Free',style: TextFontStyle.headline181C2Ew400text14),
                    UIHelper.horizontalSpace(25.w),
                    SvgPicture.asset(Assets.icons.clock),
                    UIHelper.horizontalSpace(7.w),
                    const Text('20 min')

                  ],
                ),
                UIHelper.verticalSpace(20.h),
                GestureDetector(
                  onTap: (){
                    NavigationService.navigateTo(Routes.homeDeliveryScreen);
                  },
                  child: Container( padding: EdgeInsets.symmetric(vertical: 90.h),
                    decoration: BoxDecoration(
                        image: DecorationImage(image: AssetImage(Assets.images.happywek.path))
                    ),
                  ),
                ),
              ],
            )));

  }
}
