import 'package:anytimetp_app/features/homedelivery/presentation/widget/custom_burger_widget.dart';
import 'package:anytimetp_app/gen/colors.gen.dart';
import 'package:anytimetp_app/helpers/ui_helpers.dart';
import 'package:flutter/material.dart';
import 'package:flutter_screenutil/flutter_screenutil.dart';
import 'package:flutter_svg/flutter_svg.dart';
import '../../../constants/text_font_style.dart';
import '../../../gen/assets.gen.dart';
class BurgerScreen extends StatefulWidget {
  const BurgerScreen({super.key});
  @override
  State<BurgerScreen> createState() => _BurgerScreenState();
}
class _BurgerScreenState extends State<BurgerScreen> {
  List<String> items = ['Burger', 'Food', 'Lifestyle', 'Sports', 'Nature'];
  int? selectedChipIndex;
  String? selectedValue;

  final List<String> image = [
    'assets/images/happywek.png',
    'assets/images/burger.png',
    'assets/images/dog.png',
    'assets/images/cips.png',
    'assets/images/happywek.png',
    'assets/images/dog.png',
  ];
  final List<String> text = [
    'Burger Bistro',
    'Happyweek',
    'Dog',
    'Cips',
    'Pizza',
    'Pija',
  ];
  final List<String> title = [
    'Rose Garden',
    'Kabab Restaurant',
    'Buffalo Burgers',
    'Cafenio Restaurant',
    'Spicy Restaurant',
    'Cafecafachino'
  ];
  final List<String> data = [
    '\$40',
    '\$50',
    '\$60',
    '\$70',
    '\$80',
    '\$90',
  ];
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(padding: EdgeInsets.symmetric(vertical: 40.h, horizontal: 20.w),
        child: SingleChildScrollView(
          child: Column(crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Row(
                children: [
                  CircleAvatar(
                    radius: 22.r,
                    backgroundColor: AppColors.cECF0F4,
                    child: SvgPicture.asset(Assets.icons.back, height: 45.h),
                  ),
                  UIHelper.horizontalSpace(22.w),
                  Container(padding: EdgeInsets.symmetric(horizontal: 10.w),
                    decoration: BoxDecoration(
                      color: Colors.white,
                      borderRadius: BorderRadius.circular(20.r),
                      border: Border.all(color: AppColors.cECF0F4),
                    ),
                    child: DropdownButton<String>(
                      value: selectedValue,
                      underline: const SizedBox(),
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
                  ),
                  UIHelper.horizontalSpace(59.w),
                  SvgPicture.asset(Assets.icons.containesearch, height: 40.h),
                  UIHelper.horizontalSpace(22.w),
                  SvgPicture.asset(Assets.icons.filter, height: 40.h),
                ],
              ),
              UIHelper.verticalSpace(20.h),
              Text(
                  'Popular Burgers',style: TextFontStyle.headline32343Ew400text13.copyWith(fontSize: 20.sp)),
              UIHelper.verticalSpace(10.h),
              CustomBurgerWidget(
                image: image,
                text: text,
                title: title,
                data: data,
              ),
              UIHelper.verticalSpace(10.h),
              Text(
                  'Popular Burgers',style: TextFontStyle.headline32343Ew400text13.copyWith(fontSize: 20.sp)),
          Container( padding: EdgeInsets.symmetric(vertical: 90.h),
            decoration: BoxDecoration(
                image: DecorationImage(image: AssetImage(Assets.images.happywek.path))
            ),
          ),
              UIHelper.verticalSpace(10.h),
              Text('Tasty treat Gallery',style: TextFontStyle.headline32343Ew400text13.copyWith(fontSize: 20.sp)
              ),
              UIHelper.verticalSpace(10.h),
            ],
          ),
        ),
      ),
    );
  }
}
